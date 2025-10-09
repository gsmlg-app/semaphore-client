import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'event.dart';
part 'state.dart';

/// {@template {{name.snakeCase()}}_bloc}
/// {{name.pascalCase()}}BLoC handles {{name.sentenceCase()}} related business logic.
/// {@endtemplate}
class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  /// {@macro {{name.snakeCase()}}_bloc}
  {{name.pascalCase()}}Bloc() : super({{name.pascalCase()}}State.initial()) {
    on<{{name.pascalCase()}}EventInit>(_on{{name.pascalCase()}}EventInit);
  }

  /// Handles initialization event
  Future<void> _on{{name.pascalCase()}}EventInit(
    {{name.pascalCase()}}EventInit event,
    Emitter<{{name.pascalCase()}}State> emitter,
  ) async {
    try {
      emitter(state.copyWith(status: {{name.pascalCase()}}Status.loading));

      // TODO: Add your initialization logic here
      await Future.delayed(const Duration(milliseconds: 100)); // Simulate async work

      emitter(state.copyWith(status: {{name.pascalCase()}}Status.completed));
    } catch (error, stackTrace) {
      emitter(state.copyWith(
        status: {{name.pascalCase()}}Status.error,
        error: error.toString(),
      ));
      // TODO: Add proper error logging
      addError(error, stackTrace);
    }
  }
}
