#!/usr/bin/env dart

import 'dart:io';

/// Script to create a new brick test file with boilerplate code
void main(List<String> args) async {
  if (args.isEmpty) {
    print('Usage: dart create_test.dart <brick_name>');
    print('Example: dart create_test.dart api_client');
    exit(1);
  }

  final brickName = args[0];
  final testFileName = '${brickName}_test.dart';
  final testFile = File(testFileName);

  if (testFile.existsSync()) {
    print('Test file $testFileName already exists!');
    exit(1);
  }

  final brickPath = '../../bricks/$brickName';

  final testContent =
      '''import 'package:test/test.dart';
import 'package:mason/mason.dart';
import 'dart:io';
import 'test_utils.dart';

void main() {
  group('$brickName Brick Tests', () {
    // TODO: Update this path once Mason API is fixed
    const brickYamlPath = '$brickPath/brick.yaml';
    
    test('should generate correct file structure', () async {
      // Arrange
      final tempDir = Directory.systemTemp.createTempSync();
      // TODO: Fix API call - Brick.fromBrickYaml no longer exists
      // final brick = await BrickTestUtils.loadBrick(brickYamlPath);
      
      // Act
      // TODO: Fix API call
      // final files = await BrickTestUtils.generateBrick(
      //   brick,
      //   tempDir,
      //   {'name': 'Test${brickName.split('_').map((w) => w[0].toUpperCase() + w.substring(1)).join()}'},
      // );
      
      // Assert
      // TODO: Add assertions once API is fixed
      // expect(files.length, greaterThan(0));
      // BrickTestUtils.validateFilesExist([
      //   'lib/${brickName}_test.dart',
      //   'pubspec.yaml',
      // ]);
      
      // Cleanup
      tempDir.deleteSync(recursive: true);
    });

    test('should substitute template variables correctly', () async {
      // TODO: Implement once Mason API is fixed
      // This test should verify that template variables are properly substituted
    });

    test('should include correct dependencies', () async {
      // TODO: Implement once Mason API is fixed
      // This test should verify that generated pubspec.yaml has correct dependencies
    });

    test('should handle invalid parameters gracefully', () async {
      // TODO: Implement once Mason API is fixed
      // This test should verify error handling for invalid inputs
    });

    test('should meet performance requirements', () async {
      // TODO: Implement once Mason API is fixed
      // This test should verify generation completes within time budget
      // final stopwatch = Stopwatch()..start();
      // // ... generation code ...
      // stopwatch.stop();
      // expect(stopwatch.elapsedMilliseconds, lessThan(5000));
    });
  });
}
''';

  await testFile.writeAsString(testContent);
  print('Created test file: $testFileName');
  print('');
  print('Next steps:');
  print('1. Update the TODO comments with actual implementation');
  print('2. Fix Mason API calls once API is updated');
  print('3. Add specific assertions for your brick');
  print('4. Run: dart test $testFileName');
}
