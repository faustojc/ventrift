import 'package:drift/drift.dart';
import 'package:logger/logger.dart';
import 'package:ventrift/data/sources/database.dart';
import 'package:ventrift/data/sources/models.dart';
import 'package:ventrift/data/tables/comments.dart';
import 'package:ventrift/data/tables/medias.dart';
import 'package:ventrift/data/tables/places.dart';
import 'package:ventrift/data/tables/posts.dart';
import 'package:ventrift/data/tables/ratings.dart';

part 'posts_dao.g.dart';

@DriftAccessor(tables: [Posts, Places, Medias, Ratings, Comments])
class PostsDao extends DatabaseAccessor<AppDatabase> with _$PostsDaoMixin {
  final Logger _logger = Logger(
      printer: PrettyPrinter(
    methodCount: 4,
    errorMethodCount: 8,
    lineLength: 180,
    colors: true,
    printEmojis: false,
  ));

  PostsDao(super.db);

  /// Retrieves a list of Posts along with their related place, medias, rating, and comments.
  Future<List<PostWithRelations>> getPostsWithRelations({int limit = 15, int offset = 0}) async {
    try {
      final postList = await (select(posts)
            ..orderBy([(t) => OrderingTerm.desc(t.createdAt)])
            ..limit(limit, offset: offset))
          .get();

      final postWithRelations = postList.map((post) => getPostWithRelations(post)).toList();

      return Future.wait(postWithRelations);
    } on Exception catch (e) {
      _logger.e(e.toString(), error: e);
      rethrow;
    }
  }

  /// Retrieves a Post along with its related medias, rating, and comments.
  Future<PostWithRelations> getPostWithRelations(Post post) async {
    try {
      final results = await Future.wait([
        (select(places)..where((tbl) => tbl.id.equals(post.placeId))).getSingle(),
        (select(ratings)..where((tbl) => tbl.postId.equals(post.id))).getSingle(),
        (select(medias)..where((tbl) => tbl.postId.equals(post.id))).get(),
        (select(comments)..where((tbl) => tbl.postId.equals(post.id))).get(),
        (select(profiles)..where((p) => p.id.equals(post.profileId))).getSingle(),
      ]);

      return PostWithRelations(
        post: post,
        place: results[0] as Place,
        rating: results[1] as Rating,
        medias: results[2] as List<Media>,
        comments: results[3] as List<Comment>,
        profile: results[4] as Profile,
      );
    } on Exception catch (e) {
      _logger.e(e.toString(), error: e);
      rethrow;
    }
  }
}
