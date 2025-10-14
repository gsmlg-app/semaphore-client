import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_bloc/form_bloc.dart';
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
      expect(formBloc.state.isValid, isFalse);
      expect(formBloc.state.isSubmitting, isFalse);
      expect(formBloc.state.hasErrors, isFalse);
    });

{{#each fields}}
    {{#if (eq (split this ":").[1] "text")}}
    group('{{split this ":".[0]}} field validation', () {
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is empty',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue(''),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits valid state when {{split this ":".[0]}} has content',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue('Some text'),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            bloc.{{split this ":".[0]}}.state.isValid
          ),
        ],
      );
    });
    {{else if (eq (split this ":").[1] "email")}}
    group('{{split this ":".[0]}} field validation', () {
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is empty',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue(''),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is invalid format',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue('invalid-email'),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits valid state when {{split this ":".[0]}} is valid format',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue('test@example.com'),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            bloc.{{split this ":".[0]}}.state.isValid
          ),
        ],
      );
    });
    {{else if (eq (split this ":").[1] "password")}}
    group('{{split this ":".[0]}} field validation', () {
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is empty',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue(''),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is too short',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue('123'),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits valid state when {{split this ":".[0]}} meets requirements',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue('password123'),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            bloc.{{split this ":".[0]}}.state.isValid
          ),
        ],
      );
    });
    {{else if (eq (split this ":").[1] "number")}}
    group('{{split this ":".[0]}} field validation', () {
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is empty',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue(''),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is not a number',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue('not-a-number'),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits valid state when {{split this ":".[0]}} is a valid number',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue('123.45'),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            bloc.{{split this ":".[0]}}.state.isValid
          ),
        ],
      );
    });
    {{else if (eq (split this ":").[1] "boolean")}}
    group('{{split this ":".[0]}} field validation', () {
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is false',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue(false),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits valid state when {{split this ":".[0]}} is true',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue(true),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            bloc.{{split this ":".[0]}}.state.isValid
          ),
        ],
      );
    });
    {{else if (eq (split this ":").[1] "select")}}
    group('{{split this ":".[0]}} field validation', () {
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is null',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue(null),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      {{#if (split this ":").[2]}}
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits valid state when {{split this ":".[0]}} has a selected value',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue('{{split (split this ":").[2] ",".[0]}}'),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            bloc.{{split this ":".[0]}}.state.isValid
          ),
        ],
      );
      {{else}}
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits valid state when {{split this ":".[0]}} has a selected value',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue('some-value'),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            bloc.{{split this ":".[0]}}.state.isValid
          ),
        ],
      );
      {{/if}}
    });
    {{else if (eq (split this ":").[1] "multiselect")}}
    group('{{split this ":".[0]}} field validation', () {
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is empty',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue([]),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits valid state when {{split this ":".[0]}} has selected values',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue(['value1', 'value2']),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            bloc.{{split this ":".[0]}}.state.isValid
          ),
        ],
      );
    });
    {{else if (eq (split this ":").[1] "date")}}
    group('{{split this ":".[0]}} field validation', () {
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits valid state when {{split this ":".[0]}} has a date value',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue(DateTime.now()),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            bloc.{{split this ":".[0]}}.state.isValid
          ),
        ],
      );
    });
    {{else if (eq (split this ":").[1] "file")}}
    group('{{split this ":".[0]}} field validation', () {
      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits invalid state when {{split this ":".[0]}} is null',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue(null),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isValid == false && 
            bloc.{{split this ":".[0]}}.state.isInvalid
          ),
        ],
      );

      blocTest<{{../name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits valid state when {{split this ":".[0]}} has a value',
        build: () => formBloc,
        act: (bloc) => bloc.{{split this ":".[0]}}.updateValue('file-data'),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            bloc.{{split this ":".[0]}}.state.isValid
          ),
        ],
      );
    });
    {{/if}}
{{/each}}

    group('form submission', () {
      blocTest<{{name.pascalCase()}}FormBloc, FormBlocState<String, String>>(
        'emits submitting and success when form is submitted successfully',
        build: () => formBloc,
        setUp: () {
{{#each fields}}
          {{#if (eq (split this ":").[1] "text")}}
          formBloc.{{split this ":".[0]}}.updateValue('Sample text');
          {{else if (eq (split this ":").[1] "email")}}
          formBloc.{{split this ":".[0]}}.updateValue('test@example.com');
          {{else if (eq (split this ":").[1] "password")}}
          formBloc.{{split this ":".[0]}}.updateValue('password123');
          {{else if (eq (split this ":").[1] "number")}}
          formBloc.{{split this ":".[0]}}.updateValue('123');
          {{else if (eq (split this ":").[1] "boolean")}}
          formBloc.{{split this ":".[0]}}.updateValue(true);
          {{else if (eq (split this ":").[1] "select")}}
          {{#if (split this ":").[2]}}
          formBloc.{{split this ":".[0]}}.updateValue('{{split (split this ":").[2] ",".[0]}}');
          {{else}}
          formBloc.{{split this ":".[0]}}.updateValue('some-value');
          {{/if}}
          {{else if (eq (split this ":").[1] "multiselect")}}
          formBloc.{{split this ":".[0]}}.updateValue(['value1', 'value2']);
          {{else if (eq (split this ":").[1] "date")}}
          formBloc.{{split this ":".[0]}}.updateValue(DateTime.now());
          {{else if (eq (split this ":").[1] "file")}}
          formBloc.{{split this ":".[0]}}.updateValue('file-data');
          {{else}}
          formBloc.{{split this ":".[0]}}.updateValue('default-value');
          {{/if}}
{{/each}}
        },
        act: (bloc) => bloc.submit(),
        expect: () => [
          predicate<FormBlocState<String, String>>((state) => 
            state.isSubmitting
          ),
          predicate<FormBlocState<String, String>>((state) => 
            state.isSuccess && 
            state.successResponse == 'Form submitted successfully!'
          ),
        ],
      );
    });

    test('getFormData returns correct map', () {
{{#each fields}}
      {{#if (eq (split this ":").[1] "text")}}
      formBloc.{{split this ":".[0]}}.updateValue('Sample text');
      {{else if (eq (split this ":").[1] "email")}}
      formBloc.{{split this ":".[0]}}.updateValue('test@example.com');
      {{else if (eq (split this ":").[1] "password")}}
      formBloc.{{split this ":".[0]}}.updateValue('password123');
      {{else if (eq (split this ":").[1] "number")}}
      formBloc.{{split this ":".[0]}}.updateValue('123');
      {{else if (eq (split this ":").[1] "boolean")}}
      formBloc.{{split this ":".[0]}}.updateValue(true);
      {{else if (eq (split this ":").[1] "select")}}
      {{#if (split this ":").[2]}}
      formBloc.{{split this ":".[0]}}.updateValue('{{split (split this ":").[2] ",".[0]}}');
      {{else}}
      formBloc.{{split this ":".[0]}}.updateValue('some-value');
      {{/if}}
      {{else if (eq (split this ":").[1] "multiselect")}}
      formBloc.{{split this ":".[0]}}.updateValue(['value1', 'value2']);
      {{else if (eq (split this ":").[1] "date")}}
      formBloc.{{split this ":".[0]}}.updateValue(DateTime.now());
      {{else if (eq (split this ":").[1] "file")}}
      formBloc.{{split this ":".[0]}}.updateValue('file-data');
      {{else}}
      formBloc.{{split this ":".[0]}}.updateValue('default-value');
      {{/if}}
{{/each}}
      
      final formData = formBloc.getFormData();
      
{{#each fields}}
      expect(formData['{{split this ":".[0]}}'], isNotNull);
{{/each}}
    });

    test('form state extensions work correctly', () {
      // Test initial state
      expect({{name.pascalCase()}}FormStateExtensions.isFormValid(formBloc.state), isFalse);
      expect({{name.pascalCase()}}FormStateExtensions.isSubmitting(formBloc.state), isFalse);
      expect({{name.pascalCase()}}FormStateExtensions.hasErrors(formBloc.state), isFalse);
      
      // Test with valid data
{{#each fields}}
      {{#if (eq (split this ":").[1] "text")}}
      formBloc.{{split this ":".[0]}}.updateValue('Sample text');
      {{else if (eq (split this ":").[1] "email")}}
      formBloc.{{split this ":".[0]}}.updateValue('test@example.com');
      {{else if (eq (split this ":").[1] "password")}}
      formBloc.{{split this ":".[0]}}.updateValue('password123');
      {{else if (eq (split this ":").[1] "number")}}
      formBloc.{{split this ":".[0]}}.updateValue('123');
      {{else if (eq (split this ":").[1] "boolean")}}
      formBloc.{{split this ":".[0]}}.updateValue(true);
      {{else if (eq (split this ":").[1] "select")}}
      {{#if (split this ":").[2]}}
      formBloc.{{split this ":".[0]}}.updateValue('{{split (split this ":").[2] ",".[0]}}');
      {{else}}
      formBloc.{{split this ":".[0]}}.updateValue('some-value');
      {{/if}}
      {{else if (eq (split this ":").[1] "multiselect")}}
      formBloc.{{split this ":".[0]}}.updateValue(['value1', 'value2']);
      {{else if (eq (split this ":").[1] "date")}}
      formBloc.{{split this ":".[0]}}.updateValue(DateTime.now());
      {{else if (eq (split this ":").[1] "file")}}
      formBloc.{{split this ":".[0]}}.updateValue('file-data');
      {{else}}
      formBloc.{{split this ":".[0]}}.updateValue('default-value');
      {{/if}}
{{/each}}
      expect({{name.pascalCase()}}FormStateExtensions.isFormValid(formBloc.state), isTrue);
    });
  });
}
