import 'package:drift/drift.dart';
import 'package:ulid/ulid.dart';

import 'places.dart';
import 'posts.dart';
import 'profiles.dart';

class Comments extends Table {
  TextColumn get id => text() //
      .named('id')
      .clientDefault(() => Ulid().toString())
      .customConstraint('PRIMARY KEY NOT NULL')();
  TextColumn get profileId => text().named('profile_id').references(Profiles, #id)();
  TextColumn get placeId => text().nullable().named('place_id').references(Places, #id)();
  TextColumn get postId => text().nullable().named('post_id').references(Posts, #id)();

  TextColumn get parentCommentId => text().nullable().named('parent_comment_id').references(Comments, #id)();

  TextColumn get commentText => text().named('comment_text')();

  IntColumn get likeCount => integer().named('like_count').withDefault(const Constant(0))();
  IntColumn get dislikeCount => integer().named('dislike_count').withDefault(const Constant(0))();
  BoolColumn get isEdited => boolean().named('is_edited').withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime().named('created_at').clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt => dateTime().named('updated_at').clientDefault(() => DateTime.now())();
}
