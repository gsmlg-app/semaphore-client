import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';
import 'test_utils.dart';

void main() {
  group('Form BLoC Brick Tests', () {
    late Directory tempDir;
    late Brick brick;

    setUp(() async {
      tempDir = await BrickTestUtils.createTempDir('form_bloc');
      brick = await BrickTestUtils.loadBrick(
        path.join('..', '..', 'bricks', 'form_bloc'),
      );
    });

    tearDown(() async {
      await BrickTestUtils.cleanupTempDir(tempDir);
    });

    test('generates form bloc package with correct structure', () async {
      await BrickTestUtils.runTest('Form BLoC structure generation', () async {
        await BrickTestUtils.generateBrick(brick, tempDir, {
          'name': 'test_form',
          'output_directory': 'app_bloc',
        });

        final expectedFiles = [
          'pubspec.yaml',
          'lib/test_form_form_bloc.dart',
          'lib/src/bloc.dart',
          'lib/src/event.dart',
          'lib/src/state.dart',
          'test/test_form_form_bloc_test.dart',
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
        'Form BLoC pubspec.yaml validation',
        () async {
          await BrickTestUtils.generateBrick(brick, tempDir, {
            'name': 'test_form',
            'output_directory': 'app_bloc',
          });

          final expectedDependencies = [
            'bloc: ^8.1.4',
            'flutter_bloc: ^8.1.6',
            'equatable: ^2.0.5',
          ];

          final expectedDevDependencies = [
            'bloc_test: ^10.0.0',
            'mocktail: ^1.0.3',
          ];

final isValid = await BrickTestUtils.validatePubspec(
            tempDir,
            'test_form_form_bloc',
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
      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'test_form',
          'output_directory': 'app_bloc',
        },
      );

      final libFile = File(path.join(
        tempDir.path,
        'lib',
        'test_form_form_bloc.dart',
      ));
      expect(await libFile.exists(), isTrue);

      final libContent = await libFile.readAsString();
      expect(libContent, contains('library test_form_form_bloc'));
      expect(libContent, contains("export 'src/bloc.dart'"));
      expect(libContent, contains("export 'src/event.dart'"));
      expect(libContent, contains("export 'src/state.dart'"));
    });

    test('generates BLoC file with correct structure', () async {
      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'test_form',
          'output_directory': 'app_bloc',
        },
      );

      final blocFile = File(path.join(
        tempDir.path,
        'lib',
        'src',
        'bloc.dart',
      ));
      expect(await blocFile.exists(), isTrue);

      final blocContent = await blocFile.readAsString();
      expect(blocContent, contains('class TestFormFormBloc'));
      expect(blocContent,
          contains('extends Bloc<TestFormFormEvent, TestFormFormState>'));
      expect(blocContent, contains('on<TestFormFieldChanged>'));
      expect(blocContent, contains('on<TestFormFormSubmitted>'));
      expect(blocContent, contains('on<TestFormFormValidated>'));
      expect(blocContent, contains('on<TestFormFormReset>'));
      expect(blocContent, contains('_onFieldChanged'));
      expect(blocContent, contains('_onFormSubmitted'));
      expect(blocContent, contains('_onFormValidated'));
      expect(blocContent, contains('_onFormReset'));
      expect(blocContent, contains('getFormData'));
    });

    test('generates event file with correct structure', () async {
      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'test_form',
          'output_directory': 'app_bloc',
        },
      );

      final eventFile = File(path.join(
        tempDir.path,
        'lib',
        'src',
        'event.dart',
      ));
      expect(await eventFile.exists(), isTrue);

      final eventContent = await eventFile.readAsString();
      expect(eventContent, contains('class TestFormFormEvent'));
      expect(eventContent, contains('class TestFormFieldChanged'));
      expect(eventContent, contains('class TestFormFormSubmitted'));
      expect(eventContent, contains('class TestFormFormValidated'));
      expect(eventContent, contains('class TestFormFormReset'));
      expect(eventContent, contains('final String field'));
      expect(eventContent, contains('final String value'));
    });

    test('generates state file with correct structure', () async {
      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'test_form',
          'output_directory': 'app_bloc',
        },
      );

      final stateFile = File(path.join(
        tempDir.path,
        'lib',
        'src',
        'state.dart',
      ));
      expect(await stateFile.exists(), isTrue);

      final stateContent = await stateFile.readAsString();
      expect(stateContent, contains('class TestFormFormState'));
      expect(stateContent, contains('extends Equatable'));
      expect(stateContent, contains('enum FormBlocStatus'));
      expect(stateContent, contains('initial'));
      expect(stateContent, contains('validating'));
      expect(stateContent, contains('inProgress'));
      expect(stateContent, contains('success'));
      expect(stateContent, contains('failure'));
      expect(stateContent, contains('copyWith'));
      expect(stateContent, contains('final FormBlocStatus status'));
      expect(stateContent, contains('final String? error'));
      expect(stateContent, contains('final String? email'));
      expect(stateContent, contains('final String? password'));
    });

    test('handles different naming conventions', () async {
      await BrickTestUtils.runTest(
        'Form BLoC with different naming conventions',
        () async {
          await BrickTestUtils.generateBrick(brick, tempDir, {
            'name': 'user_registration',
            'output_directory': 'app_bloc',
          });

          final blocFile = File(path.join(
            tempDir.path,
            'lib',
            'src',
            'bloc.dart',
          ));

          final blocContent = await blocFile.readAsString();
          expect(blocContent, contains('class UserRegistrationFormBloc'));
          expect(blocContent,
              contains('extends Bloc<UserRegistrationFormEvent, UserRegistrationFormState>'));
          expect(blocContent, contains('on<UserRegistrationFieldChanged>'));
          expect(blocContent, contains('on<UserRegistrationFormSubmitted>'));
          expect(blocContent, contains('on<UserRegistrationFormValidated>'));
          expect(blocContent, contains('on<UserRegistrationFormReset>'));
        },
      );
    });

    test('generates test file with correct structure', () async {
      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {
          'name': 'test_form',
          'output_directory': 'app_bloc',
        },
      );

      final testFile = File(path.join(
        tempDir.path,
        'test',
        'test_form_form_bloc_test.dart',
      ));
      expect(await testFile.exists(), isTrue);

      final testContent = await testFile.readAsString();
      expect(testContent, contains("import 'package:test/test.dart'"));
      expect(testContent, contains("import 'package:bloc_test/bloc_test.dart'"));
      expect(testContent, contains('group(TestFormFormBloc'));
    });
  });
}