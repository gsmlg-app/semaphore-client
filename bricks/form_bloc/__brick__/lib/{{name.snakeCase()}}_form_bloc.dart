/// {{name.pascalCase()}} Form BLoC - Form Validation and Submission
///
/// This library provides a complete BLoC implementation for managing {{name.sentenceCase()}} forms
/// with validation, submission, and error handling.
///
/// Usage:
/// ```dart
/// // Create the BLoC
/// final {{name.camelCase()}}FormBloc = {{name.pascalCase()}}FormBloc();
///
/// // Provide it to your widget tree
/// BlocProvider(
///   create: (context) => {{name.camelCase()}}FormBloc,
///   child: {{name.pascalCase()}}FormScreen(),
/// )
/// ```
library {{name.snakeCase()}}_form_bloc;

export 'src/bloc.dart';
export 'src/event.dart';
export 'src/state.dart';