import 'package:drift/drift.dart';
import 'package:ulid/ulid.dart';

import 'places.dart';
import 'profiles.dart';

class Posts extends Table {
  TextColumn get id => text() //
      .clientDefault(() => Ulid().toString())
      .named('id')
      .customConstraint('PRIMARY KEY NOT NULL')();
  TextColumn get profileId => text().named('profile_id').references(Profiles, #id)();
  TextColumn get placeId => text().nullable().named('place_id').references(Places, #id)();

  TextColumn get content => text()();
  BoolColumn get isEdited => boolean().named('is_edited').withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime().named('created_at').clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt => dateTime().named('updated_at').clientDefault(() => DateTime.now())();
}
