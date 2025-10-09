import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'event.dart';
part 'state.dart';

/// {@template {{name.snakeCase()}}_form_bloc}
/// {{name.pascalCase()}}FormBloc manages the state and events for the {{name.sentenceCase()}} form.
/// {@endtemplate}
class {{name.pascalCase()}}FormBloc extends Bloc<{{name.pascalCase()}}FormEvent, {{name.pascalCase()}}FormState> {
  /// {@macro {{name.snakeCase()}}_form_bloc}
  {{name.pascalCase()}}FormBloc() : super(const {{name.pascalCase()}}FormState()) {
    on<{{name.pascalCase()}}FieldChanged>(_onFieldChanged);
    on<{{name.pascalCase()}}FormSubmitted>(_onFormSubmitted);
    on<{{name.pascalCase()}}FormValidated>(_onFormValidated);
    on<{{name.pascalCase()}}FormReset>(_onFormReset);
  }

  void _onFieldChanged(
    {{name.pascalCase()}}FieldChanged event,
    Emitter<{{name.pascalCase()}}FormState> emit,
  ) {
    switch (event.field) {
      case 'email':
        emit(state.copyWith(email: event.value));
        break;
      case 'password':
        emit(state.copyWith(password: event.value));
        break;
      default:
        emit(state);
    }
    
    // Trigger validation after field change
    add(const {{name.pascalCase()}}FormValidated());
  }

  void _onFormSubmitted(
    {{name.pascalCase()}}FormSubmitted event,
    Emitter<{{name.pascalCase()}}FormState> emit,
  ) async {
    emit(state.copyWith(status: FormBlocStatus.inProgress));
    
    try {
      // TODO: Implement your form submission logic here
      // Example: await _repository.submitForm(_getFormData());
      
      emit(state.copyWith(status: FormBlocStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: FormBlocStatus.failure,
        error: e.toString(),
      ));
    }
  }

  void _onFormValidated(
    {{name.pascalCase()}}FormValidated event,
    Emitter<{{name.pascalCase()}}FormState> emit,
  ) {
    emit(state.copyWith(status: FormBlocStatus.validating));
    
    // TODO: Implement your validation logic here
    // Example: final isValid = _validateForm();
    
    emit(state.copyWith(status: FormBlocStatus.initial));
  }

  void _onFormReset(
    {{name.pascalCase()}}FormReset event,
    Emitter<{{name.pascalCase()}}FormState> emit,
  ) {
    emit(const {{name.pascalCase()}}FormState());
  }

  /// Helper method to get form data as a map
  Map<String, String?> getFormData() {
    return {
      'email': state.email,
      'password': state.password,
    };
  }
}