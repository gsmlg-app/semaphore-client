import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

/// Simple test runner that doesn't require full project dependencies
///
/// Usage: dart run test/bricks/simple_test_runner.dart
void main() async {
  print('🧱 Running simple mason brick validation...\n');

  final bricksDir = Directory('bricks');
  if (!await bricksDir.exists()) {
    print('❌ Bricks directory not found');
    return;
  }

  final brickNames = ['api_client', 'simple_bloc', 'repository'];
  var allPassed = true;

  for (final brickName in brickNames) {
    print('🔍 Validating $brickName brick...');

    try {
      // Check brick directory exists
      final brickDir = Directory(path.join('bricks', brickName));
      if (!await brickDir.exists()) {
        print('❌ $brickName directory not found');
        allPassed = false;
        continue;
      }

      // Check brick.yaml exists
      final brickYaml = File(path.join(brickDir.path, 'brick.yaml'));
      if (!await brickYaml.exists()) {
        print('❌ $brickName/brick.yaml not found');
        allPassed = false;
        continue;
      }

      // Try to load the brick
      final brick = Brick.fromBrickYaml(brickYaml.path);
      print('✅ $brickName brick loaded successfully');

      // Check __brick__ directory exists
      final brickTemplateDir = Directory(path.join(brickDir.path, '__brick__'));
      if (!await brickTemplateDir.exists()) {
        print('❌ $brickName/__brick__ directory not found');
        allPassed = false;
        continue;
      }

      // List template files
      final templateFiles = <String>[];
      await for (final entity in brickTemplateDir.list(recursive: true)) {
        if (entity is File) {
          final relativePath = path.relative(
            entity.path,
            from: brickTemplateDir.path,
          );
          templateFiles.add(relativePath);
        }
      }

      print('📁 Found ${templateFiles.length} template files:');
      for (final file in templateFiles.take(5)) {
        print('   - $file');
      }
      if (templateFiles.length > 5) {
        print('   ... and ${templateFiles.length - 5} more');
      }

      // Check hooks directory if it exists
      final hooksDir = Directory(path.join(brickDir.path, 'hooks'));
      if (await hooksDir.exists()) {
        final hookFiles = <String>[];
        await for (final entity in hooksDir.list()) {
          if (entity is File && entity.path.endsWith('.dart')) {
            final fileName = path.basename(entity.path);
            hookFiles.add(fileName);
          }
        }

        if (hookFiles.isNotEmpty) {
          print('🔧 Found hooks: ${hookFiles.join(', ')}');
        }
      }

      print('✅ $brickName validation passed\n');
    } catch (e) {
      print('❌ $brickName validation failed: $e\n');
      allPassed = false;
    }
  }

  // Check mason.yaml configuration
  print('🔧 Checking mason.yaml configuration...');
  final masonYaml = File('mason.yaml');
  if (await masonYaml.exists()) {
    final content = await masonYaml.readAsString();

    for (final brickName in brickNames) {
      if (content.contains('path: bricks/$brickName')) {
        print('✅ $brickName registered in mason.yaml');
      } else {
        print('❌ $brickName not found in mason.yaml');
        allPassed = false;
      }
    }
  } else {
    print('❌ mason.yaml not found');
    allPassed = false;
  }

  print('\n📊 Final Result:');
  if (allPassed) {
    print('🎉 All brick validations passed!');
    print('✨ Mason bricks are ready for use');
  } else {
    print('❌ Some validations failed');
    print('🔧 Please fix the issues above');
  }
}
