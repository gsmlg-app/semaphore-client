import 'package:form_bloc/form_bloc.dart';

/// {@template {{name.snakeCase()}}_form_state_extensions}
/// Extensions and additional state management for {{name.pascalCase()}}FormBloc.
/// {@endtemplate}
class {{name.pascalCase()}}FormStateExtensions {
  const {{name.pascalCase()}}FormStateExtensions();

  /// Check if form is valid and ready for submission
  static bool isFormValid(FormBlocState state) {
    return state.isValid();
  }

  /// Check if form is currently submitting
  static bool isSubmitting(FormBlocState state) {
    return state is FormBlocSubmitting;
  }

  /// Check if form has validation errors
  static bool hasErrors(FormBlocState state) {
    final fieldBlocs = state.fieldBlocs();
    if (fieldBlocs == null) return false;
    
    return fieldBlocs.values.any((fieldBloc) => !fieldBloc.state.isValid);
  }

  /// Get error message for a specific field
  static String? getFieldError(FormBlocState state, String fieldName) {
    final fieldBlocs = state.fieldBlocs();
    if (fieldBlocs == null) return null;
    
    final fieldBloc = fieldBlocs[fieldName];
    if (fieldBloc?.state.isValid == false) {
      final fieldState = fieldBloc!.state;
      if (fieldState is FieldBlocState) {
        return fieldState.error?.toString();
      }
    }
    return null;
  }

  /// Get all form errors as a map
  static Map<String, String> getAllErrors(FormBlocState state) {
    final errors = <String, String>{};
    final fieldBlocs = state.fieldBlocs();
    
    if (fieldBlocs != null) {
      for (final entry in fieldBlocs.entries) {
        final fieldName = entry.key;
        final fieldBloc = entry.value;
        
        if (!fieldBloc.state.isValid) {
          final fieldState = fieldBloc.state;
          if (fieldState is FieldBlocState && fieldState.error != null) {
            errors[fieldName] = fieldState.error.toString();
          }
        }
      }
    }
    
    return errors;
  }
}