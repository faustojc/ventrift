import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart' show FlutterNativeSplash;
import 'package:ventrift/data/sources/connector_backend.dart';
import 'package:ventrift/domain/routes/app_routes.dart';
import 'package:ventrift/presentation/blocs/auth/auth_bloc.dart';
import 'package:ventrift/presentation/blocs/profile/profile_bloc.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) => BlocListener<AuthBloc, AuthState>(
        listener: (context, state) async {
          if (state is Authenticated) {
            // always check if the PowerSync is synced to prevent data loss
            await ConnectorBackend.instance.checkSync();

            // fetch all user's data only once (profiles, posts, etc.)
            // Navigate to home page
            if (context.mounted) {
              BlocProvider.of<ProfileBloc>(context).add(ProfileInitialize());

              Navigator.of(context).pushReplacement(AppRoutes.homePage);
              FlutterNativeSplash.remove();
            }
          } else if (state is Unauthenticated) {
            Navigator.of(context).pushReplacement(AppRoutes.loginPage);
            FlutterNativeSplash.remove();
          }
        },
        child: Container(),
      );
}
