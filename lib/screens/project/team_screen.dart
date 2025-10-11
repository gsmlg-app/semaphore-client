import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:server_bloc/server.dart';
import 'package:team_bloc/team.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_database/server.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});
  static const name = 'team';
  static const path = 'team';
  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen>
    with WidgetsBindingObserver, AutoRefreshMixin {
  @override
  void loadData() {
    final state = context.read<SemaphoreServerBloc>().state;
    context.read<TeamBloc>().add(
        TeamLoad(state.activeServer!.api, state.activeProject!.projectId!));
  }

  @override
  Widget build(BuildContext context) {
    return AppAdaptiveScaffold(
      selectedIndex:
          Destinations.indexOf(const Key(ProjectScreen.name), context),
      onSelectedIndexChange: (idx) => Destinations.changeHandler(
        idx,
        context,
      ),
      destinations: Destinations.navs(context),
      smallBody: (context) => SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text(context.l10n!.titleTeam),
              actions: getActions(context, isSmall: true),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<TeamBloc, TeamState>(
                  builder: (context, state) {
                    if (state is TeamLoaded && state.loading) {
                      return const LinearProgressIndicator();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
            BlocListener<SemaphoreServerBloc, SemaphoreServerState>(
              listenWhen: (previous, current) =>
                  previous.activeProject != current.activeProject &&
                  current.activeProject != null,
              listener: (context, state) {
                context.read<TeamBloc>().add(TeamLoad(
                    state.activeServer!.api, state.activeProject!.projectId!));
              },
              child:
                  BlocBuilder<TeamBloc, TeamState>(builder: (context, state) {
                if (state is TeamInitial || state is TeamLoading) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                }
                if (state is TeamError) {
                  return SliverFillRemaining(
                    child: Text(
                      state.error.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  );
                }
                if (state is TeamLoaded) {
                  return SliverList.builder(
                    itemCount: state.users.length,
                    itemBuilder: (context, index) {
                      final team = state.users[index];
                      return ListTile(
                        leading: const Icon(Icons.account_box),
                        title: Text(team.name ?? '--'),
                        subtitle: Wrap(
                          children: [
                            Text(team.username ?? '--'),
                            const SizedBox(width: 8),
                            Text(team.role?.name ?? '--'),
                          ],
                        ),
                        trailing: AppAdaptiveActionList(
                          size: AppAdaptiveActionSize.small,
                          actions: [
                            AppAdaptiveAction(
                              icon: Icons.delete,
                              title: context.l10n!.delete,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
                return const Center(child: Text('--'));
              }),
            ),
          ],
        ),
      ),
      body: (context) => SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text(context.l10n!.titleTeam),
              actions: getActions(context),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<TeamBloc, TeamState>(
                  builder: (context, state) {
                    if (state is TeamLoaded && state.loading) {
                      return const LinearProgressIndicator();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
            BlocBuilder<TeamBloc, TeamState>(
              builder: (context, state) {
                if (state is TeamInitial || state is TeamLoading) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if (state is TeamError) {
                  return SliverFillRemaining(
                    child: Text(
                      state.error.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  );
                }
                if (state is TeamLoaded) {
                  return SliverFillRemaining(
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Username')),
                        DataColumn(label: Text('Role')),
                        DataColumn(label: Text('Action')),
                      ],
                      rows: [
                        for (final user in state.users)
                          DataRow(cells: [
                            DataCell(
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  user.name ?? 'N/A',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(user.username ?? '--'),
                            ),
                            DataCell(
                              Text(user.role?.name ?? '--'),
                            ),
                            DataCell(
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ]),
                      ],
                    ),
                  );
                }
                return const SliverFillRemaining(
                  child: Center(child: Text('No data')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getActions(BuildContext context,
      {bool isSmall = false, bool isLarge = false}) {
    final size = isSmall
        ? AppAdaptiveActionSize.small
        : isLarge
            ? AppAdaptiveActionSize.large
            : AppAdaptiveActionSize.medium;
    return [
      AppAdaptiveActionList(
        size: size,
        actions: [
          AppAdaptiveAction(
            icon: Icons.refresh,
            title: context.l10n!.refresh,
            onPressed: () {
              loadData();
            },
          ),
          if (autoRefresh)
            AppAdaptiveAction(
              disabled: !autoRefresh,
              icon: Icons.sync_rounded,
              title: context.l10n!.autoRefresh,
              onPressed: () {
                stopRefresh();
              },
            )
          else
            AppAdaptiveAction(
              disabled: autoRefresh,
              icon: Icons.sync_disabled_rounded,
              title: context.l10n!.autoRefresh,
              onPressed: () {
                startRefresh();
              },
            ),
        ],
      ),
    ];
  }
}