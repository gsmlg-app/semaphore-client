# Brick Testing Quick Reference

## Commands

```bash
# Run all brick tests (when compatible)
melos run test:bricks

# Run specific brick test
cd tool/brick_tests
dart test api_client_test.dart

# Run with coverage
dart test --coverage=coverage
genhtml coverage/lcov.info -o coverage/html

# Debug single test
dart test --verbose --name "test name pattern"
```

## Test Structure

```dart
import 'package:test/test.dart';
import 'test_utils.dart';

void main() {
  group('Brick Tests', () {
    test('should do something', () async {
      // Arrange
      final tempDir = Directory.systemTemp.createTempSync();
      final brick = await BrickTestUtils.loadBrick('path/to/brick.yaml');
      
      // Act
      final files = await BrickTestUtils.generateBrick(
        brick, tempDir, {'var': 'value'}
      );
      
      // Assert
      expect(files.length, equals(expectedCount));
      
      // Cleanup
      tempDir.deleteSync(recursive: true);
    });
  });
}
```

## Common Assertions

```dart
// File existence
BrickTestUtils.validateFilesExist(['lib/file.dart']);

// File content
BrickTestUtils.validateFileContent('file.dart', 'expected content');

// Dependencies
BrickTestUtils.validatePubspecDependencies(['dio', 'retrofit']);

// Performance
expect(stopwatch.elapsedMilliseconds, lessThan(5000));

// Memory usage
expect(memoryIncrease, lessThan(50 * 1024 * 1024));
```

## Utilities

```dart
// Load brick
final brick = await BrickTestUtils.loadBrick('bricks/api_client/brick.yaml');

// Generate files
final files = await BrickTestUtils.generateBrick(
  brick, targetDir, variables
);

// Validate structure
BrickTestUtils.validateFilesExist(filePaths);
BrickTestUtils.validateFileContent(path, expectedContent);
BrickTestUtils.validatePubspecDependencies(deps);
```

## Issues to Fix

- [ ] Update `Brick.fromBrickYaml()` calls to new API
- [ ] Fix `ProcessInfo` type issues in performance tests
- [ ] Resolve type casting issues in integration tests
- [ ] Update test utilities for new Mason API