import 'dart:io';

/// Simple brick validation script without external dependencies
///
/// Usage: dart run test/bricks/validate_bricks.dart
void main() async {
  print('🧱 Validating mason bricks structure...\n');

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
      final brickDir = Directory('bricks/$brickName');
      if (!await brickDir.exists()) {
        print('❌ $brickName directory not found');
        allPassed = false;
        continue;
      }

      // Check brick.yaml exists
      final brickYaml = File('bricks/$brickName/brick.yaml');
      if (!await brickYaml.exists()) {
        print('❌ $brickName/brick.yaml not found');
        allPassed = false;
        continue;
      }

      // Validate brick.yaml content
      final yamlContent = await brickYaml.readAsString();
      if (!yamlContent.contains('name: $brickName')) {
        print('❌ $brickName/brick.yaml missing name field');
        allPassed = false;
        continue;
      }

      print('✅ $brickName/brick.yaml is valid');

      // Check __brick__ directory exists
      final brickTemplateDir = Directory('bricks/$brickName/__brick__');
      if (!await brickTemplateDir.exists()) {
        print('❌ $brickName/__brick__ directory not found');
        allPassed = false;
        continue;
      }

      // List and validate template files
      final templateFiles = <String>[];
      await for (final entity in brickTemplateDir.list(recursive: true)) {
        if (entity is File) {
          final relativePath = entity.path.substring(
            brickTemplateDir.path.length + 1,
          );
          templateFiles.add(relativePath);
        }
      }

      print('📁 Found ${templateFiles.length} template files');

      // Check for essential files based on brick type
      var hasEssentialFiles = true;
      switch (brickName) {
        case 'api_client':
          if (!templateFiles.any((f) => f.contains('pubspec.yaml'))) {
            print('❌ Missing pubspec.yaml template');
            hasEssentialFiles = false;
          }
          if (!templateFiles.any((f) => f.contains('openapi.yaml'))) {
            print('❌ Missing openapi.yaml template');
            hasEssentialFiles = false;
          }
          break;

        case 'simple_bloc':
          if (!templateFiles.any((f) => f.contains('bloc.dart'))) {
            print('❌ Missing bloc.dart template');
            hasEssentialFiles = false;
          }
          if (!templateFiles.any((f) => f.contains('event.dart'))) {
            print('❌ Missing event.dart template');
            hasEssentialFiles = false;
          }
          if (!templateFiles.any((f) => f.contains('state.dart'))) {
            print('❌ Missing state.dart template');
            hasEssentialFiles = false;
          }
          break;

        case 'repository':
          if (!templateFiles.any((f) => f.contains('repository.dart'))) {
            print('❌ Missing repository.dart template');
            hasEssentialFiles = false;
          }
          if (!templateFiles.any((f) => f.contains('models'))) {
            print('❌ Missing models directory');
            hasEssentialFiles = false;
          }
          break;
      }

      if (!hasEssentialFiles) {
        allPassed = false;
        continue;
      }

      // Check hooks directory if it exists
      final hooksDir = Directory('bricks/$brickName/hooks');
      if (await hooksDir.exists()) {
        final hookFiles = <String>[];
        await for (final entity in hooksDir.list()) {
          if (entity is File && entity.path.endsWith('.dart')) {
            final fileName = entity.path.split('/').last;
            hookFiles.add(fileName);
          }
        }

        if (hookFiles.isNotEmpty) {
          print('🔧 Found hooks: ${hookFiles.join(', ')}');

          // Validate hook files have basic structure
          for (final hookFile in hookFiles) {
            final hookPath = 'bricks/$brickName/hooks/$hookFile';
            final hookContent = await File(hookPath).readAsString();

            if (!hookContent.contains('void run(HookContext context)')) {
              print('⚠️  $hookFile may have invalid structure');
            }
          }
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

  // Check if mason is available
  print('\n🔧 Checking mason CLI...');
  try {
    final result = await Process.run('which', ['mason']);
    if (result.exitCode == 0) {
      print('✅ Mason CLI is available');

      // Try to list bricks
      final listResult = await Process.run('mason', ['list']);
      if (listResult.exitCode == 0) {
        print('✅ Mason bricks are accessible');

        final listOutput = listResult.stdout as String;
        for (final brickName in brickNames) {
          if (listOutput.contains(brickName)) {
            print('✅ $brickName is registered with mason');
          } else {
            print('⚠️  $brickName may not be properly registered');
          }
        }
      } else {
        print('⚠️  Mason list failed: ${listResult.stderr}');
      }
    } else {
      print(
        '⚠️  Mason CLI not found - install with: dart pub global activate mason_cli',
      );
    }
  } catch (e) {
    print('⚠️  Could not check mason CLI: $e');
  }

  print('\n📊 Final Result:');
  if (allPassed) {
    print('🎉 All brick validations passed!');
    print('✨ Mason bricks are ready for use');
    print('\n📝 Next steps:');
    print('   1. Run: mason get');
    print('   2. Test generation: mason make <brick_name>');
    print('   3. Run comprehensive tests when dependencies are resolved');
  } else {
    print('❌ Some validations failed');
    print('🔧 Please fix the issues above');
  }
}
