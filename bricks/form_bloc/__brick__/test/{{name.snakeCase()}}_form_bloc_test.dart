import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{name.snakeCase()}}_form_bloc/{{name.snakeCase()}}_form_bloc.dart';

void main() {
  group('{{name.pascalCase()}}FormBloc', () {
    late {{name.pascalCase()}}FormBloc formBloc;

    setUp(() {
      formBloc = {{name.pascalCase()}}FormBloc();
    });

    tearDown(() {
      formBloc.close();
    });

    test('initial state is correct', () {
      expect(formBloc.state.status, FormBlocStatus.initial);
      expect(formBloc.state.email, null);
      expect(formBloc.state.password, null);
      expect(formBloc.state.error, null);
    });

    group('field changes', () {
      blocTest<{{name.pascalCase()}}FormBloc, {{name.pascalCase()}}FormState>(
        'emits updated state when email field changes',
        build: () => formBloc,
        act: (bloc) => bloc.add(const {{name.pascalCase()}}FieldChanged('email', 'test@example.com')),
        expect: () => [
          {{name.pascalCase()}}FormState(email: 'test@example.com'),
        ],
      );

      blocTest<{{name.pascalCase()}}FormBloc, {{name.pascalCase()}}FormState>(
        'emits updated state when password field changes',
        build: () => formBloc,
        act: (bloc) => bloc.add(const {{name.pascalCase()}}FieldChanged('password', 'password123')),
        expect: () => [
          {{name.pascalCase()}}FormState(password: 'password123'),
        ],
      );
    });

    group('form validation', () {
      blocTest<{{name.pascalCase()}}FormBloc, {{name.pascalCase()}}FormState>(
        'emits validating state when validation is triggered',
        build: () => formBloc,
        act: (bloc) => bloc.add(const {{name.pascalCase()}}FormValidated()),
        expect: () => [
          {{name.pascalCase()}}FormState(status: FormBlocStatus.validating),
          {{name.pascalCase()}}FormState(status: FormBlocStatus.initial),
        ],
      );
    });

    group('form submission', () {
      blocTest<{{name.pascalCase()}}FormBloc, {{name.pascalCase()}}FormState>(
        'emits inProgress and success when form is submitted successfully',
        build: () => formBloc,
        act: (bloc) => bloc.add(const {{name.pascalCase()}}FormSubmitted()),
        expect: () => [
          {{name.pascalCase()}}FormState(status: FormBlocStatus.inProgress),
          {{name.pascalCase()}}FormState(status: FormBlocStatus.success),
        ],
      );
    });

    group('form reset', () {
      blocTest<{{name.pascalCase()}}FormBloc, {{name.pascalCase()}}FormState>(
        'resets form to initial state',
        build: () => formBloc,
        setUp: () {
          formBloc.add(const {{name.pascalCase()}}FieldChanged('email', 'test@example.com'));
          formBloc.add(const {{name.pascalCase()}}FieldChanged('password', 'password123'));
        },
        act: (bloc) => bloc.add(const {{name.pascalCase()}}FormReset()),
        expect: () => [
          const {{name.pascalCase()}}FormState(),
        ],
      );
    });
  });
}