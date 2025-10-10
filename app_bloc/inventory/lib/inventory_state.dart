part of 'inventory_bloc.dart';

@immutable
sealed class InventoryState {}

final class InventoryInitial extends InventoryState {}

final class InventoryLoading extends InventoryState {}

final class InventoryLoaded extends InventoryState {
  final bool loading;
  final List<Inventory> inventorys;

  InventoryLoaded({required this.inventorys, this.loading = false});
}

final class InventoryError extends InventoryState {
  final Object error;

  InventoryError(this.error);
}
