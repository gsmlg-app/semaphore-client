part of 'bloc.dart';

/// {@template {{name.snakeCase()}}_form_state}
/// {{name.pascalCase()}}FormState represents the state of the {{name.sentenceCase()}} form.
/// {@endtemplate}
class {{name.pascalCase()}}FormState extends Equatable {
  /// {@macro {{name.snakeCase()}}_form_state}
  const {{name.pascalCase()}}FormState({
    this.status = FormBlocStatus.initial,
    this.error,
    this.email,
    this.password,
  });

  /// The current status of the form
  final FormBlocStatus status;

  /// Any error message from form submission
  final String? error;

  /// Email field value
  final String? email;

  /// Password field value
  final String? password;

  {{name.pascalCase()}}FormState copyWith({
    FormBlocStatus? status,
    String? error,
    String? email,
    String? password,
  }) {
    return {{name.pascalCase()}}FormState(
      status: status ?? this.status,
      error: error ?? this.error,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [status, error, email, password];

  @override
  String toString() => '{{name.pascalCase()}}FormState(status: $status, error: $error)';
}

/// Form submission status enum
enum FormBlocStatus {
  /// Form is in its initial state
  initial,

  /// Form is being validated
  validating,

  /// Form submission is in progress
  inProgress,

  /// Form was submitted successfully
  success,

  /// Form submission failed
  failure,
}