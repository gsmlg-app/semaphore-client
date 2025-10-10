part of 'integration_bloc.dart';

@immutable
sealed class IntegrationEvent {}

final class IntegrationLoad extends IntegrationEvent {
  final SemaphoreApi api;
  final int projectId;

  IntegrationLoad(this.api, this.projectId);
}
