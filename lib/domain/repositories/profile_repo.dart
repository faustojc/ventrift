import 'package:ventrift/data/sources/connector_backend.dart' show appDatabase;
import 'package:ventrift/data/sources/database.dart';

class ProfileRepo {
  late Profile? profile;

  Future<void> getProfile(String userId) async {
    try {
      profile = await appDatabase.managers.profiles.filter((p) => p.id.equals(userId)).getSingleOrNull();
    } catch (e) {
      rethrow;
    }
  }
}
