/// Repository-specific exceptions

/// {@template {{name.snakeCase()}}_exception}
/// Base exception for {{name.sentenceCase()}} repository operations.
/// {@endtemplate}
abstract class {{model_name.pascalCase()}}Exception implements Exception {
  /// {@macro {{name.snakeCase()}}_exception}
  const {{model_name.pascalCase()}}Exception(this.message, [this.error]);

  /// Exception message
  final String message;

  /// Optional underlying error
  final Object? error;

  @override
  String toString() => '{{model_name.pascalCase()}}Exception: $message';
}

/// {@template {{name.snakeCase()}}_not_found_exception}
/// Thrown when a {{name.sentenceCase()}} is not found.
/// {@endtemplate}
class {{model_name.pascalCase()}}NotFoundException extends {{model_name.pascalCase()}}Exception {
  /// {@macro {{name.snakeCase()}}_not_found_exception}
  const {{model_name.pascalCase()}}NotFoundException(String id)
      : super('{{model_name.pascalCase()}} with id $id not found');
}

/// {@template {{name.snakeCase()}}_network_exception}
/// Thrown when a network error occurs.
/// {@endtemplate}
class {{model_name.pascalCase()}}NetworkException extends {{model_name.pascalCase()}}Exception {
  /// {@macro {{name.snakeCase()}}_network_exception}
  const {{model_name.pascalCase()}}NetworkException(String message, [Object? error])
      : super(message, error);
}

/// {@template {{name.snakeCase()}}_validation_exception}
/// Thrown when {{name.sentenceCase()}} data validation fails.
/// {@endtemplate}
class {{model_name.pascalCase()}}ValidationException extends {{model_name.pascalCase()}}Exception {
  /// {@macro {{name.snakeCase()}}_validation_exception}
  const {{model_name.pascalCase()}}ValidationException(String message, [Object? error])
      : super(message, error);
}

/// {@template {{name.snakeCase()}}_storage_exception}
/// Thrown when local storage operations fail.
/// {@endtemplate}
class {{model_name.pascalCase()}}StorageException extends {{model_name.pascalCase()}}Exception {
  /// {@macro {{name.snakeCase()}}_storage_exception}
  const {{model_name.pascalCase()}}StorageException(String message, [Object? error])
      : super(message, error);
}