part of 'task_output_bloc.dart';

@immutable
sealed class TaskOutputState {}

final class TaskOutputInitial extends TaskOutputState {}

final class TaskOutputLoading extends TaskOutputState {}

final class TaskOutputLoadDone extends TaskOutputState {
  final List<TaskOutput> output;
  final Task task;

  TaskOutputLoadDone(this.task, this.output);
}

final class TaskOutputError extends TaskOutputState {
  final Object error;

  TaskOutputError(this.error);
}
