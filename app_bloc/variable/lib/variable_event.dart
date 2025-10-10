part of 'variable_bloc.dart';

@immutable
sealed class VariableEvent {}

final class VariableLoad extends VariableEvent {
  final SemaphoreApi api;
  final int projectId;

  VariableLoad(this.api, this.projectId);
}
