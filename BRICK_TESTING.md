# Mason Brick Testing Guide

This guide explains how to test Mason bricks in the Semaphore Client project.

## Overview

Mason bricks are code generation templates that help scaffold Flutter components. Testing ensures these templates generate correct, working code with proper structure, dependencies, and configuration.

## Current Status

⚠️ **Important**: The brick tests are currently incompatible with Mason v0.1.1+ due to API changes. This guide provides the testing approach and will work once the tests are updated for the new API.

## Testing Structure

```
tool/brick_tests/
├── README.md                    # Current status and issues
├── pubspec.yaml                 # Separate dependencies for brick testing
├── run_tests.sh                 # Script to run brick tests
├── all_bricks_test.dart         # Main test runner
├── api_client_test.dart         # API Client brick tests
├── repository_test.dart         # Repository brick tests
├── simple_bloc_test.dart        # Simple BLoC brick tests
├── performance_test.dart        # Performance and memory tests
├── integration_test.dart        # Cross-brick integration tests
├── test_utils.dart              # Utility functions for testing
├── test_config.dart             # Test configurations and expected values
└── validate_bricks.dart         # Brick structure validation
```

## Running Brick Tests

### Quick Start
```bash
# Run all brick tests (when compatible)
melos run test:bricks

# Or run directly
cd tool/brick_tests
./run_tests.sh
```

### Individual Test Suites
```bash
cd tool/brick_tests

# Run specific test files
dart test api_client_test.dart
dart test repository_test.dart
dart test simple_bloc_test.dart
dart test performance_test.dart
dart test integration_test.dart
```

### With Coverage
```bash
cd tool/brick_tests
dart test --coverage=coverage
genhtml coverage/lcov.info -o coverage/html
```

## Test Categories

### 1. Unit Tests
Each brick test verifies:
- ✅ **File Structure**: Correct files are generated
- ✅ **Dependencies**: Proper pubspec.yaml with required packages
- ✅ **Code Quality**: Generated Dart code is syntactically correct
- ✅ **Template Variables**: Variables are properly substituted
- ✅ **Parameter Validation**: Invalid inputs are handled
- ✅ **Error Handling**: Graceful failure for edge cases

### 2. Performance Tests
Monitor generation efficiency:
- ⚡ **Speed**: Generation time benchmarks
- 💾 **Memory**: Memory usage during generation
- 🔄 **Concurrency**: Multiple simultaneous generations
- 📏 **Scale**: Large template performance

### 3. Integration Tests
Verify cross-brick compatibility:
- 🔗 **Type Compatibility**: Bricks work together
- 📦 **Workspace Integration**: Generated code fits project structure
- 🏗️ **Workflow**: Complete feature generation
- ⚠️ **Consistency**: Error handling across bricks

## Test Utilities

### BrickTestUtils
Located in `test_utils.dart`, provides:

```dart
// Load a brick from YAML file
static Future<Brick> loadBrick(String brickPath)

// Generate files from brick with variables
static Future<List<GeneratedFile>> generateBrick(
  Brick brick,
  Directory targetDir,
  Map<String, dynamic> variables,
)

// Validate generated files exist and contain expected content
static void validateFilesExist(List<String> filePaths)
static void validateFileContent(String filePath, String expectedContent)
static void validatePubspecDependencies(List<String> expectedDeps)
```

### Test Configuration
`test_config.dart` contains:
- Expected file lists for each brick
- Dependency configurations
- Test scenarios and variations
- Validation patterns
- Edge case test data

## Writing New Brick Tests

### Basic Test Structure
```dart
import 'package:test/test.dart';
import 'package:mason/mason.dart';
import 'test_utils.dart';

void main() {
  group('My Brick Tests', () {
    test('should generate correct file structure', () async {
      // Arrange
      final tempDir = Directory.systemTemp.createTempSync();
      final brick = await BrickTestUtils.loadBrick('path/to/brick.yaml');
      
      // Act
      final files = await BrickTestUtils.generateBrick(
        brick,
        tempDir,
        {'variable': 'value'},
      );
      
      // Assert
      expect(files.length, equals(expectedFileCount));
      BrickTestUtils.validateFilesExist([
        'lib/my_file.dart',
        'pubspec.yaml',
      ]);
      
      // Cleanup
      tempDir.deleteSync(recursive: true);
    });
  });
}
```

### Testing Template Variables
```dart
test('should substitute template variables correctly', () async {
  // Arrange
  final tempDir = Directory.systemTemp.createTempSync();
  final brick = await BrickTestUtils.loadBrick('bricks/api_client/brick.yaml');
  
  // Act
  await BrickTestUtils.generateBrick(
    brick,
    tempDir,
    {
      'name': 'UserApi',
      'base_url': 'https://api.example.com',
    },
  );
  
  // Assert
  final generatedFile = File('${tempDir.path}/lib/api/user_api.dart');
  final content = await generatedFile.readAsString();
  
  expect(content, contains('class UserApi'));
  expect(content, contains('https://api.example.com'));
  
  // Cleanup
  tempDir.deleteSync(recursive: true);
});
```

### Testing Dependencies
```dart
test('should include correct dependencies in pubspec', () async {
  // Arrange & Act
  final tempDir = await generateTestBrick();
  
  // Assert
  BrickTestUtils.validatePubspecDependencies([
    'dio',
    'retrofit',
    'json_annotation',
  ]);
  
  // Cleanup
  tempDir.deleteSync(recursive: true);
});
```

## Performance Testing

