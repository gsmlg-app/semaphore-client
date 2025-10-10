import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:settings_ui/gsmlg_settings.dart';
import 'package:server_bloc/server.dart';
import 'package:server_form_bloc/server_form.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_feedback/components/setting/rename_server.dart';
import 'package:app_feedback/components/setting/root_setting_list.dart';
import 'package:app_feedback/components/setting/server_form.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_client/screens/settings/settings_screen.dart';

class SettingsSelectServer extends StatelessWidget {
  static const name = 'Select Server';
  static const path = 'select_server';
  static const String fullPath = '${SettingsScreen.path}/$path';
  const SettingsSelectServer({super.key});

  @override
  Widget build(BuildContext context) {
    final serverBloc = context.read<SemaphoreServerBloc>();
    return AppAdaptiveScaffold(
      selectedIndex:
          Destinations.indexOf(const Key(SettingsScreen.name), context),
      onSelectedIndexChange: (idx) => Destinations.changeHandler(
            idx,
            context,
          ),
      destinations: Destinations.navs(context),
      body: (context) => SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              title: Text(context.l10n.titleSelectServer),
              actions: [
                serverBloc.state.hasServer
                    ? IconButton(
                        onPressed: () {
                          context.read<ServerFormBloc>().clear();
                          showServerForm(context);
                        },
                        icon: const Icon(Icons.add),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                buildServerSection(context),
              ]),
            ),
          ],
        ),
      ),
      largeBody: (context) => SafeArea(
        child: Column(
          children: [
            Text(
              context.l10n.settingsTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const RootSettingList(),
            ),
          ],
        ),
      ),
      largeSecondaryBody: (_) => SafeArea(
        child: Container(),
      ),
    );
  }

  Widget buildServerSection(BuildContext context) {
    return BlocConsumer<SemaphoreServerBloc, SemaphoreServerState>(
      listener: (context, state) {
        if (state.hasServer) {}
      },
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SettingsList(
            sections: state.hasServer
                ? state.servers.map((server) {
                    return SettingsSection(
                      title: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.computer),
                                  const SizedBox(width: 10),
                                  // ignore: unchecked_use_of_nullable_value
                                  Text(server.name ?? 'Unknown'),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.person),
                                  // ignore: unchecked_use_of_nullable_value
                                  Text(server.username ?? 'Unknown'),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.link),
                                  // ignore: unchecked_use_of_nullable_value
                                  Text(server.apiUrl ?? 'Unknown'),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          PopupMenuButton<String>(
                            padding: EdgeInsets.zero,
                            onSelected: (value) {
                              if (value == context.l10n.rename) {
                                showRenameServerForm(context, server);
                              }
                              if (value == context.l10n.refresh) {
                                context
                                    .read<SemaphoreServerBloc>()
                                    .add(LoadProjects(server));
                              }
                              if (value == context.l10n.delete) {
                                showDeleteServer(context, server);
                              }
                            },
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: context.l10n.refresh,
                                child: ListTile(
                                  leading: const Icon(Icons.refresh),
                                  title: Text(context.l10n.refresh),
                                ),
                              ),
                              const PopupMenuDivider(),
                              PopupMenuItem(
                                value: context.l10n.delete,
                                child: ListTile(
                                  leading: const Icon(Icons.delete),
                                  title: Text(context.l10n.delete),
                                ),
                              ),
                              PopupMenuItem(
                                value: context.l10n.rename,
                                child: ListTile(
                                  leading: const Icon(Icons.edit),
                                  title: Text(context.l10n.rename),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // ignore: unchecked_use_of_nullable_value
                      tiles: (server.projects ?? []).isEmpty
                          ? [
                              SettingsTile(
                                leading: const Icon(Icons.add),
                                title: Text(context.l10n.addProject),
                              )
                            ]
                          // ignore: unchecked_use_of_nullable_value
                          : (server.projects ?? [])
                              .map(
                                (project) => SettingsTile.checkTile(
                                  leading: const Icon(Icons.rocket_launch),
                                  title: Text(project.name ?? 'Unknown'),
                                  checked:
                                      // ignore: unchecked_use_of_nullable_value
                                      state.activeServer?.id == server.id &&
                                          state.activeProject?.projectId ==
                                              project.projectId,
                                  onPressed: (context) {
                                    context
                                        .read<SemaphoreServerBloc>()
                                        .add(SelectServer(server, project));
                                  },
                                ),
                              )
                              .toList(),
                    );
                  }).toList()
                : [
                    SettingsSection(
                      title: Text(context.l10n.smenuSemaphore),
                      tiles: <SettingsTile>[
                        SettingsTile(
                          title: Text(context.l10n.addServer),
                          trailing: const Icon(Icons.add),
                          onPressed: (context) {
                            context.read<ServerFormBloc>().clear();
                            showServerForm(context);
                          },
                        ),
                      ],
                    ),
                  ],
          ),
        );
      },
    );
  }

  void showDeleteServer(BuildContext context, dynamic server) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text(context.l10n.smenuSemaphore),
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
              child: Text(context.l10n.buttonDelete),
              onPressed: () {
                final undoSnackBar = SnackBar(
                  content: Text(context.l10n.accidentallyDeleted),
                  action: SnackBarAction(
                    label: context.l10n.undo,
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
              child: Text(context.l10n.buttonCancel),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}