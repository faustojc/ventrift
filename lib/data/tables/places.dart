import 'package:drift/drift.dart';
import 'package:ulid/ulid.dart';

class Places extends Table {
  TextColumn get id => text() //
      .clientDefault(() => Ulid().toString())
      .named('id')
      .customConstraint('PRIMARY KEY NOT NULL')();

  TextColumn get placeName => text().named('place_name').withLength(max: 255)();
  TextColumn get address => text()();
  TextColumn get city => text().withLength(max: 100)();
  TextColumn get state => text().withLength(max: 100)();
  TextColumn get country => text().withLength(max: 100)();
  RealColumn get latitude => real()();
  RealColumn get longitude => real()();
  TextColumn get zipCode => text().withLength(max: 10).named('zip_code')();
  TextColumn get placeTypesJson => text().nullable().named('place_types')();
  TextColumn get phoneNumber => text().withLength(max: 20).nullable().named('phone_number')();
  TextColumn get website => text().nullable()();

  DateTimeColumn get createdAt => dateTime().named('created_at').clientDefault(() => DateTime.now())();
  DateTimeColumn get updatedAt => dateTime().named('updated_at').clientDefault(() => DateTime.now())();
}
