part of 'task_output_bloc.dart';

@immutable
sealed class TaskOutputEvent {}

final class TaskOutputLoad extends TaskOutputEvent {
  final SemaphoreApi api;
  final int projectId;
  final int taskId;

  TaskOutputLoad({
    required this.api,
    required this.projectId,
    required this.taskId,
  });
}
