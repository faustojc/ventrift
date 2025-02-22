import 'package:ventrift/data/dao/posts_dao.dart';
import 'package:ventrift/data/sources/database.dart';
import 'package:ventrift/data/sources/models.dart';

class PostRepo {
  final PostsDao postsDao;

  PostRepo(this.postsDao);

  Future<List<PostWithRelations>> getPosts({int limit = 15, int offset = 0}) => postsDao.getPostsWithRelations(limit: limit, offset: offset);

  Future<PostWithRelations> getPostWithRelations(Post post) => postsDao.getPostWithRelations(post);
}
