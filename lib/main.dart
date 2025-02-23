import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ventrift/data/dao/posts_dao.dart';
import 'package:ventrift/data/dao/profiles_dao.dart';
import 'package:ventrift/data/sources/connector_backend.dart';
import 'package:ventrift/domain/providers/image_path_provider.dart' show ImagePathProvider;
import 'package:ventrift/domain/repositories/auth_repo.dart';
import 'package:ventrift/domain/repositories/post_repo.dart';
import 'package:ventrift/domain/repositories/profile_repo.dart';
import 'package:ventrift/presentation/blocs/auth/auth_bloc.dart';
import 'package:ventrift/presentation/blocs/counter_cubit.dart';
import 'package:ventrift/presentation/blocs/home_feed/home_feed_bloc.dart';
import 'package:ventrift/presentation/blocs/profile/profile_bloc.dart';
import 'package:ventrift/presentation/pages/splash_screen_page.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Precache all images before the app starts.
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
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => AuthRepo()),
        RepositoryProvider(create: (context) => ProfileRepo(ProfilesDao(appDatabase))),
        RepositoryProvider(create: (context) => PostRepo(PostsDao(appDatabase))),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<CounterCubit>(
            create: (context) => CounterCubit(),
          ),
          BlocProvider(
            create: (context) => AuthBloc(
              authRepo: RepositoryProvider.of<AuthRepo>(context),
            )..add(AuthCheck()),
          ),
          BlocProvider<ProfileBloc>(
            create: (context) => ProfileBloc(
              authRepo: RepositoryProvider.of<AuthRepo>(context),
              profileRepo: RepositoryProvider.of<ProfileRepo>(context),
            ),
          ),
          BlocProvider<HomeFeedBloc>(
            create: (context) => HomeFeedBloc(
              RepositoryProvider.of<PostRepo>(context),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: const ColorScheme(
              brightness: Brightness.dark,
              primary: Color(0xFF101010),
              onPrimary: Color(0xFFFFFFFF),
              secondary: Color(0xFF01C45B),
              onSecondary: Color(0xFFFFFFFF),
              error: Colors.red,
              onError: Colors.red,
              surface: Color(0xFF101010),
              onSurface: Color(0xFFFFFFFF),
            ),
            fontFamily: 'Lexend',
            useMaterial3: true,
          ),
          home: const SplashScreenPage(),
        ),
      ),
    );
  }
}