### Benchmark Generation Speed
```dart
test('should generate within performance budget', () async {
  // Arrange
  final stopwatch = Stopwatch();
  final tempDir = Directory.systemTemp.createTempSync();
  final brick = await BrickTestUtils.loadBrick('bricks/api_client/brick.yaml');
  
  // Act
  stopwatch.start();
  await BrickTestUtils.generateBrick(brick, tempDir, {'name': 'TestApi'});
  stopwatch.stop();
  
  // Assert
  expect(stopwatch.elapsedMilliseconds, lessThan(5000)); // 5 second budget
  
  // Cleanup
  tempDir.deleteSync(recursive: true);
});
```

### Memory Usage Testing
```dart
test('should not exceed memory budget', () async {
  // Arrange
  final initialMemory = ProcessInfo.currentRss;
  final tempDir = Directory.systemTemp.createTempSync();
  
  // Act - Generate multiple bricks
  for (int i = 0; i < 5; i++) {
    final brick = await BrickTestUtils.loadBrick('bricks/api_client/brick.yaml');
    await BrickTestUtils.generateBrick(brick, tempDir, {'name': 'TestApi$i'});
  }
  
  // Assert
  final finalMemory = ProcessInfo.currentRss;
  final memoryIncrease = finalMemory - initialMemory;
  expect(memoryIncrease, lessThan(50 * 1024 * 1024)); // 50MB budget
  
  // Cleanup
  tempDir.deleteSync(recursive: true);
});
```

## Integration Testing

### Cross-Brick Compatibility
```dart
test('repository and api_client bricks should work together', () async {
  // Arrange
  final tempDir = Directory.systemTemp.createTempSync();
  
  // Act - Generate API Client
  final apiBrick = await BrickTestUtils.loadBrick('bricks/api_client/brick.yaml');
  await BrickTestUtils.generateBrick(apiBrick, tempDir, {'name': 'UserApi'});
  
  // Act - Generate Repository (depends on API Client)
  final repoBrick = await BrickTestUtils.loadBrick('bricks/repository/brick.yaml');
  await BrickTestUtils.generateBrick(repoBrick, tempDir, {
    'name': 'UserRepository',
    'data_source': 'remote',
  });
  
  // Assert - Verify they work together
  final repoFile = File('${tempDir.path}/lib/repository/user_repository.dart');
  final repoContent = await repoFile.readAsString();
  expect(repoContent, contains('UserApi'));
  
  // Cleanup
  tempDir.deleteSync(recursive: true);
});
```

## Common Test Patterns

### Testing Error Handling
```dart
test('should handle invalid parameters gracefully', () async {
  // Arrange
  final tempDir = Directory.systemTemp.createTempSync();
  final brick = await BrickTestUtils.loadBrick('bricks/api_client/brick.yaml');
  
  // Act & Assert
  expect(
    () => BrickTestUtils.generateBrick(brick, tempDir, {'invalid': 'params'}),
    throwsA(isA<Exception>()),
  );
  
  // Cleanup
  tempDir.deleteSync(recursive: true);
});
```

### Testing File Content Validation
```dart
test('should generate syntactically correct Dart code', () async {
  // Arrange & Act
  final tempDir = await generateTestBrick();
  
  // Assert
  final dartFiles = tempDir
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart'));
  
  for (final file in dartFiles) {
    final result = await Process.run('dart', ['analyze', file.path]);
    expect(result.exitCode, equals(0), 
      reason: 'File ${file.path} has analysis errors');
  }
  
  // Cleanup
  tempDir.deleteSync(recursive: true);
});
```

## Debugging Tests

### Verbose Output
```bash
cd tool/brick_tests
dart test --verbose
```

### Single Test
```bash
dart test api_client_test.dart --name "should generate correct file structure"
```

### Debug Mode
```bash
dart test --pause-after-load api_client_test.dart
```

## CI/CD Integration

### GitHub Actions Example
```yaml
name: Brick Tests

on: [push, pull_request]

jobs:
  brick-tests:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: dart-lang/setup-dart@v1
      
      - name: Install dependencies
        run: |
          cd tool/brick_tests
          dart pub get
      
      - name: Run brick tests
        run: |
          cd tool/brick_tests
          dart test
```

## Troubleshooting

### Common Issues

1. **Mason API Changes**
   - Check Mason changelog for API updates
   - Update test code to use new methods
   - Verify import statements

2. **File Path Issues**
   - Use absolute paths for brick files
   - Verify brick.yaml exists and is valid
   - Check relative paths from test directory

3. **Permission Errors**
   - Ensure write permissions for temp directories
   - Check available disk space
   - Verify file system access

4. **Dependency Conflicts**
   - Run `dart pub get` in brick_tests directory
   - Check for version conflicts in pubspec.yaml
   - Update dependencies if needed

### Performance Issues
- Use `setUp` and `tearDown` for efficient test setup
- Reuse brick objects when possible
- Clean up temp directories promptly
- Consider using `setUpAll` for expensive operations

## Best Practices

1. **Test Isolation**: Each test should be independent
2. **Proper Cleanup**: Always delete temp directories
3. **Descriptive Names**: Use clear test descriptions
4. **Error Handling**: Test both success and failure cases
5. **Performance**: Set reasonable timeouts and budgets
6. **Documentation**: Comment complex test logic
7. **Consistency**: Follow existing test patterns

## Next Steps

1. **Update Tests**: Fix API compatibility issues with current Mason version
2. **Add Coverage**: Implement more comprehensive test scenarios
3. **Performance**: Add more detailed performance benchmarks
4. **Integration**: Expand cross-brick compatibility tests
5. **Automation**: Set up CI/CD pipeline for brick testing

For questions or issues with brick testing, refer to the Mason documentation or create an issue in the project repository.