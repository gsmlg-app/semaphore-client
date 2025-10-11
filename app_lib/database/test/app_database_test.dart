import 'package:flutter_test/flutter_test.dart';
import 'package:app_database/app_database.dart';
import 'package:drift/drift.dart' as drift;

void main() {
  group('AppDatabase Tests', () {
    late AppDatabase database;

    setUpAll(() async {
      database = AppDatabase.forTesting();
    });

    tearDownAll(() async {
      await database.close();
    });

    test('should initialize database without throwing', () {
      expect(database, isA<AppDatabase>());
    });

    test('should be able to create and query servers', () async {
      // Insert a test server
      final serverId = await database.into(database.semaphoreServers).insert(
            SemaphoreServersCompanion.insert(
              name: const drift.Value('Test Server'),
              apiUrl: const drift.Value('https://test.example.com'),
              username: const drift.Value('testuser'),
              token: const drift.Value('testtoken'),
              createdAt: drift.Value(DateTime.now()),
            ),
          );

      // Query the server
      final servers = await database.select(database.semaphoreServers).get();
      expect(servers, hasLength(1));
      expect(servers.first.name, equals('Test Server'));
      expect(servers.first.id, equals(serverId));
    });

    test('should be able to create and query projects', () async {
      // Insert a test server first
      final serverId = await database.into(database.semaphoreServers).insert(
            SemaphoreServersCompanion.insert(
              name: const drift.Value('Test Server'),
              apiUrl: const drift.Value('https://test.example.com'),
              username: const drift.Value('testuser'),
              token: const drift.Value('testtoken'),
              createdAt: drift.Value(DateTime.now()),
            ),
          );

      // Insert a test project
      await database.into(database.semaphoreProjects).insert(
            SemaphoreProjectsCompanion.insert(
              serverId: serverId,
              projectId: const drift.Value(123),
              name: const drift.Value('Test Project'),
              alert: const drift.Value(true),
              maxParallelTasks: const drift.Value(5),
              createdAt: drift.Value(DateTime.now()),
            ),
          );

      // Query the project
      final projects = await (database.select(database.semaphoreProjects)
            ..where((t) => t.serverId.equals(serverId)))
          .get();
      expect(projects, hasLength(1));
      expect(projects.first.name, equals('Test Project'));
      expect(projects.first.serverId, equals(serverId));
      expect(projects.first.projectId, equals(123));
    });
  });
}
