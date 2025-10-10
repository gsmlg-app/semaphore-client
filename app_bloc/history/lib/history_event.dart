part of 'history_bloc.dart';

@immutable
sealed class HistoryEvent {}

final class HistoryLoad extends HistoryEvent {
  final SemaphoreApi api;
  final int projectId;

  HistoryLoad(this.api, this.projectId);
}
