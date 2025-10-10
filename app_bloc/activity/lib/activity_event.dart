part of 'activity_bloc.dart';

@immutable
sealed class ActivityEvent {}

final class ActivityLoad extends ActivityEvent {
  final SemaphoreApi api;
  final int projectId;

  ActivityLoad(this.api, this.projectId);
}
