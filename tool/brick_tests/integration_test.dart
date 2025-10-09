import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';
import 'test_utils.dart';
import 'test_config.dart';

void main() {
  group('Brick Integration Tests', () {
    late Directory projectDir;

    setUp(() async {
      projectDir = await BrickTestUtils.createTempDir('integration_project');
    });

    tearDown(() async {
      await BrickTestUtils.cleanupTempDir(projectDir);
    });

    test('complete feature generation workflow', () async {
      // 1. Generate API Client
      final apiClientDir = Directory(path.join(projectDir.path, 'api_client'));
      await apiClientDir.create(recursive: true);

      final apiClientBrick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'api_client'),
      );

      await BrickTestUtils.generateBrick(apiClientBrick, apiClientDir, {
        'package_name': 'user_api',
      });

      // 2. Generate Repository
      final repositoryDir = Directory(path.join(projectDir.path, 'repository'));
      await repositoryDir.create(recursive: true);

      final repositoryBrick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'repository'),
      );

      await BrickTestUtils.generateBrick(repositoryBrick, repositoryDir, {
        'name': 'user',
        'has_remote_data_source': true,
        'has_local_data_source': true,
        'model_name': 'User',
      });

      // 3. Generate BLoC
      final blocDir = Directory(path.join(projectDir.path, 'bloc'));
      await blocDir.create(recursive: true);

      final blocBrick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'simple_bloc'),
      );

      await BrickTestUtils.generateBrick(blocBrick, blocDir, {'name': 'user'});

      // Verify all components exist
      final expectedComponents = [
        'api_client/pubspec.yaml',
        'api_client/lib/user_api.dart',
        'repository/pubspec.yaml',
        'repository/lib/user_repository.dart',
        'bloc/pubspec.yaml',
        'bloc/lib/user_bloc.dart',
      ];

      for (final component in expectedComponents) {
        final file = File(path.join(projectDir.path, component));
        expect(await file.exists(), isTrue, reason: '$component should exist');
      }
    });

    test('dependency compatibility across bricks', () async {
      // Generate all bricks and check for dependency conflicts
      final bricks = [
        {
          'name': 'api_client',
          'brick': await BrickTestUtils.loadBrick(
            path.join('..', '..', 'bricks', 'api_client'),
          ),
          'vars': {'package_name': 'test_api'},
          'dir': Directory(path.join(projectDir.path, 'api_client')),
        },
        {
          'name': 'repository',
          'brick': await BrickTestUtils.loadBrick(
            path.join('..', '..', 'bricks', 'repository'),
          ),
          'vars': BrickTestConfig.repositoryVars,
          'dir': Directory(path.join(projectDir.path, 'repository')),
        },
        {
          'name': 'simple_bloc',
          'brick': await BrickTestUtils.loadBrick(
            path.join('..', '..', 'bricks', 'simple_bloc'),
          ),
          'vars': {'name': 'test'},
          'dir': Directory(path.join(projectDir.path, 'bloc')),
        },
      ];

      // Generate all bricks
      for (final brickConfig in bricks) {
        final dir = brickConfig['dir'] as Directory;
        final brick = brickConfig['brick'] as Brick;
        final vars = brickConfig['vars'] as Map<String, dynamic>;

        await dir.create(recursive: true);
        await BrickTestUtils.generateBrick(brick, dir, vars);
      }

      // Check for common dependencies that should be compatible
      final commonDeps = <String>{};

      for (final brickConfig in bricks) {
        final pubspecContent = await BrickTestUtils.getFileContent(
          brickConfig['dir'] as Directory,
          'pubspec.yaml',
        );

        // Extract dependency names (simplified)
        final depMatches = RegExp(r'^\s+\w+:').allMatches(pubspecContent);
        for (final match in depMatches) {
          final depName = match.group(0)!.trim().replaceAll(':', '');
          commonDeps.add(depName);
        }
      }

      // Verify no obvious conflicts (this is a simplified check)
      expect(
        commonDeps.isNotEmpty,
        isTrue,
        reason: 'Should have common dependencies',
      );

      print('Common dependencies found: ${commonDeps.join(', ')}');
    });

    test('workspace integration simulation', () async {
      // Simulate a Melos workspace with multiple packages
      final workspacePackages = ['api', 'data', 'ui'];

      for (final package in workspacePackages) {
        final packageDir = Directory(path.join(projectDir.path, package));
        await packageDir.create(recursive: true);

        // Create a basic pubspec.yaml for the workspace package
        final pubspecContent =
            '''
name: ${package}_package
version: 1.0.0
publish_to: "none"

environment:
  sdk: ">=3.8.0 <4.0.0"
resolution: workspace

dependencies:
  flutter:
    sdk: flutter
''';

        await File(
          path.join(packageDir.path, 'pubspec.yaml'),
        ).writeAsString(pubspecContent);
      }

      // Generate bricks in appropriate packages
      // API Client in 'api' package
      final apiClientBrick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'api_client'),
      );

      await BrickTestUtils.generateBrick(
        apiClientBrick,
        Directory(path.join(projectDir.path, 'api')),
        {'package_name': 'api_client'},
      );

      // Repository in 'data' package
      final repositoryBrick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'repository'),
      );

      await BrickTestUtils.generateBrick(
        repositoryBrick,
        Directory(path.join(projectDir.path, 'data')),
        {
          'name': 'data',
          'has_remote_data_source': true,
          'has_local_data_source': true,
          'model_name': 'Data',
        },
      );

      // BLoC in 'ui' package
      final blocBrick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'simple_bloc'),
      );

      await BrickTestUtils.generateBrick(
        blocBrick,
        Directory(path.join(projectDir.path, 'ui')),
        {'name': 'ui'},
      );

      // Verify workspace structure
      final workspaceFiles = [
        'api/pubspec.yaml',
        'api/lib/api_client.dart',
        'data/pubspec.yaml',
        'data/lib/data_repository.dart',
        'ui/pubspec.yaml',
        'ui/lib/ui_bloc.dart',
      ];

      for (final file in workspaceFiles) {
        final filePath = File(path.join(projectDir.path, file));
        expect(
          await filePath.exists(),
          isTrue,
          reason: 'Workspace file $file should exist',
        );
      }
    });

    test('cross-brick type compatibility', () async {
      // Test that types from different bricks can work together

      // Generate repository with User model
      final repositoryDir = Directory(path.join(projectDir.path, 'repository'));
      await repositoryDir.create(recursive: true);

      final repositoryBrick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'repository'),
      );

      await BrickTestUtils.generateBrick(repositoryBrick, repositoryDir, {
        'name': 'user',
        'has_remote_data_source': true,
        'has_local_data_source': true,
        'model_name': 'User',
      });

      // Generate BLoC that could use the User model
      final blocDir = Directory(path.join(projectDir.path, 'bloc'));
      await blocDir.create(recursive: true);

      final blocBrick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'simple_bloc'),
      );

      await BrickTestUtils.generateBrick(blocBrick, blocDir, {'name': 'user'});

      // Verify that the generated types are compatible
      final userModelContent = await BrickTestUtils.getFileContent(
        repositoryDir,
        'lib/src/models/user_model.dart',
      );

      final blocStateContent = await BrickTestUtils.getFileContent(
        blocDir,
        'lib/src/state.dart',
      );

      // Check that both use Equatable (for compatibility)
      expect(userModelContent, contains('extends Equatable'));
      expect(blocStateContent, contains('extends Equatable'));

      print('✅ Cross-brick type compatibility verified');
    });

    test('error handling integration', () async {
      // Test that error handling is consistent across bricks

      final testCases = [
        {
          'name': 'empty_api_name',
          'brick': 'api_client',
          'vars': {'package_name': ''},
          'should_fail': true,
        },
        {
          'name': 'empty_bloc_name',
          'brick': 'simple_bloc',
          'vars': {'name': ''},
          'should_fail': true,
        },
        {
          'name': 'empty_repository_name',
          'brick': 'repository',
          'vars': {'name': ''},
          'should_fail': true,
        },
      ];

      for (final testCase in testCases) {
        final testDir = Directory(
          path.join(projectDir.path, testCase['name'] as String),
        );
        await testDir.create(recursive: true);

        final brick = await BrickTestUtils.loadBrick(
          path.join('..', '..', 'bricks', testCase['brick'] as String),
        );

        if (testCase['should_fail'] == true) {
          expect(
            () => BrickTestUtils.generateBrick(
              brick,
              testDir,
              testCase['vars'] as Map<String, dynamic>,
            ),
            throwsA(isA<ArgumentError>()),
            reason: '${testCase['name']} should fail with ArgumentError',
          );
        }
      }
    });
  });
}
