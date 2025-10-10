part of 'team_bloc.dart';

@immutable
sealed class TeamEvent {}

final class TeamLoad extends TeamEvent {
  final SemaphoreApi api;
  final int projectId;

  TeamLoad(this.api, this.projectId);
}
