part of 'variable_bloc.dart';

@immutable
sealed class VariableEvent {}

final class VariableLoad extends VariableEvent {
  final SemaphoreApi api;
  final int projectId;

  VariableLoad(this.api, this.projectId);
}

final class VariableCreate extends VariableEvent {
  final SemaphoreApi api;
  final int projectId;
  final EnvironmentRequest environment;

  VariableCreate(this.api, this.projectId, this.environment);
}

final class VariableUpdate extends VariableEvent {
  final SemaphoreApi api;
  final int projectId;
  final int environmentId;
  final EnvironmentRequest environment;

  VariableUpdate(
    this.api,
    this.projectId,
    this.environmentId,
    this.environment,
  );
}

final class VariableDelete extends VariableEvent {
  final SemaphoreApi api;
  final int projectId;
  final int environmentId;

  VariableDelete(this.api, this.projectId, this.environmentId);
}
