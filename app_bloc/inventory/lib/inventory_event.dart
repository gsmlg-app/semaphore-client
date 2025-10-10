part of 'inventory_bloc.dart';

@immutable
sealed class InventoryEvent {}

final class InventoryLoad extends InventoryEvent {
  final SemaphoreApi api;
  final int projectId;

  InventoryLoad(this.api, this.projectId);
}

final class InventoryAdd extends InventoryEvent {
  final SemaphoreApi api;
  final int projectId;
  final Inventory inventory;

  InventoryAdd(this.api, this.projectId, this.inventory);
}

final class InventoryRemove extends InventoryEvent {
  final SemaphoreApi api;
  final int projectId;
  final Inventory inventory;

  InventoryRemove(this.api, this.projectId, this.inventory);
}
