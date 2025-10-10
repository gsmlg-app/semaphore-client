part of 'repository_bloc.dart';

@immutable
sealed class RepositoryEvent {}

final class RepositoryLoad extends RepositoryEvent {
  final SemaphoreApi api;
  final int projectId;

  RepositoryLoad(this.api, this.projectId);
}
