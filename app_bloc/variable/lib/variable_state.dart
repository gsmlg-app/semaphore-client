part of 'variable_bloc.dart';

@immutable
sealed class VariableState {}

final class VariableInitial extends VariableState {}

final class VariableLoading extends VariableState {}

final class VariableLoaded extends VariableState {
  final bool loading;
  final List<Environment> variables;

  VariableLoaded({required this.variables, this.loading = false});
}

final class VariableError extends VariableState {
  final Object error;

  VariableError(this.error);
}
