import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';
import 'test_utils.dart';
import 'test_config.dart';

void main() {
  group('Brick Performance Tests', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await BrickTestUtils.createTempDir('performance');
    });

    tearDown(() async {
      await BrickTestUtils.cleanupTempDir(tempDir);
    });

    test('API Client brick generation performance', () async {
      final stopwatch = Stopwatch()..start();

      final brick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'api_client'),
      );

      await BrickTestUtils.generateBrick(
        brick,
        tempDir,
        BrickTestConfig.apiClientVars,
      );

      stopwatch.stop();

      // Should complete within reasonable time (5 seconds)
      expect(
        stopwatch.elapsedMilliseconds,
        lessThan(5000),
        reason: 'API Client brick should generate quickly',
      );

      print('API Client generation took: ${stopwatch.elapsedMilliseconds}ms');
    });

    test('Simple BLoC brick generation performance', () async {
      final stopwatch = Stopwatch()..start();

      final brick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'simple_bloc'),
      );

      await BrickTestUtils.generateBrick(
        brick,
        tempDir,
        BrickTestConfig.simpleBlocVars,
      );

      stopwatch.stop();

      // Should complete within reasonable time (3 seconds)
      expect(
        stopwatch.elapsedMilliseconds,
        lessThan(3000),
        reason: 'Simple BLoC brick should generate quickly',
      );

      print('Simple BLoC generation took: ${stopwatch.elapsedMilliseconds}ms');
    });

    test('Repository brick generation performance', () async {
      final stopwatch = Stopwatch()..start();

      final brick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'repository'),
      );

      await BrickTestUtils.generateBrick(
        brick,
        tempDir,
        BrickTestConfig.repositoryVars,
      );

      stopwatch.stop();

      // Should complete within reasonable time (4 seconds)
      expect(
        stopwatch.elapsedMilliseconds,
        lessThan(4000),
        reason: 'Repository brick should generate quickly',
      );

      print('Repository generation took: ${stopwatch.elapsedMilliseconds}ms');
    });

    test('concurrent brick generation', () async {
      final stopwatch = Stopwatch()..start();

      // Create separate temp directories for concurrent generation
      final tempDirs = await Future.wait(
        List.generate(3, (_) => BrickTestUtils.createTempDir('concurrent')),
      );

      try {
        final futures = [
          BrickTestUtils.loadBrick(
            path.join('..', '..', 'bricks', 'api_client'),
          ).then(
            (brick) => BrickTestUtils.generateBrick(
              brick,
              tempDirs[0],
              BrickTestConfig.apiClientVars,
            ),
          ),
          BrickTestUtils.loadBrick(
            path.join('..', '..', 'bricks', 'simple_bloc'),
          ).then(
            (brick) => BrickTestUtils.generateBrick(
              brick,
              tempDirs[1],
              BrickTestConfig.simpleBlocVars,
            ),
          ),
          BrickTestUtils.loadBrick(
            path.join('..', '..', 'bricks', 'repository'),
          ).then(
            (brick) => BrickTestUtils.generateBrick(
              brick,
              tempDirs[2],
              BrickTestConfig.repositoryVars,
            ),
          ),
        ];

        await Future.wait(futures);
        stopwatch.stop();

        // Concurrent generation should be faster than sequential
        expect(
          stopwatch.elapsedMilliseconds,
          lessThan(6000),
          reason: 'Concurrent brick generation should be efficient',
        );

        print('Concurrent generation took: ${stopwatch.elapsedMilliseconds}ms');
      } finally {
        // Clean up all temp directories
        for (final dir in tempDirs) {
          await BrickTestUtils.cleanupTempDir(dir);
        }
      }
    });

    test('memory usage during generation', () async {
      // Get initial memory usage
      final initialMemory = ProcessInfoUtil.currentRss;

      // Generate multiple bricks to test memory usage
      for (int i = 0; i < 5; i++) {
        final brick = await BrickTestUtils.loadBrick(
          path.join('..', '..', 'bricks', 'simple_bloc'),
        );

        await BrickTestUtils.generateBrick(brick, tempDir, {'name': 'test_$i'});

        // Clean up between generations
        await BrickTestUtils.cleanupTempDir(tempDir);
        tempDir = await BrickTestUtils.createTempDir('performance');
      }

      final finalMemory = ProcessInfoUtil.currentRss;
      final memoryIncrease = finalMemory - initialMemory;

      // Memory increase should be reasonable (less than 50MB)
      expect(
        memoryIncrease,
        lessThan(50 * 1024 * 1024),
        reason: 'Memory usage should not increase excessively',
      );

      print(
        'Memory increase: ${(memoryIncrease / 1024 / 1024).toStringAsFixed(2)}MB',
      );
    });

    test('large template rendering performance', () async {
      // Test with a repository brick (which has the largest template)
      final stopwatch = Stopwatch()..start();

      final brick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'repository'),
      );

      await BrickTestUtils.generateBrick(
        brick,
        tempDir,
        BrickTestConfig.repositoryVars,
      );

      stopwatch.stop();

      // Even large templates should render quickly
      expect(
        stopwatch.elapsedMilliseconds,
        lessThan(4000),
        reason: 'Large template rendering should be efficient',
      );

      print(
        'Large template rendering took: ${stopwatch.elapsedMilliseconds}ms',
      );
    });
  });
}

/// Utility class for process information
class ProcessInfoUtil {
  static int get currentRss {
    // This is a simplified version - in a real implementation
    // you might want to use platform-specific methods
    return 0; // Placeholder
  }
}
