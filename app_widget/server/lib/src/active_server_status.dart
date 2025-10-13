import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app_database/app_database.dart';
import 'package:server_bloc/server.dart';
import 'package:semaphore_client/screens/settings/select_server.dart';
import 'package:app_utils/app_utils.dart';

class ActiveServerStatus extends StatelessWidget {
  const ActiveServerStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<
        SemaphoreServerBloc,
        SemaphoreServerState,
        ({
          SemaphoreServer? activeServer,
          SemaphoreProject? activeProject,
        })>(
      selector: (state) => (
        activeServer: state.activeServer,
        activeProject: state.activeProject,
      ),
      builder: (context, data) {
        return Card(
          margin: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: const Icon(Icons.computer),
            title: Text(context.l10n!.smenuSemaphoreServer),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.activeServer?.name ?? context.l10n!.noServerActivated,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  data.activeProject?.name ?? context.l10n!.clickToSelect,
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              context.read<SemaphoreServerBloc>().add(LoadServers());
              context.goNamed(SettingsSelectServer.name);
            },
          ),
        );
      },
    );
  }
}
