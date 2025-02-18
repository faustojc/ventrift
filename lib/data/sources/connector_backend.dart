import 'package:drift/drift.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:powersync/powersync.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:ventrift/data/sources/database.dart';
import 'package:ventrift/data/sources/schema.dart';
import 'package:ventrift/env/env.dart';

/// Global database instance for the app database (Powered by [DriftDatabase]).
late final AppDatabase appDatabase;

final class ConnectorBackend {
  ConnectorBackend._();

  static final ConnectorBackend instance = ConnectorBackend._();

  final log = Logger(
    printer: PrettyPrinter(
      methodCount: 8,
      lineLength: 180,
    ),
  );

  late final PowerSyncDatabase powersyncDb;

  bool hasSynced = false;

  Future<void> init() async {
    try {
      await Supabase.initialize(url: Env.supabaseProjectUrl, anonKey: Env.supabaseAnonKey);
      powersyncDb = PowerSyncDatabase(
        schema: powersyncSchema,
        path: await _getDatabasePath(),
        logger: attachedLogger,
      );

      await powersyncDb.initialize();

      appDatabase = AppDatabase(powersyncDb);
      final _PowerSyncConnector powersyncConnector = _PowerSyncConnector(powersyncDb);

      if (isLoggedIn()) {
        await powersyncDb.connect(connector: powersyncConnector);
      }

      Supabase.instance.client.auth.onAuthStateChange.listen((state) async {
        if (state.event == AuthChangeEvent.signedIn) {
          await powersyncDb.connect(connector: powersyncConnector);
        } else if (state.event == AuthChangeEvent.signedOut) {
          powersyncDb.disconnectAndClear();
          hasSynced = false;
        } else if (state.event == AuthChangeEvent.tokenRefreshed) {
          await powersyncConnector.prefetchCredentials();
        }
      });
    } catch (e) {
      log.e(e.toString(), error: e);
    }
  }

  bool isLoggedIn() => Supabase.instance.client.auth.currentSession?.accessToken != null;

  /// id of the user currently logged in
  String? getUserId() => Supabase.instance.client.auth.currentSession?.user.id;

  Future<void> checkSync() async {
    if (hasSynced) return;

    await for (final status in powersyncDb.statusStream) {
      if (status.hasSynced ?? false) {
        hasSynced = true;
        break;
      }
    }
  }

  Future<String> _getDatabasePath() async {
    final dir = await getApplicationSupportDirectory();

    return join(dir.path, "powersync.db");
  }
}

class _PowerSyncConnector extends PowerSyncBackendConnector {
  final List<RegExp> _fatalResponseCodes = [
    // Class 22 — Data Exception
    // Examples include data type mismatch.
    RegExp(r'^22...$'),
    // Class 23 — Integrity Constraint Violation.
    // Examples include NOT NULL, FOREIGN KEY and UNIQUE violations.
    RegExp(r'^23...$'),
    // INSUFFICIENT PRIVILEGE - typically a row-level security violation
    RegExp(r'^42501$'),
  ];
  final log = Logger(
    printer: PrettyPrinter(
      methodCount: 8,
      lineLength: 180,
    ),
  );

  Future<void>? _refreshFuture;
  PowerSyncDatabase db;

  _PowerSyncConnector(this.db);

  @override
  Future<PowerSyncCredentials?> fetchCredentials() async {
    await _refreshFuture;

    final currSession = Supabase.instance.client.auth.currentSession;

    if (currSession == null) {
      return Future.value();
    }

    final token = currSession.accessToken;
    final userId = currSession.user.id;

    return PowerSyncCredentials(
      endpoint: Env.powersyncEndpoint,
      token: token,
      userId: userId,
    );
  }

  @override
  void invalidateCredentials() {
    _refreshFuture = Supabase.instance.client.auth
        .refreshSession() //
        .timeout(const Duration(seconds: 10))
        .then((response) => null, onError: (error) => null);
  }

  @override
  Future<void> uploadData(PowerSyncDatabase database) async {
    final batch = await database.getCrudBatch();

    if (batch == null) return;

    final rest = Supabase.instance.client.rest;
    CrudEntry? lastEntry;

    try {
      for (var entry in batch.crud) {
        lastEntry = entry;
        final table = rest.from(entry.table);

        if (entry.op == UpdateType.put) {
          final data = Map<String, dynamic>.from(entry.opData!);
          data['id'] = entry.id;

          await table.upsert(data);
        } else if (entry.op == UpdateType.delete) {
          await table.delete().eq('id', entry.id);
        } else if (entry.op == UpdateType.patch) {
          await table.update(entry.opData!).eq('id', entry.id);
        }
      }

      await batch.complete();
    } on PostgrestException catch (e) {
      if (e.code != null && _fatalResponseCodes.any((re) => re.hasMatch(e.code!))) {
        log.f('Data upload error - discarding $lastEntry');
        await batch.complete();
      } else {
        log.e(e.message, error: e);
        rethrow;
      }
    }
  }
}
