import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

void main() {
  group('Simple BLoC Brick Tests', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('simple_bloc_test_');
    });

    tearDown(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('generates BLoC package with correct structure', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'simple_bloc'));

      final generator = await MasonGenerator.fromBrick(brick);
      final files = await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'name': 'counter'},
      );

      // Check expected files are generated
      final expectedFiles = [
        'pubspec.yaml',
        'lib/counter_bloc.dart',
        'lib/src/bloc.dart',
        'lib/src/event.dart',
        'lib/src/state.dart',
        'test/counter_bloc_test.dart',
        '.gitignore',
        '.metadata',
        'README.md',
      ];

      for (final expectedFile in expectedFiles) {
        final file = File(path.join(tempDir.path, expectedFile));
        expect(
          await file.exists(),
          isTrue,
          reason: '$expectedFile should exist',
        );
      }
    });

    test('generates valid pubspec.yaml with correct dependencies', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'simple_bloc'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'name': 'counter'},
      );

      final pubspecFile = File(path.join(tempDir.path, 'pubspec.yaml'));
      expect(await pubspecFile.exists(), isTrue);

      final pubspecContent = await pubspecFile.readAsString();

      // Check package name
      expect(pubspecContent, contains('name: counter_bloc'));

      // Check dependencies
      expect(pubspecContent, contains('bloc: ^9.0.0'));
      expect(pubspecContent, contains('equatable: ^2.0.7'));

      // Check dev dependencies
      expect(pubspecContent, contains('bloc_test: ^10.0.0'));
      expect(pubspecContent, contains('mocktail: ^1.0.3'));
      expect(pubspecContent, contains('flutter_lints: ^6.0.0'));
    });

    test('generates correct BLoC class structure', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'simple_bloc'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'name': 'counter'},
      );

      final blocFile = File(path.join(tempDir.path, 'lib/src/bloc.dart'));
      expect(await blocFile.exists(), isTrue);

      final blocContent = await blocFile.readAsString();

      // Check class name and structure
      expect(
        blocContent,
        contains('class CounterBloc extends Bloc<CounterEvent, CounterState>'),
      );
      expect(blocContent, contains('part \'event.dart\';'));
      expect(blocContent, contains('part \'state.dart\';'));

      // Check constructor
      expect(
        blocContent,
        contains('CounterBloc() : super(CounterState.initial())'),
      );

      // Check event handler
      expect(
        blocContent,
        contains('on<CounterEventInit>(_onCounterEventInit);'),
      );
      expect(blocContent, contains('_onCounterEventInit'));
    });

    test('generates correct event class structure', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'simple_bloc'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'name': 'counter'},
      );

      final eventFile = File(path.join(tempDir.path, 'lib/src/event.dart'));
      expect(await eventFile.exists(), isTrue);

      final eventContent = await eventFile.readAsString();

      // Check sealed class
      expect(eventContent, contains('sealed class CounterEvent'));
      expect(eventContent, contains('part of \'bloc.dart\';'));

      // Check init event
      expect(
        eventContent,
        contains('final class CounterEventInit extends CounterEvent'),
      );
      expect(eventContent, contains('const CounterEventInit();'));
    });

    test('generates correct state class structure', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'simple_bloc'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'name': 'counter'},
      );

      final stateFile = File(path.join(tempDir.path, 'lib/src/state.dart'));
      expect(await stateFile.exists(), isTrue);

      final stateContent = await stateFile.readAsString();

      // Check enum
      expect(
        stateContent,
        contains('enum CounterStatus { initial, loading, completed, error }'),
      );
      expect(stateContent, contains('part of \'bloc.dart\';'));

      // Check state class
      expect(stateContent, contains('class CounterState extends Equatable'));
      expect(stateContent, contains('final CounterStatus status;'));
      expect(stateContent, contains('final String? error;'));

      // Check methods
      expect(stateContent, contains('factory CounterState.initial()'));
      expect(stateContent, contains('CounterState copyWith('));
      expect(stateContent, contains('@override'));
      expect(stateContent, contains('List<Object?> get props'));
    });

    test('generates correct main export file', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'simple_bloc'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'name': 'counter'},
      );

      final mainFile = File(path.join(tempDir.path, 'lib/counter_bloc.dart'));
      expect(await mainFile.exists(), isTrue);

      final mainContent = await mainFile.readAsString();
      expect(mainContent, contains('export \'src/bloc.dart\';'));
    });

    test('generates comprehensive test file', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'simple_bloc'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'name': 'counter'},
      );

      final testFile = File(
        path.join(tempDir.path, 'test/counter_bloc_test.dart'),
      );
      expect(await testFile.exists(), isTrue);

      final testContent = await testFile.readAsString();

      // Check imports
      expect(
        testContent,
        contains("import 'package:counter_bloc/counter_bloc.dart';"),
      );
      expect(
        testContent,
        contains("import 'package:bloc_test/bloc_test.dart';"),
      );
      expect(
        testContent,
        contains("import 'package:flutter_test/flutter_test.dart';"),
      );
      expect(testContent, contains("import 'package:mocktail/mocktail.dart';"));

      // Check test structure
      expect(testContent, contains('group(\'CounterBloc\', ()'));
      expect(testContent, contains('late CounterBloc counterBloc;'));
      expect(testContent, contains('setUp(()'));
      expect(testContent, contains('tearDown(()'));

      // Check tests
      expect(testContent, contains('test(\'initial state is correct\''));
      expect(testContent, contains('blocTest<CounterBloc, CounterState>('));
      expect(testContent, contains('emits loading and completed states'));
      expect(
        testContent,
        contains('emits error state when initialization fails'),
      );
    });

    test('handles different BLoC names correctly', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'simple_bloc'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'name': 'user_authentication'},
      );

      final pubspecFile = File(path.join(tempDir.path, 'pubspec.yaml'));
      final pubspecContent = await pubspecFile.readAsString();
      expect(pubspecContent, contains('name: user_authentication_bloc'));

      final blocFile = File(path.join(tempDir.path, 'lib/src/bloc.dart'));
      final blocContent = await blocFile.readAsString();
      expect(blocContent, contains('class UserAuthenticationBloc'));
      expect(blocContent, contains('UserAuthenticationEvent'));
      expect(blocContent, contains('UserAuthenticationState'));
    });

    test('validates name parameter', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'simple_bloc'));

      final generator = await MasonGenerator.fromBrick(brick);

      // Test with empty name (should throw)
      expect(
        () => generator.generate(
          DirectoryGeneratorTarget(tempDir),
          vars: {'name': ''},
        ),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('generates README with documentation', () async {
      final brick = Brick.path(path.join('..', '..', 'bricks', 'simple_bloc'));

      final generator = await MasonGenerator.fromBrick(brick);
      await generator.generate(
        DirectoryGeneratorTarget(tempDir),
        vars: {'name': 'counter'},
      );

      final readmeFile = File(path.join(tempDir.path, 'README.md'));
      expect(await readmeFile.exists(), isTrue);

      final readmeContent = await readmeFile.readAsString();
      expect(readmeContent, contains('# Counter BLoC'));
      expect(readmeContent, contains('## Usage'));
      expect(readmeContent, contains('## Installation'));
    });
  });
}
