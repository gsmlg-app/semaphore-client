part of 'schedule_bloc.dart';

@immutable
sealed class ScheduleState {}

final class ScheduleInitial extends ScheduleState {}

final class ScheduleLoading extends ScheduleState {}

final class ScheduleLoaded extends ScheduleState {
  final bool loading;
  final List<Schedule> schedules;

  ScheduleLoaded({required this.schedules, this.loading = false});
}

final class ScheduleError extends ScheduleState {
  final Object error;

  ScheduleError(this.error);
}
