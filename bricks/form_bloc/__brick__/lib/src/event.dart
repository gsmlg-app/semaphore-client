part of 'bloc.dart';

/// {@template {{name.snakeCase()}}_form_event}
/// {{name.pascalCase()}}FormEvent represents events that can occur in the {{name.sentenceCase()}} form.
/// {@endtemplate}
abstract class {{name.pascalCase()}}FormEvent extends Equatable {
  /// {@macro {{name.snakeCase()}}_form_event}
  const {{name.pascalCase()}}FormEvent();

  @override
  List<Object?> get props => [];
}

/// Event triggered when a form field value changes
class {{name.pascalCase()}}FieldChanged extends {{name.pascalCase()}}FormEvent {
  /// {@macro {{name.snakeCase()}}_field_changed}
  const {{name.pascalCase()}}FieldChanged(this.field, this.value);

  /// The field name that changed
  final String field;

  /// The new value for the field
  final String value;

  @override
  List<Object?> get props => [field, value];
}

/// Event triggered when the form is submitted
class {{name.pascalCase()}}FormSubmitted extends {{name.pascalCase()}}FormEvent {
  /// {@macro {{name.snakeCase()}}_form_submitted}
  const {{name.pascalCase()}}FormSubmitted();
}

/// Event triggered when form validation should be performed
class {{name.pascalCase()}}FormValidated extends {{name.pascalCase()}}FormEvent {
  /// {@macro {{name.snakeCase()}}_form_validated}
  const {{name.pascalCase()}}FormValidated();
}

/// Event triggered when the form is reset
class {{name.pascalCase()}}FormReset extends {{name.pascalCase()}}FormEvent {
  /// {@macro {{name.snakeCase()}}_form_reset}
  const {{name.pascalCase()}}FormReset();
}