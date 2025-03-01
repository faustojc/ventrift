import 'package:drift/drift.dart';

class Profiles extends Table {
  TextColumn get id => text().named('id').customConstraint('PRIMARY KEY NOT NULL')();

  TextColumn get username => text().withLength(max: 50).named('username').unique()();
  TextColumn get userHandle => text().withLength(max: 120).named('user_handle').unique()();
  TextColumn get email => text().withLength(max: 120).named('email').unique()();
  TextColumn get fullName => text().withLength(max: 120).named('full_name')();
  TextColumn get avatarUrl => text().nullable().named('avatar_url')();
  TextColumn get bio => text().nullable()();
  TextColumn get country => text().withLength(max: 50).nullable()();

  DateTimeColumn get birthdate => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().named('created_at').clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt => dateTime().named('updated_at').clientDefault(() => DateTime.now())();
}
