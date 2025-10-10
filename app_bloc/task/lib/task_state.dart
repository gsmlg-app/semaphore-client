part of 'task_bloc.dart';

@immutable
sealed class TaskState {}

final class TaskInitial extends TaskState {}

final class TaskLoading extends TaskState {
  final Template? template;
  TaskLoading({
    this.template,
  });
}

final class TaskLoaded extends TaskState {
  final Template template;
  final List<Task> taskList;
  final bool loading;

  TaskLoaded({
    required this.taskList,
    required this.template,
    this.loading = false,
  });
}

final class TaskError extends TaskState {
  final Object error;

  TaskError(this.error);
}
