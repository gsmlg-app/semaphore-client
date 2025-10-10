part of 'key_store_bloc.dart';

@immutable
sealed class KeyStoreEvent {}

final class KeyStoreLoad extends KeyStoreEvent {
  final SemaphoreApi api;
  final int projectId;

  KeyStoreLoad(this.api, this.projectId);
}
