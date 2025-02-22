import 'package:drift/drift.dart';
import 'package:ventrift/data/sources/database.dart';
import 'package:ventrift/data/sources/models.dart';
import 'package:ventrift/data/tables/comments.dart';
import 'package:ventrift/data/tables/follows.dart';
import 'package:ventrift/data/tables/medias.dart';
import 'package:ventrift/data/tables/places.dart';
import 'package:ventrift/data/tables/posts.dart';
import 'package:ventrift/data/tables/profiles.dart';
import 'package:ventrift/data/tables/ratings.dart';

part 'profiles_dao.g.dart';

@DriftAccessor(tables: [Profiles, Follows, Posts, Places, Medias, Ratings, Comments])
class ProfilesDao extends DatabaseAccessor<AppDatabase> with _$ProfilesDaoMixin {
  ProfilesDao(super.db);

  Future<Profile> getProfile(String userId) async {
    try {
      final profile = await (select(profiles)..where((tbl) => tbl.id.equals(userId))).getSingle();

      return profile;
    } catch (e) {
      rethrow;
    }
  }

  /// Returns a [ProfileWithRelations] for the given [profile] containing:
  /// - The profile record.
  /// - All followers and followings of this profile.
  /// - The latest [N] posts authored by this profile (ordered by createdAt descending).
  /// - All medias, ratings, and comments associated with those posts.
  ///
  /// This is used to display the user's posts along with related data (e.g. place info,
  /// followers & followings, medias, ratings, and comments) on the profile screen.
  Future<ProfileWithRelations> getProfileWithRelations(Profile profile, int limit) async {
    final profileResult = await (select(profiles)..where((tbl) => tbl.id.equals(profile.id))).getSingle();

    final postList = await (select(posts)
          ..where((tbl) => tbl.profileId.equals(profile.id))
          ..orderBy([(t) => OrderingTerm.desc(t.createdAt)])
          ..limit(limit))
        .get();

    final postIds = postList.map((post) => post.id).toList();
    final postPlaceIds = postList.map((post) => post.placeId).toList();

    final followerProfiles = (select(follows).join([innerJoin(profiles, profiles.id.equalsExp(follows.followingId))]) //
          ..where(follows.followingId.equals(profile.id)))
        .map((follow) => follow.readTable(profiles))
        .get();

    final followingProfiles = (select(follows).join([innerJoin(profiles, profiles.id.equalsExp(follows.followerId))]) //
          ..where(follows.followerId.equals(profile.id)))
        .map((follow) => follow.readTable(profiles))
        .get();

    /// Index:
    /// 0. followers (as profile type)
    /// 1. followings (as profile type)
    /// 2. places
    /// 3. medias
    /// 4. ratings
    /// 5. comments
    final results = await Future.wait([
      followerProfiles,
      followingProfiles,
      (select(places)..where((tbl) => tbl.id.isIn(postPlaceIds))).get(),
      (select(medias)..where((tbl) => tbl.postId.isIn(postIds))).get(),
      (select(ratings)..where((tbl) => tbl.postId.isIn(postIds))).get(),
      (select(comments)
            ..where((tbl) => tbl.postId.isIn(postIds))
            ..limit(10))
          .get()
    ]);

    return ProfileWithRelations(
      profile: profileResult,
      followers: results[0] as List<Profile>,
      followings: results[1] as List<Profile>,
      places: results[2] as List<Place>,
      posts: postList,
      medias: results[3] as List<Media>,
      ratings: results[4] as List<Rating>,
      comments: results[5] as List<Comment>,
    );
  }
}
