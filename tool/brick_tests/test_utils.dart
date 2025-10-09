import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

/// Utility class for brick testing
class BrickTestUtils {
  /// Creates a temporary directory for testing
  static Future<Directory> createTempDir(String prefix) async {
    return await Directory.systemTemp.createTemp('${prefix}_test_');
  }

  /// Cleans up a temporary directory
  static Future<void> cleanupTempDir(Directory dir) async {
    if (await dir.exists()) {
      await dir.delete(recursive: true);
    }
  }

  /// Loads a brick from its directory path
  static Future<Brick> loadBrick(String brickPath) async {
    return Brick.path(brickPath);
  }

  /// Generates files from a brick with given variables
  static Future<List<GeneratedFile>> generateBrick(
    Brick brick,
    Directory targetDir,
    Map<String, dynamic> vars,
  ) async {
    final generator = await MasonGenerator.fromBrick(brick);
    return await generator.generate(
      DirectoryGeneratorTarget(targetDir),
      vars: vars,
    );
  }

  /// Checks if a file exists and contains expected content
  static Future<bool> fileContains(
    Directory dir,
    String relativePath,
    String expectedContent,
  ) async {
    final file = File(path.join(dir.path, relativePath));
    if (!await file.exists()) return false;

    final content = await file.readAsString();
    return content.contains(expectedContent);
  }

  /// Gets file content as string
  static Future<String> getFileContent(
    Directory dir,
    String relativePath,
  ) async {
    final file = File(path.join(dir.path, relativePath));
    if (!await file.exists()) {
      throw FileSystemException('File not found', file.path);
    }
    return await file.readAsString();
  }

  /// Lists all generated files in a directory
  static Future<List<String>> listFiles(
    Directory dir, {
    bool recursive = true,
  }) async {
    final files = <String>[];
    await for (final entity in dir.list(recursive: recursive)) {
      if (entity is File) {
        final relativePath = path.relative(entity.path, from: dir.path);
        files.add(relativePath);
      }
    }
    return files..sort();
  }

  /// Validates that expected files exist
  static Future<bool> validateExpectedFiles(
    Directory dir,
    List<String> expectedFiles,
  ) async {
    for (final expectedFile in expectedFiles) {
      final file = File(path.join(dir.path, expectedFile));
      if (!await file.exists()) {
        print('Missing expected file: $expectedFile');
        return false;
      }
    }
    return true;
  }

  /// Validates pubspec.yaml content
  static Future<bool> validatePubspec(
    Directory dir,
    String expectedPackageName,
    List<String> expectedDependencies,
    List<String> expectedDevDependencies,
  ) async {
    try {
      final content = await getFileContent(dir, 'pubspec.yaml');

      // Check package name
      if (!content.contains('name: $expectedPackageName')) {
        print('Missing package name: $expectedPackageName');
        return false;
      }

      // Check dependencies
      for (final dep in expectedDependencies) {
        if (!content.contains(dep)) {
          print('Missing dependency: $dep');
          return false;
        }
      }

      // Check dev dependencies
      for (final dep in expectedDevDependencies) {
        if (!content.contains('dev_dependencies:') && content.contains(dep)) {
          print('Dev dependency section not found or missing: $dep');
          return false;
        }
      }

      return true;
    } catch (e) {
      print('Error validating pubspec.yaml: $e');
      return false;
    }
  }

  /// Validates Dart file syntax by checking for basic structure
  static Future<bool> validateDartFile(
    Directory dir,
    String relativePath, {
    List<String> expectedImports = const [],
    List<String> expectedClasses = const [],
    List<String> expectedMethods = const [],
  }) async {
    try {
      final content = await getFileContent(dir, relativePath);

      // Check imports
      for (final import in expectedImports) {
        if (!content.contains(import)) {
          print('Missing import: $import');
          return false;
        }
      }

      // Check classes
      for (final className in expectedClasses) {
        if (!content.contains('class $className') &&
            !content.contains('abstract class $className')) {
          print('Missing class: $className');
          return false;
        }
      }

      // Check methods
      for (final method in expectedMethods) {
        if (!content.contains(method)) {
          print('Missing method: $method');
          return false;
        }
      }

      return true;
    } catch (e) {
      print('Error validating Dart file $relativePath: $e');
      return false;
    }
  }

  /// Prints test results in a formatted way
  static void printTestResult(String testName, bool passed, {String? message}) {
    final icon = passed ? '✅' : '❌';
    final msg = message != null ? ' - $message' : '';
    print('$icon $testName$msg');
  }

  /// Runs a test with proper setup and cleanup
  static Future<T> runTest<T>(
    String testName,
    Future<T> Function() testBody,
  ) async {
    print('🧪 Running: $testName');
    try {
      final result = await testBody();
      printTestResult(testName, true);
      return result;
    } catch (e) {
      printTestResult(testName, false, message: e.toString());
      rethrow;
    }
  }
}

/// Custom exception for brick testing errors
class BrickTestException implements Exception {
  final String message;
  final String? brickName;

  const BrickTestException(this.message, [this.brickName]);

  @override
  String toString() {
    if (brickName != null) {
      return 'BrickTestException in $brickName: $message';
    }
    return 'BrickTestException: $message';
  }
}
