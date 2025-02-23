part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthCheck extends AuthEvent {}

final class AuthLogin extends AuthEvent {
  final String? email;
  final String? password;

  AuthLogin({this.email, this.password});
}

final class AuthRegister extends AuthEvent {
  final String? email;
  final String? password;

  AuthRegister({this.email, this.password});
}

final class AuthLogout extends AuthEvent {}
