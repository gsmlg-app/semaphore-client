part of 'activity_bloc.dart';

@immutable
sealed class ActivityState {}

final class ActivityInitial extends ActivityState {}

final class ActivityLoading extends ActivityState {}

final class ActivityLoaded extends ActivityState {
  final List<Event> activities;
  final bool loading;

  ActivityLoaded({required this.activities, this.loading = false});
}

final class ActivityError extends ActivityState {
  final Object error;

  ActivityError(this.error);
}
