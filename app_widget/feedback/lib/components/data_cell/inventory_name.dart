import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:inventory_bloc/inventory.dart';
import 'package:semaphore_api/semaphore_api.dart';

class InventoryName extends StatelessWidget {
  final int? inventoryId;

  const InventoryName({super.key, this.inventoryId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InventoryBloc, InventoryState>(
      builder: (context, state) {
        if (state is InventoryLoading) {
          return const LinearProgressIndicator();
        }
        if (state is InventoryLoaded) {
          final item = state.inventorys.firstWhere(
            (k) => k.id == inventoryId,
            orElse: () => Inventory(),
          );
          return Text(
            item.name ?? 'N/A',
            overflow: TextOverflow.ellipsis,
          );
        }
        return Text(inventoryId?.toString() ?? '--');
      },
    );
  }
}
