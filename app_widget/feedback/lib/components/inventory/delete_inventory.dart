import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventory_bloc/inventory.dart';
import 'package:server_bloc/server.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_api/app_api.dart';

void showDeleteInventory({
  required BuildContext context,
  required Inventory inventory,
}) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text(context.l10n.titleInventory),
          content: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.start,
            children: [
              const Text('Remove Inventory '),
              Text(
                inventory.name ?? '',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('?'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.error,
              ),
              child: Text(context.l10n.buttonDelete),
              onPressed: () {
                final undoSnackBar = SnackBar(
                  content: Text(context.l10n.accidentallyDeleted),
                  action: SnackBarAction(
                      label: context.l10n.undo,
                      onPressed: () {
                        context.read<InventoryBloc>().add(InventoryAdd(
                              context
                                  .read<SemaphoreServerBloc>()
                                  .state
                                  .activeServer!
                                  .api,
                              inventory.projectId!,
                              inventory,
                            ));
                      }),
                );

                context.read<InventoryBloc>().add(InventoryRemove(
                      context
                          .read<SemaphoreServerBloc>()
                          .state
                          .activeServer!
                          .api,
                      inventory.projectId!,
                      inventory,
                    ));
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(undoSnackBar);
              },
            ),
            TextButton(
              child: Text(context.l10n.buttonCancel),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
