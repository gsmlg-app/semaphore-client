import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:{{name.snakeCase()}}_bloc/{{name.snakeCase()}}_bloc.dart';

void main() {
  group('{{name.pascalCase()}}Bloc', () {
    late {{name.pascalCase()}}Bloc {{name.camelCase()}}Bloc;

    setUp(() {
      {{name.camelCase()}}Bloc = {{name.pascalCase()}}Bloc();
    });

    tearDown(() {
      {{name.camelCase()}}Bloc.close();
    });

    test('initial state is correct', () {
      expect({{name.camelCase()}}Bloc.state, equals({{name.pascalCase()}}State.initial()));
    });

    blocTest<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
      'emits loading and completed states when {{name.pascalCase()}}EventInit is added',
      build: () => {{name.camelCase()}}Bloc,
      act: (bloc) => bloc.add(const {{name.pascalCase()}}EventInit()),
      expect: () => [
        isA<{{name.pascalCase()}}State>()
          ..having((s) => s.status, 'status', equals({{name.pascalCase()}}Status.loading)),
        isA<{{name.pascalCase()}}State>()
          ..having((s) => s.status, 'status', equals({{name.pascalCase()}}Status.completed)),
      ],
    );

    blocTest<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
      'emits error state when initialization fails',
      build: () => {{name.camelCase()}}Bloc,
      act: (bloc) => bloc.add(const {{name.pascalCase()}}EventInit()),
      expect: () => [
        isA<{{name.pascalCase()}}State>()
          ..having((s) => s.status, 'status', equals({{name.pascalCase()}}Status.loading)),
        isA<{{name.pascalCase()}}State>()
          ..having((s) => s.status, 'status', equals({{name.pascalCase()}}Status.error))
          ..having((s) => s.error, 'error', isNotNull),
      ],
      errors: () => [isA<Exception>()],
    );
  });
}