import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: ".env")
abstract class Env {
  @EnviedField(varName: 'SUPABASE_PROJECT_URL')
  static const String supabaseProjectUrl = _Env.supabaseProjectUrl;

  @EnviedField(varName: 'SUPABASE_STORAGE_URL')
  static const String supabaseStorageUrl = _Env.supabaseStorageUrl;

  @EnviedField(varName: 'SUPABASE_ANON_KEY')
  static const String supabaseAnonKey = _Env.supabaseAnonKey;

  @EnviedField(varName: 'POWERSYNC_ENDPOINT')
  static const String powersyncEndpoint = _Env.powersyncEndpoint;
}
