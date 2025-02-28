import 'package:flutter/material.dart';
import 'package:ventrift/presentation/pages/auth/login_page.dart';
import 'package:ventrift/presentation/pages/auth/register_page.dart';
import 'package:ventrift/presentation/pages/home_page.dart';

final class AppRoutes {
  // login/register route
  static MaterialPageRoute<LoginPage> get loginPage => MaterialPageRoute(builder: (context) => const LoginPage());

  // register route
  static MaterialPageRoute<RegisterPage> get registerPage => MaterialPageRoute(builder: (context) => const RegisterPage());

  // Home page route
  static MaterialPageRoute<HomePage> get homePage => MaterialPageRoute(builder: (context) => const HomePage());
}
