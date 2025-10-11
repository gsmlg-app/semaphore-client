import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:activity_bloc/activity.dart';
import 'package:history_bloc/history.dart';
import 'package:server_bloc/server.dart';
import 'package:template_bloc/template.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_client/screens/project/activity_screen.dart';
import 'package:semaphore_client/screens/project/history_screen.dart';
import 'package:semaphore_client/screens/project/integration_screen.dart';
import 'package:semaphore_client/screens/project/inventory_screen.dart';
import 'package:semaphore_client/screens/project/key_store_screen.dart';
import 'package:semaphore_client/screens/project/repository_screen.dart';
import 'package:semaphore_client/screens/project/schedule_screen.dart';
import 'package:semaphore_client/screens/project/team_screen.dart';
import 'package:semaphore_client/screens/project/template_screen.dart';
import 'package:semaphore_client/screens/project/variable_screen.dart';
import 'package:app_database/server.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});
  static const name = 'project';
  static const path = '/project';
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
        child: BlocBuilder<SemaphoreServerBloc, SemaphoreServerState>(
          builder: (context, state) => CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Text(context.l10n!.projectPageTitle),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  ListTile(
                    leading: const Icon(Icons.rocket),
                    title: Row(
                      children: [
                        Text(context.l10n!.projectPageTitle),
                        const SizedBox(width: 8),
                        Text(
                          state.activeProject?.name ?? '--',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        const Icon(Icons.account_box),
                        Text(state.activeServer?.username ?? '--'),
                      ],
                    ),
                  ),
                  const Divider(height: 20),
                  ListTile(
                    leading: const Icon(Icons.history),
                    title: Text(context.l10n!.titleHistory),
                    onTap: () {
                      context.read<HistoryBloc>().add(HistoryLoad(
                          state.activeServer!.api,
                          state.activeProject!.projectId!));
                      context.goNamed(HistoryScreen.name);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.event_note),
                    title: Text(context.l10n!.titleActivity),
                    onTap: () {
                      context.read<ActivityBloc>().add(ActivityLoad(
                          state.activeServer!.api,
                          state.activeProject!.projectId!));
                      context.goNamed(ActivityScreen.name);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.receipt),
                    title: Text(context.l10n!.titleTemplate),
                    onTap: () {
                      context.read<TemplateBloc>().add(TemplateLoad(
                          state.activeServer!.api,
                          state.activeProject!.projectId!));
                      context.goNamed(TemplateScreen.name);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.schedule),
                    title: Text(context.l10n!.titleSchedule),
                    onTap: () {
                      context.goNamed(ScheduleScreen.name);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.inventory),
                    title: Text(context.l10n!.titleInventory),
                    onTap: () {
                      context.goNamed(InventoryScreen.name);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.data_object),
                    title: Text(context.l10n!.titleVariable),
                    onTap: () {
                      context.goNamed(VariableScreen.name);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.key),
                    title: Text(context.l10n!.titleKeyStore),
                    onTap: () {
                      context.goNamed(KeyStoreScreen.name);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.commit),
                    title: Text(context.l10n!.titleRepository),
                    onTap: () {
                      context.goNamed(RepositoryScreen.name);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.merge_type),
                    title: Text(context.l10n!.titleIntegration),
                    onTap: () {
                      context.goNamed(IntegrationScreen.name);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.group),
                    title: Text(context.l10n!.titleTeam),
                    onTap: () {
                      context.goNamed(TeamScreen.name);
                    },
                  ),
                 ]),
               ),
             ],
          ),
        ),
      ),
    );
  }
}
