part of 'schedule_bloc.dart';

@immutable
sealed class ScheduleEvent {}

final class ScheduleLoad extends ScheduleEvent {
  final SemaphoreApi api;
  final int projectId;

  ScheduleLoad(this.api, this.projectId);
}
