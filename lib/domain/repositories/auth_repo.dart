import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepo {
  late GoTrueClient auth;

  AuthRepo() : auth = Supabase.instance.client.auth;

  bool get isLoggedIn => auth.currentUser != null || auth.currentSession != null;

  Future<AuthResponse> login({required String email, required String password}) async {
    try {
      final response = await auth.signInWithPassword(password: password.trim(), email: email.trim());

      if (response.user == null) {
        throw const AuthException('That user does not exist', statusCode: '404');
      } else if (response.user!.emailConfirmedAt == null || response.user!.emailConfirmedAt!.isEmpty) {
        throw const AuthException('Email not verified', statusCode: '401');
      }

      return response;
    } on AuthException catch (_) {
      rethrow;
    } catch (err) {
      throw const AuthException('Something went wrong, please try again later', statusCode: '400');
    }
  }

  Future<AuthResponse> register({required String email, required String password}) async {
    try {
      final response = await auth.signUp(email: email, password: password, emailRedirectTo: 'io.supabase.strength-conditioning://verification/confirm');

      if (response.user != null && response.user?.identities != null && response.user!.identities!.isEmpty) {
        throw const AuthException('Email already in use', statusCode: '409');
      }

      return response;
    } on AuthException catch (_) {
      rethrow;
    } catch (err) {
      throw const AuthException('Something went wrong, please try again later', statusCode: '400');
    }
  }

  // TODO: add google OAuth login implementation

  Future<void> logout() async => await auth.signOut();
}
