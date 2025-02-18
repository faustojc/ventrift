import 'package:drift/drift.dart';
import 'package:ulid/ulid.dart';

import 'profiles.dart';

class Follows extends Table {
  TextColumn get id => text() //
      .named('id')
      .clientDefault(() => Ulid().toString())
      .customConstraint('PRIMARY KEY NOT NULL')();

  TextColumn get followerId => text().named('follower_id').references(Profiles, #id)();
  TextColumn get followingId => text().named('following_id').references(Profiles, #id)();

  TextColumn get status => text() //
      .named('status')
      .withLength(max: 20)
      .withDefault(const Constant('pending'))();

  DateTimeColumn get createdAt => dateTime().named('created_at').clientDefault(() => DateTime.now())();

  @override
  List<Set<Column>> get uniqueKeys => [
        {followerId, followingId}
      ];
}
