import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ventrift/data/sources/connector_backend.dart';
import 'package:ventrift/domain/providers/image_path_provider.dart' show ImagePathProvider;
import 'package:ventrift/presentation/blocs/counter_cubit.dart';
import 'package:ventrift/presentation/pages/splash_screen_page.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  widgetsBinding.addPostFrameCallback((_) async {
    final context = widgetsBinding.rootElement;

    if (context != null) {
      await Future.wait(ImagePathProvider.imagePaths.map((image) => precacheImage(AssetImage(image), context)));
    }
  });

  await Future.wait([
    ConnectorBackend.instance.init(),
    FastCachedImageConfig.init(
      subDir: (await getApplicationDocumentsDirectory()).path,
      clearCacheAfter: const Duration(days: 7),
    ),
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreenPage(),
      ),
    );
  }
}
