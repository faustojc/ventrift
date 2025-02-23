import 'package:ventrift/data/dao/profiles_dao.dart';
import 'package:ventrift/data/sources/database.dart';
import 'package:ventrift/data/sources/models.dart';

class ProfileRepo {
  final ProfilesDao profilesDao;

  ProfileRepo(this.profilesDao);

  Future<Profile> getProfile(String userId) async {
    try {
      return await profilesDao.getProfile(userId);
    } catch (e) {
      rethrow;
    }
  }

  Future<ProfileWithRelations> getProfileWithRelations(Profile profile, {int limit = 10}) async {
    try {
      return await profilesDao.getProfileWithRelations(profile, limit);
    } catch (e) {
      rethrow;
    }
  }
}
