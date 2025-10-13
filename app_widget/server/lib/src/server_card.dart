import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_database/app_database.dart';
import 'package:server_bloc/server.dart';
import 'package:app_feedback/components/setting/rename_server.dart';
import 'package:app_utils/app_utils.dart';
import 'project_list.dart';

class ServerCard extends StatelessWidget {
  final SemaphoreServer server;

  const ServerCard({
    super.key,
    required this.server,
  });

  void _showDeleteServer(BuildContext context, dynamic server) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text(context.l10n!.smenuServer),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Remove Server ${server.name ?? 'Unknown'}?'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.error,
              ),
              child: Text(context.l10n!.buttonDelete),
              onPressed: () {
                final undoSnackBar = SnackBar(
                  content: Text(context.l10n!.accidentallyDeleted),
                  action: SnackBarAction(
                    label: context.l10n!.undo,
                    onPressed: () {
                      context
                          .read<SemaphoreServerBloc>()
                          .add(AddServer(server));
                    },
                  ),
                );
                context.read<SemaphoreServerBloc>().add(RemoveServer(server));
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(undoSnackBar);
              },
            ),
            TextButton(
              child: Text(context.l10n!.buttonCancel),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.computer),
            title: Text(
              server.name ?? 'Unknown',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.person, size: 16),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        server.username ?? 'Unknown',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.link, size: 16),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        server.apiUrl ?? 'Unknown',
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            trailing: PopupMenuButton<String>(
              padding: EdgeInsets.zero,
              onSelected: (value) {
                if (value == context.l10n!.rename) {
                  showRenameServerForm(context, server);
                }
                if (value == context.l10n!.refresh) {
                  context.read<SemaphoreServerBloc>().add(LoadProjects(server));
                }
                if (value == context.l10n!.delete) {
                  _showDeleteServer(context, server);
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: context.l10n!.refresh,
                  child: ListTile(
                    leading: const Icon(Icons.refresh),
                    title: Text(context.l10n!.refresh),
                  ),
                ),
                const PopupMenuDivider(),
                PopupMenuItem(
                  value: context.l10n!.delete,
                  child: ListTile(
                    leading: const Icon(Icons.delete),
                    title: Text(context.l10n!.delete),
                  ),
                ),
                PopupMenuItem(
                  value: context.l10n!.rename,
                  child: ListTile(
                    leading: const Icon(Icons.edit),
                    title: Text(context.l10n!.rename),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(),
          ),
          ProjectList(server: server),
        ],
      ),
    );
  }
}
