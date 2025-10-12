import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:settings_ui/gsmlg_settings.dart';
import 'package:server_bloc/server.dart';
import 'package:server_form_bloc/server_form.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_feedback/components/setting/rename_server.dart';
import 'package:app_feedback/components/setting/server_form.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_client/screens/settings/select_server.dart';
import 'package:app_database/app_database.dart';

class ServerScreen extends StatelessWidget {
  static const name = 'Server';
  static const path = '/server';
  const ServerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAdaptiveScaffold(
      selectedIndex: Destinations.indexOf(const Key(name), context),
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
              title: Text(context.l10n!.smenuSemaphore),
              automaticallyImplyLeading: false,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                buildServerSection(context),
              ]),
            ),
          ],
        ),
      ),
      smallSecondaryBody: AdaptiveScaffold.emptyBuilder,
      largeBody: (context) => SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              title: Text(context.l10n!.smenuSemaphore),
              automaticallyImplyLeading: false,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                buildServerSection(context),
              ]),
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
        if (!state.hasServer) {
          return SettingsList(
            sections: [
              SettingsSection(
                title: Text(context.l10n!.smenuSemaphore),
                tiles: <SettingsTile>[
                  SettingsTile(
                    title: Text(context.l10n!.addServer),
                    trailing: const Icon(Icons.add),
                    onPressed: (context) {
                      context.read<ServerFormBloc>().clear();
                      showServerForm(context);
                    },
                  ),
                ],
              ),
            ],
          );
        }

        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SettingsList(
            sections: [
              // Active Server Status Section
              SettingsSection(
                title: Text(context.l10n!.smenuSemaphoreServer),
                tiles: <Widget>[
                  SettingsTile.navigation(
                    leading: const Icon(Icons.computer),
                    title: Text(state.activeServer?.name ?? context.l10n!.noServerActivated),
                    value: Text(
                      state.activeProject?.name ?? context.l10n!.clickToSelect,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    onPressed: (context) {
                      context.read<SemaphoreServerBloc>().add(LoadServers());
                      context.goNamed(SettingsSelectServer.name);
                    },
                  ),
                ],
              ),
              // All Servers Section
              ...state.servers.map((server) {
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
                              Text(server.name ?? 'Unknown'),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.person),
                              const SizedBox(width: 10),
                              Text(server.username ?? 'Unknown'),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.link),
                              const SizedBox(width: 10),
                              Text(server.apiUrl ?? 'Unknown'),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      PopupMenuButton<String>(
                        padding: EdgeInsets.zero,
                        onSelected: (value) {
                          if (value == context.l10n!.rename) {
                            showRenameServerForm(context, server);
                          }
                          if (value == context.l10n!.refresh) {
                            context
                                .read<SemaphoreServerBloc>()
                                .add(LoadProjects(server));
                          }
                          if (value == context.l10n!.delete) {
                            showDeleteServer(context, server);
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
                    ],
                  ),
                  tiles: [_buildProjectTiles(context, server, state)],
                );
              }),
              // Add Server Section
              SettingsSection(
                title: Text(context.l10n!.addServer),
                tiles: <SettingsTile>[
                  SettingsTile(
                    title: Text(context.l10n!.addServer),
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

  Widget _buildProjectTiles(BuildContext context, SemaphoreServer server, SemaphoreServerState state) {
    final database = context.read<AppDatabase>();

    return FutureBuilder<List<SemaphoreProject>>(
      future: server.getProjects(database),
      builder: (context, snapshot) {
        List<Widget> tiles = [];

        if (snapshot.connectionState == ConnectionState.waiting) {
          tiles.add(
            SettingsTile(
              leading: const CircularProgressIndicator(),
              title: const Text('Loading projects...'),
            ),
          );
        } else if (snapshot.hasError) {
          tiles.add(
            SettingsTile(
              leading: const Icon(Icons.error),
              title: Text('Error: ${snapshot.error}'),
            ),
          );
        } else {
          final projects = snapshot.data ?? [];
          if (projects.isEmpty) {
            tiles.add(
              SettingsTile(
                leading: const Icon(Icons.info),
                title: Text('No projects found'),
              ),
            );
          } else {
            tiles.addAll(projects.map((project) => SettingsTile.checkTile(
              leading: const Icon(Icons.rocket_launch),
              title: Text(project.name ?? 'Unknown'),
              checked:
                  state.activeServer?.id == server.id &&
                  state.activeProject?.projectId == project.projectId,
              onPressed: (context) {
                context
                    .read<SemaphoreServerBloc>()
                    .add(SelectServer(server, project));
              },
            )));
          }
        }

        return Column(
          children: tiles,
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
          title: Text(context.l10n!.smenuSemaphore),
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
}