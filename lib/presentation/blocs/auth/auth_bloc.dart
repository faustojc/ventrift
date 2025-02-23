import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:ventrift/data/sources/connector_backend.dart';
import 'package:ventrift/domain/repositories/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo _authRepo;

  AuthBloc({required AuthRepo authRepo})
      : _authRepo = authRepo,
        super(AuthInitial()) {
    on<AuthCheck>((event, emit) async {
      if (_authRepo.isLoggedIn) {
        emit(Authenticated(user: _authRepo.auth.currentUser!));
      } else {
        emit(Unauthenticated());
      }
    });

    on<AuthLogin>((event, emit) async {
      emit(AuthLoading());

      try {
        final response = await _authRepo.login(email: event.email!.trim(), password: event.password!.trim());

        emit(Authenticated(user: response.user!));
      } on AuthException catch (err) {
        emit(AuthFailed(message: err.message));
      }
    });

    on<AuthRegister>((event, emit) async {
      emit(AuthLoading());

      try {
        final response = await _authRepo.register(email: event.email!.trim(), password: event.password!.trim());

        emit(Authenticated(user: response.user!));
      } on AuthException catch (err) {
        emit(AuthFailed(message: err.message));
      }
    });

    on<AuthLogout>((event, emit) async {
      emit(AuthLoading());

      try {
        await _authRepo.logout();
        ConnectorBackend.instance.hasSynced = false;

        emit(Unauthenticated());
      } on AuthException catch (err) {
        emit(AuthFailed(message: err.message));
      }
    });
  }
}
