import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

@DataClassName('SemaphoreServer')
class SemaphoreServers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  TextColumn get apiUrl => text().nullable()();
  TextColumn get username => text().nullable()();
  TextColumn get token => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

@DataClassName('SemaphoreProject')
class SemaphoreProjects extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get serverId => integer().references(SemaphoreServers, #id)();
  IntColumn get projectId => integer().nullable()();
  TextColumn get name => text().nullable()();
  BoolColumn get alert => boolean().nullable()();
  TextColumn get alertChat => text().nullable()();
  IntColumn get maxParallelTasks => integer().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

@DriftDatabase(tables: [SemaphoreServers, SemaphoreProjects])
class AppDatabase extends _$AppDatabase {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/setup/
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  // Add this factory for tests
  factory AppDatabase.forTesting() {
    return AppDatabase(NativeDatabase.memory());
  }

  // Initialize database with migration from ObjectBox if needed
  static Future<AppDatabase> createWithMigration() async {
    final db = AppDatabase();
    // Migration disabled for now - ObjectBox files have been removed
    // await DatabaseMigration.migrateFromObjectBoxToDrift(db);
    return db;
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // Handle migrations when schema version changes
      },
    );
  }

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'semaphore_client',
      native: const DriftNativeOptions(
        // By default, `driftDatabase` from `package:drift_flutter` stores the
        // database files in `getApplicationDocumentsDirectory()`.
        databaseDirectory: getApplicationSupportDirectory,
      ),
      // If you need web support, see https://drift.simonbinder.eu/platforms/web/
    );
  }
}
