part of 'auth_bloc.dart';

final class AuthState {
  String email = '';
  String password = '';
  String confirmPassword = '';

  AuthState({this.email = '', this.password = '', this.confirmPassword = ''});

  AuthState copyWith({
    String? email,
    String? password,
    String? confirmPassword,
  }) {
    return AuthState(
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }
}

final class AuthInitial extends AuthState {}

final class AuthInputChanged extends AuthState {}

final class AuthLoading extends AuthState {}

final class Authenticated extends AuthState {
  final User user;

  Authenticated({required this.user});
}

final class Unauthenticated extends AuthState {}

final class AuthNotValidated extends AuthState {}

final class AuthFailed extends AuthState {
  final String message;

  AuthFailed({required this.message});
}
