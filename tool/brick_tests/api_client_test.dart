import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';
import 'test_utils.dart';

void main() {
  group('API Client Brick Tests', () {
    late Directory tempDir;
    late Brick brick;

    setUp(() async {
      tempDir = await BrickTestUtils.createTempDir('api_client');
      brick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'api_client'),
      );
    });

    tearDown(() async {
      await BrickTestUtils.cleanupTempDir(tempDir);
    });

    test('generates API client package with correct structure', () async {
      await BrickTestUtils.runTest('API Client structure generation', () async {
        await BrickTestUtils.generateBrick(brick, tempDir, {
          'package_name': 'test_api',
        });

        final expectedFiles = [
          'pubspec.yaml',
          'lib/test_api.dart',
          'lib/openapi.yaml',
          'swagger_parser.yaml',
          'test/test_api_test.dart',
        ];

        final allFilesExist = await BrickTestUtils.validateExpectedFiles(
          tempDir,
          expectedFiles,
        );
        expect(
          allFilesExist,
          isTrue,
          reason: 'All expected files should exist',
        );
      });
    });

    test('generates valid pubspec.yaml with correct dependencies', () async {
      await BrickTestUtils.runTest(
        'API Client pubspec.yaml validation',
        () async {
          await BrickTestUtils.generateBrick(brick, tempDir, {
            'package_name': 'test_api',
          });

          final expectedDependencies = [
            'dio: ^5.7.0',
            'json_annotation: ^4.9.0',
            'freezed_annotation: ^3.0.0',
            'retrofit: ^4.4.2',
          ];

          final expectedDevDependencies = [
            'build_runner: any',
            'json_serializable: ^6.9.3',
            'swagger_parser: ^1.26.1',
          ];

          final isValid = await BrickTestUtils.validatePubspec(
            tempDir,
            'test_api',
            expectedDependencies,
            expectedDevDependencies,
          );

          expect(
            isValid,
            isTrue,
            reason:
                'pubspec.yaml should have correct structure and dependencies',
          );
        },
      );
    });

    test('generates correct main library file', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'api_client'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'package_name': 'test_api'},
      );

      final libFile = File(path.join(tempDir.path, 'lib/test_api.dart'));
      expect(await libFile.exists(), isTrue);

      final libContent = await libFile.readAsString();
      expect(libContent, contains('library test_api;'));
    });

    test('generates OpenAPI template file', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'api_client'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'package_name': 'test_api'},
      );

      final openapiFile = File(path.join(tempDir.path, 'lib/openapi.yaml'));
      expect(await openapiFile.exists(), isTrue);

      final openapiContent = await openapiFile.readAsString();
      expect(openapiContent, contains('openapi: 3.0.0'));
      expect(openapiContent, contains('title: API Specification'));
    });

    test('generates swagger_parser configuration', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'api_client'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'package_name': 'test_api'},
      );

      final swaggerFile = File(path.join(tempDir.path, 'swagger_parser.yaml'));
      expect(await swaggerFile.exists(), isTrue);

      final swaggerContent = await swaggerFile.readAsString();
      expect(swaggerContent, contains('schema_path: ./lib/openapi.yaml'));
      expect(swaggerContent, contains('output_directory: lib/src'));
      expect(swaggerContent, contains('name: TestApi'));
    });

    test('generates test file with correct structure', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'api_client'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'package_name': 'test_api'},
      );

      final testFile = File(path.join(tempDir.path, 'test/test_api_test.dart'));
      expect(await testFile.exists(), isTrue);

      final testContent = await testFile.readAsString();
      expect(testContent, contains("import 'package:test_api/test_api.dart';"));
      expect(testContent, contains("import 'package:test/test.dart';"));
      expect(testContent, contains("import 'package:dio/dio.dart';"));
    });

    test('validates package name parameter', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'api_client'));

      final generator = await MasonGenerator.fromBrick(brick);

      // Test with invalid package name (should throw)
      expect(
        () => generator.generate(
          DirectoryGeneratorTarget(tempDir),
          vars: {'package_name': 'Invalid-Name'},
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('handles different package names correctly', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'api_client'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'package_name': 'user_service_api'},
      );

      final pubspecFile = File(path.join(tempDir.path, 'pubspec.yaml'));
      final pubspecContent = await pubspecFile.readAsString();
      expect(pubspecContent, contains('name: user_service_api'));

      final libFile = File(
        path.join(tempDir.path, 'lib/user_service_api.dart'),
      );
      expect(await libFile.exists(), isTrue);
    });
  });
}
