import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:key_store_bloc/key_store.dart';
import 'package:repository_bloc/repository.dart';
import 'package:server_bloc/server.dart';
import 'package:app_feedback/components/data_cell/key_store_name.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_database/server.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';
import 'package:app_error/app_error.dart';

class RepositoryScreen extends StatefulWidget {
  const RepositoryScreen({super.key});
  static const name = 'repository';
  static const path = 'repository';
  @override
  State<RepositoryScreen> createState() => _RepositoryScreenState();
}

class _RepositoryScreenState extends State<RepositoryScreen>
    with WidgetsBindingObserver, AutoRefreshMixin {
  @override
  void loadData() {
    final state = context.read<SemaphoreServerBloc>().state;
    context.read<KeyStoreBloc>().add(
        KeyStoreLoad(state.activeServer!.api, state.activeProject!.projectId!));
    context.read<RepositoryBloc>().add(RepositoryLoad(
        state.activeServer!.api, state.activeProject!.projectId!));
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
              title: Text(context.l10n!.titleRepository),
              actions: getActions(context, isSmall: true),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<RepositoryBloc, RepositoryState>(
                  builder: (context, state) {
                    if (state is RepositoryLoaded && state.loading) {
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
                context.read<RepositoryBloc>().add(RepositoryLoad(
                    state.activeServer!.api, state.activeProject!.projectId!));
              },
              child: BlocBuilder<RepositoryBloc, RepositoryState>(
                builder: (context, state) {
                  if (state is RepositoryInitial || state is RepositoryLoading) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    );
                  }
                  if (state is RepositoryError) {
                    return SliverFillRemaining(
                      child: AppErrorWidget(
                        error: state.error,
                        onRetry: () => loadData(),
                      ),
                    );
                  }
                  if (state is RepositoryLoaded) {
                    return SliverList.builder(
                      itemCount: state.repositorys.length,
                      itemBuilder: (context, index) {
                        final repository = state.repositorys[index];
                        return ListTile(
                          leading: const Icon(Icons.commit),
                          title: Text(repository.name ?? '--'),
                          subtitle: Wrap(
                            children: [
                              Text(
                                repository.gitUrl ?? '--',
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                repository.gitBranch ?? '--',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
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
                              AppAdaptiveAction(
                                icon: Icons.edit,
                                title: context.l10n!.edit,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }
                  return const Center(child: Text('--'));
                },
              ),
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
              title: Text(context.l10n!.titleRepository),
              actions: getActions(context),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<RepositoryBloc, RepositoryState>(
                  builder: (context, state) {
                    if (state is RepositoryLoaded && state.loading) {
                      return const LinearProgressIndicator();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
            SliverFillRemaining(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: BlocBuilder<RepositoryBloc, RepositoryState>(
                  builder: (context, state) {
                    if (state is RepositoryInitial || state is RepositoryLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is RepositoryError) {
                      return Center(
                        child: AppErrorWidget(
                          error: state.error,
                          onRetry: () => loadData(),
                        ),
                      );
                    }
                    if (state is RepositoryLoaded) {
                      return DataTable(
                        columns: const [
                          DataColumn(
                            label: Text(
                              'Name',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          DataColumn(label: Text('Git URL')),
                          DataColumn(label: Text('Branch')),
                          DataColumn(label: Text('SSH Key')),
                          DataColumn(label: Text('Action')),
                        ],
                        rows: [
                          for (final repo in state.repositorys)
                            DataRow(cells: [
                              DataCell(
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    repo.name ?? 'N/A',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              DataCell(
                                Wrap(
                                  children: [
                                    Text(
                                      repo.gitUrl ?? 'N/A',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              DataCell(
                                Text(
                                  repo.gitBranch ?? 'N/A',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                              ),
                              DataCell(
                                KeyStoreName(accessKeyId: repo.sshKeyId),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.delete),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.edit),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                        ],
                      );
                    }
                    return const Center(child: Text('No data'));
                  },
                ),
              ),
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