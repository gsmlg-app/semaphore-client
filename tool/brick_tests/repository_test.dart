import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

void main() {
  group('Repository Brick Tests', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('repository_test_');
    });

    tearDown(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('generates repository package with correct structure', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      final files = await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'user',
          'has_remote_data_source': true,
          'has_local_data_source': true,
          'model_name': 'User',
        },
      );

      // Check expected files are generated
      final expectedFiles = [
        'pubspec.yaml',
        'lib/user_repository.dart',
        'lib/src/repository.dart',
        'lib/src/data_sources/remote_data_source.dart',
        'lib/src/data_sources/local_data_source.dart',
        'lib/src/models/user_model.dart',
        'lib/src/exceptions/exceptions.dart',
      ];

      for (final expectedFile in expectedFiles) {
        final file = File(path.join(tempDir.path, expectedFile));
        expect(
          await file.exists(),
          isTrue,
          reason: '$expectedFile should exist',
        );
      }
    });

    test('generates valid pubspec.yaml with correct dependencies', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'user',
          'has_remote_data_source': true,
          'has_local_data_source': true,
          'model_name': 'User',
        },
      );

      final pubspecFile = File(path.join(tempDir.path, 'pubspec.yaml'));
      expect(await pubspecFile.exists(), isTrue);

      final pubspecContent = await pubspecFile.readAsString();

      // Check package name
      expect(pubspecContent, contains('name: user_repository'));

      // Check dependencies
      expect(pubspecContent, contains('equatable: ^2.0.7'));
      expect(pubspecContent, contains('dio: ^5.7.0'));
      expect(pubspecContent, contains('connectivity_plus: ^6.0.5'));
      expect(pubspecContent, contains('shared_preferences: ^2.3.5'));
      expect(pubspecContent, contains('path_provider: ^2.1.5'));

      // Check dev dependencies
      expect(pubspecContent, contains('mocktail: ^1.0.3'));
      expect(pubspecContent, contains('flutter_lints: ^6.0.0'));
    });

    test('generates repository with only remote data source', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'product',
          'has_remote_data_source': true,
          'has_local_data_source': false,
          'model_name': 'Product',
        },
      );

      final pubspecFile = File(path.join(tempDir.path, 'pubspec.yaml'));
      final pubspecContent = await pubspecFile.readAsString();

      // Should include remote dependencies
      expect(pubspecContent, contains('dio: ^5.7.0'));
      expect(pubspecContent, contains('connectivity_plus: ^6.0.5'));

      // Should not include local dependencies
      expect(pubspecContent, isNot(contains('shared_preferences: ^2.3.5')));
      expect(pubspecContent, isNot(contains('path_provider: ^2.1.5')));
    });

    test('generates repository with only local data source', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'settings',
          'has_remote_data_source': false,
          'has_local_data_source': true,
          'model_name': 'Settings',
        },
      );

      final pubspecFile = File(path.join(tempDir.path, 'pubspec.yaml'));
      final pubspecContent = await pubspecFile.readAsString();

      // Should include local dependencies
      expect(pubspecContent, contains('shared_preferences: ^2.3.5'));
      expect(pubspecContent, contains('path_provider: ^2.1.5'));

      // Should not include remote dependencies
      expect(pubspecContent, isNot(contains('dio: ^5.7.0')));
      expect(pubspecContent, isNot(contains('connectivity_plus: ^6.0.5')));
    });

    test('generates correct repository interface', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'user',
          'has_remote_data_source': true,
          'has_local_data_source': true,
          'model_name': 'User',
        },
      );

      final repositoryFile = File(
        path.join(tempDir.path, 'lib/src/repository.dart'),
      );
      expect(await repositoryFile.exists(), isTrue);

      final repositoryContent = await repositoryFile.readAsString();

      // Check abstract class
      expect(repositoryContent, contains('abstract class UserRepository'));
      expect(
        repositoryContent,
        contains('Future<UserModel> getUser(String id)'),
      );
      expect(
        repositoryContent,
        contains('Future<List<UserModel>> getAllUsers()'),
      );
      expect(
        repositoryContent,
        contains('Future<UserModel> createUser(UserModel user)'),
      );
      expect(
        repositoryContent,
        contains('Future<UserModel> updateUser(UserModel user)'),
      );
      expect(repositoryContent, contains('Future<void> deleteUser(String id)'));
      expect(repositoryContent, contains('Future<void> syncUsers()'));
      expect(repositoryContent, contains('Future<void> clearCache()'));
    });

    test('generates correct repository implementation', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'user',
          'has_remote_data_source': true,
          'has_local_data_source': true,
          'model_name': 'User',
        },
      );

      final repositoryFile = File(
        path.join(tempDir.path, 'lib/src/repository.dart'),
      );
      final repositoryContent = await repositoryFile.readAsString();

      // Check implementation class
      expect(
        repositoryContent,
        contains('class UserRepositoryImpl extends UserRepository'),
      );
      expect(
        repositoryContent,
        contains('final UserRemoteDataSource remoteDataSource;'),
      );
      expect(
        repositoryContent,
        contains('final UserLocalDataSource localDataSource;'),
      );
      expect(repositoryContent, contains('final bool enableCache;'));
      expect(repositoryContent, contains('final CachePolicy cachePolicy;'));

      // Check cache policy enum
      expect(repositoryContent, contains('enum CachePolicy {'));
      expect(repositoryContent, contains('networkFirst,'));
      expect(repositoryContent, contains('cacheFirst,'));
      expect(repositoryContent, contains('networkOnly,'));
      expect(repositoryContent, contains('cacheOnly,'));
    });

    test('generates correct model structure', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'user',
          'has_remote_data_source': true,
          'has_local_data_source': true,
          'model_name': 'User',
        },
      );

      final modelFile = File(
        path.join(tempDir.path, 'lib/src/models/user_model.dart'),
      );
      expect(await modelFile.exists(), isTrue);

      final modelContent = await modelFile.readAsString();

      // Check model class
      expect(modelContent, contains('class UserModel extends Equatable'));
      expect(modelContent, contains('final String id;'));
      expect(modelContent, contains('const UserModel({'));
      expect(modelContent, contains('required this.id,'));
      expect(modelContent, contains('UserModel copyWith('));
      expect(modelContent, contains('@override'));
      expect(modelContent, contains('List<Object?> get props'));
    });

    test('generates correct exceptions', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'user',
          'has_remote_data_source': true,
          'has_local_data_source': true,
          'model_name': 'User',
        },
      );

      final exceptionsFile = File(
        path.join(tempDir.path, 'lib/src/exceptions/exceptions.dart'),
      );
      expect(await exceptionsFile.exists(), isTrue);

      final exceptionsContent = await exceptionsFile.readAsString();

      // Check exception classes
      expect(
        exceptionsContent,
        contains('abstract class UserException implements Exception'),
      );
      expect(
        exceptionsContent,
        contains('class UserNetworkException extends UserException'),
      );
      expect(
        exceptionsContent,
        contains('class UserValidationException extends UserException'),
      );
      expect(
        exceptionsContent,
        contains('class UserNotFoundException extends UserException'),
      );
      expect(
        exceptionsContent,
        contains('class UserCacheException extends UserException'),
      );
    });

    test('generates correct data sources', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'user',
          'has_remote_data_source': true,
          'has_local_data_source': true,
          'model_name': 'User',
        },
      );

      final remoteFile = File(
        path.join(tempDir.path, 'lib/src/data_sources/remote_data_source.dart'),
      );
      final localFile = File(
        path.join(tempDir.path, 'lib/src/data_sources/local_data_source.dart'),
      );

      expect(await remoteFile.exists(), isTrue);
      expect(await localFile.exists(), isTrue);

      final remoteContent = await remoteFile.readAsString();
      final localContent = await localFile.readAsString();

      // Check remote data source
      expect(remoteContent, contains('abstract class UserRemoteDataSource'));
      expect(remoteContent, contains('Future<UserModel> getUser(String id)'));

      // Check local data source
      expect(localContent, contains('abstract class UserLocalDataSource'));
      expect(
        localContent,
        contains('Future<UserModel?> getCachedUser(String id)'),
      );
      expect(localContent, contains('Future<void> cacheUser(UserModel user)'));
    });

    test('generates correct main export file', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'user',
          'has_remote_data_source': true,
          'has_local_data_source': true,
          'model_name': 'User',
        },
      );

      final mainFile = File(
        path.join(tempDir.path, 'lib/user_repository.dart'),
      );
      expect(await mainFile.exists(), isTrue);

      final mainContent = await mainFile.readAsString();
      expect(mainContent, contains('export \'src/repository.dart\';'));
      expect(mainContent, contains('export \'src/models/user_model.dart\';'));
      expect(
        mainContent,
        contains('export \'src/exceptions/exceptions.dart\';'),
      );
    });

    test('handles different repository names correctly', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'order_management',
          'has_remote_data_source': true,
          'has_local_data_source': false,
          'model_name': 'Order',
        },
      );

      final pubspecFile = File(path.join(tempDir.path, 'pubspec.yaml'));
      final pubspecContent = await pubspecFile.readAsString();
      expect(pubspecContent, contains('name: order_management_repository'));

      final repositoryFile = File(
        path.join(tempDir.path, 'lib/src/repository.dart'),
      );
      final repositoryContent = await repositoryFile.readAsString();
      expect(repositoryContent, contains('abstract class OrderRepository'));
      expect(
        repositoryContent,
        contains('class OrderRepositoryImpl extends OrderRepository'),
      );
    });

    test('validates name parameter', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);

      // Test with empty name (should throw)
      expect(
        () => generator.generate(
          DirectoryGeneratorTarget(tempDir),
          vars: {'name': ''},
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('uses default model name when not provided', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'repository'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'user',
          'has_remote_data_source': true,
          'has_local_data_source': true,
          'model_name': '', // Empty model name should default to User
        },
      );

      final repositoryFile = File(
        path.join(tempDir.path, 'lib/src/repository.dart'),
      );
      final repositoryContent = await repositoryFile.readAsString();
      expect(repositoryContent, contains('abstract class UserRepository'));
      expect(
        repositoryContent,
        contains('Future<UserModel> getUser(String id)'),
      );
    });
  });
}
