import 'package:drift/backends.dart';
import 'package:drift/drift.dart' as drift;
import 'package:drift_sqlite_async/drift_sqlite_async.dart';
import 'package:powersync/powersync.dart' show PowerSyncDatabase;
import 'package:ulid/ulid.dart';
import 'package:ventrift/data/tables/comments.dart';
import 'package:ventrift/data/tables/follows.dart';
import 'package:ventrift/data/tables/medias.dart';
import 'package:ventrift/data/tables/places.dart';
import 'package:ventrift/data/tables/posts.dart';
import 'package:ventrift/data/tables/profiles.dart';
import 'package:ventrift/data/tables/ratings.dart';

part 'database.g.dart';

@drift.DriftDatabase(tables: [Profiles, Places, Follows, Posts, Medias, Comments, Ratings])
class AppDatabase extends _$AppDatabase {
  AppDatabase(PowerSyncDatabase db) : super(SqliteAsyncDriftConnection(db));

  @override
  int get schemaVersion => 1;
}
