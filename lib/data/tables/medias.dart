import 'package:drift/drift.dart';
import 'package:ulid/ulid.dart';

import 'places.dart';
import 'posts.dart';
import 'profiles.dart';

class Medias extends Table {
  TextColumn get id => text() //
      .named('id')
      .clientDefault(() => Ulid().toString())
      .customConstraint('PRIMARY KEY NOT NULL')();

  TextColumn get profileId => text().named('profile_id').references(Profiles, #id)();
  TextColumn get placeId => text().named('place_id').references(Places, #id).nullable()();
  TextColumn get postId => text().named('post_id').references(Posts, #id).nullable()();

  TextColumn get mediaUrl => text().named('media_url')();
  TextColumn get mediaType => text().withLength(max: 100).named('media_type')();

  DateTimeColumn get createdAt => dateTime().named('created_at').clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt => dateTime().named('updated_at').clientDefault(() => DateTime.now())();
}
