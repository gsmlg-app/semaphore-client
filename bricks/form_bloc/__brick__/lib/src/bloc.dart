import 'package:form_bloc/form_bloc.dart';

/// {@template {{name.snakeCase()}}_form_bloc}
/// {{name.pascalCase()}}FormBloc manages the state and events for the {{name.sentenceCase()}} form.
/// {@endtemplate}
class {{name.pascalCase()}}FormBloc extends FormBloc<String, String> {
  /// {@macro {{name.snakeCase()}}_form_bloc}
  {{name.pascalCase()}}FormBloc() : super(autoValidate: true) {
    // Add form fields
{{#each fields}}
    add{{#if (contains (snakeCase this) "_")}}{{pascalCase (replace (snakeCase this) "_" " ")}}{{else}}{{pascalCase this}}{{/if}}Field();
{{/each}}
  }

{{#each fields}}
  {{#if (eq (split this ":").[1] "text")}}
  late final TextFieldBloc {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "email")}}
  late final TextFieldBloc {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "password")}}
  late final TextFieldBloc {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "number")}}
  late final TextFieldBloc {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "boolean")}}
  late final BooleanFieldBloc {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "select")}}
  late final SelectFieldBloc<String, dynamic> {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "multiselect")}}
  late final MultiSelectFieldBloc<String, dynamic> {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "date")}}
  late final InputFieldBloc<DateTime, dynamic> {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "file")}}
  late final InputFieldBloc<dynamic, dynamic> {{split this ":".[0]}};
  {{else}}
  late final TextFieldBloc {{split this ":".[0]}};
  {{/if}}
{{/each}}

{{#each fields}}
  void add{{#if (contains (snakeCase (split this ":".[0])) "_")}}{{pascalCase (replace (snakeCase (split this ":".[0])) "_" " ")}}{{else}}{{pascalCase (split this ":".[0])}}{{/if}}Field() {
    {{#if (eq (split this ":").[1] "text")}}
    {{split this ":".[0]}} = TextFieldBloc(
      validators: [
        FieldBlocValidators.required,
      ],
    );
    {{else if (eq (split this ":").[1] "email")}}
    {{split this ":".[0]}} = TextFieldBloc(
      validators: [
        FieldBlocValidators.required,
        FieldBlocValidators.email,
      ],
    );
    {{else if (eq (split this ":").[1] "password")}}
    {{split this ":".[0]}} = TextFieldBloc(
      validators: [
        FieldBlocValidators.required,
        FieldBlocValidators.passwordMin6Chars,
      ],
    );
    {{else if (eq (split this ":").[1] "number")}}
    {{split this ":".[0]}} = TextFieldBloc(
      validators: [
        FieldBlocValidators.required,
        (value) {
          if (value.isEmpty) return null;
          if (double.tryParse(value) == null) {
            return 'Please enter a valid number';
          }
          return null;
        },
      ],
    );
    {{else if (eq (split this ":").[1] "boolean")}}
    {{split this ":".[0]}} = BooleanFieldBloc(
      validators: [
        FieldBlocValidators.required,
      ],
    );
    {{else if (eq (split this ":").[1] "select")}}
    {{#if (split this ":").[2]}}
    final selectItems = ['{{replace (split this ":").[2] "," "','"}}'];
    {{split this ":".[0]}} = SelectFieldBloc<String, dynamic>(
      items: selectItems,
      validators: [
        FieldBlocValidators.required,
      ],
    );
    {{else}}
    {{split this ":".[0]}} = SelectFieldBloc<String, dynamic>(
      validators: [
        FieldBlocValidators.required,
      ],
    );
    {{/if}}
    {{else if (eq (split this ":").[1] "multiselect")}}
    {{#if (split this ":").[2]}}
    final multiSelectItems = ['{{replace (split this ":").[2] "," "','"}}'];
    {{split this ":".[0]}} = MultiSelectFieldBloc<String, dynamic>(
      items: multiSelectItems,
      validators: [
        FieldBlocValidators.required,
      ],
    );
    {{else}}
    {{split this ":".[0]}} = MultiSelectFieldBloc<String, dynamic>(
      validators: [
        FieldBlocValidators.required,
      ],
    );
    {{/if}}
    {{else if (eq (split this ":").[1] "date")}}
    {{split this ":".[0]}} = InputFieldBloc<DateTime, dynamic>(
      initialValue: DateTime.now(),
      validators: [
        FieldBlocValidators.required,
      ],
    );
    {{else if (eq (split this ":").[1] "file")}}
    {{split this ":".[0]}} = InputFieldBloc<dynamic, dynamic>(
      initialValue: null,
      validators: [
        FieldBlocValidators.required,
      ],
    );
    {{else}}
    {{split this ":".[0]}} = TextFieldBloc(
      validators: [
        FieldBlocValidators.required,
      ],
    );
    {{/if}}
    addFieldBlocs(fieldBlocs: [{{split this ":".[0]}}]);
  }

{{/each}}
  @override
  void onSubmitting() async {
    try {
      // TODO: Implement your form submission logic here
      // Example: await _repository.submitForm(formData);
      
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));
      
      emitSuccess(successResponse: 'Form submitted successfully!');
    } catch (e) {
      emitFailure(failureResponse: e.toString());
    }
  }

  /// Helper method to get form data as a map
  Map<String, dynamic> getFormData() {
    return {
{{#each fields}}
      '{{split this ":".[0]}}': {{split this ":".[0]}}.value,
{{/each}}
    };
  }

  @override
  Future<void> close() {
{{#each fields}}
    {{split this ":".[0]}}.close();
{{/each}}
    return super.close();
  }
}
