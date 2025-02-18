import 'package:drift/drift.dart';
import 'package:ulid/ulid.dart';

import 'places.dart';
import 'posts.dart';
import 'profiles.dart';

class Ratings extends Table {
  TextColumn get id => text() //
      .named('id')
      .clientDefault(() => Ulid().toString())
      .customConstraint('PRIMARY KEY NOT NULL')();
  TextColumn get profileId => text().named('profile_id').references(Profiles, #id)();
  TextColumn get placeId => text().nullable().named('place_id').references(Places, #id)();
  TextColumn get postId => text().nullable().named('post_id').references(Posts, #id)();

  TextColumn get name => text().withLength(min: 2, max: 30).named('name')();
  RealColumn get rating => real()();

  DateTimeColumn get createdAt => dateTime().named('created_at').clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt => dateTime().named('updated_at').clientDefault(() => DateTime.now())();
}
