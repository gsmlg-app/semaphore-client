part of 'bloc.dart';

/// {@template {{name.snakeCase()}}_event}
/// Base class for all {{name.pascalCase()}} events.
/// {@endtemplate}
sealed class {{name.pascalCase()}}Event {
  /// {@macro {{name.snakeCase()}}_event}
  const {{name.pascalCase()}}Event();
}

/// {@template {{name.snakeCase()}}_event_init}
/// Event to initialize the {{name.pascalCase()}} feature.
/// {@endtemplate}
final class {{name.pascalCase()}}EventInit extends {{name.pascalCase()}}Event {
  /// {@macro {{name.snakeCase()}}_event_init}
  const {{name.pascalCase()}}EventInit();
}
