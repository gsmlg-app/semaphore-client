part of 'task_bloc.dart';

@immutable
sealed class TaskEvent {}

final class TaskLoad extends TaskEvent {
  final SemaphoreApi api;
  final int projectId;
  final int templateId;
  final Template? template;

  TaskLoad({
    required this.api,
    required this.projectId,
    required this.templateId,
    this.template,
  });
}
