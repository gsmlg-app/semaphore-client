import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:key_store_bloc/key_store.dart';
import 'package:server_bloc/server.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';

class KeyStoreScreen extends StatefulWidget {
  const KeyStoreScreen({super.key});
  static const name = 'keyStore';
  static const path = 'keyStore';
  @override
  State<KeyStoreScreen> createState() => _KeyStoreScreenState();
}

class _KeyStoreScreenState extends State<KeyStoreScreen>
    with WidgetsBindingObserver, AutoRefreshMixin {
  @override
  void loadData() {
    final state = context.read<SemaphoreServerBloc>().state;
    context.read<KeyStoreBloc>().add(
        KeyStoreLoad(state.activeServer!.api, state.activeProject!.projectId!));
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
              title: Text(context.l10n.titleKeyStore),
              actions: getActions(context, isSmall: true),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<KeyStoreBloc, KeyStoreState>(
                  builder: (context, state) {
                    if (state is KeyStoreLoaded && state.loading) {
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
                context.read<KeyStoreBloc>().add(KeyStoreLoad(
                    state.activeServer!.api, state.activeProject!.projectId!));
              },
              child: BlocBuilder<KeyStoreBloc, KeyStoreState>(
                builder: (context, state) {
                  if (state is KeyStoreInitial || state is KeyStoreLoading) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    );
                  }
                  if (state is KeyStoreError) {
                    return SliverFillRemaining(
                      child: Text(
                        state.error.toString(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    );
                  }
                  if (state is KeyStoreLoaded) {
                    return SliverList.builder(
                      itemCount: state.accessKeys.length,
                      itemBuilder: (context, index) {
                        final keyStore = state.accessKeys[index];
                        return ListTile(
                          leading: const Icon(Icons.key),
                          title: Text(keyStore.name ?? '--'),
                          subtitle: Text(keyStore.type?.name ?? '--'),
                          trailing: AppAdaptiveActionList(
                            size: AppAdaptiveActionSize.small,
                            actions: [
                              AppAdaptiveAction(
                                icon: Icons.delete,
                                title: context.l10n.delete,
                                onPressed: () {},
                              ),
                              AppAdaptiveAction(
                                icon: Icons.edit,
                                title: context.l10n.edit,
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
              title: Text(context.l10n.titleKeyStore),
              actions: getActions(context),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<KeyStoreBloc, KeyStoreState>(
                  builder: (context, state) {
                    if (state is KeyStoreLoaded && state.loading) {
                      return const LinearProgressIndicator();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
            BlocBuilder<KeyStoreBloc, KeyStoreState>(
              builder: (context, state) {
                if (state is KeyStoreInitial || state is KeyStoreLoading) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if (state is KeyStoreError) {
                  return SliverFillRemaining(
                    child: Text(
                      state.error.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  );
                }
                if (state is KeyStoreLoaded) {
                  return SliverFillRemaining(
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Type')),
                        DataColumn(label: Text('Action')),
                      ],
                      rows: [
                        for (final accessKey in state.accessKeys)
                          DataRow(cells: [
                            DataCell(
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  accessKey.name ?? 'N/A',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            DataCell(
                              Text(accessKey.type?.name ?? '--'),
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
            title: context.l10n.refresh,
            onPressed: () {
              loadData();
            },
          ),
          if (autoRefresh)
            AppAdaptiveAction(
              disabled: !autoRefresh,
              icon: Icons.sync_rounded,
              title: context.l10n.autoRefresh,
              onPressed: () {
                stopRefresh();
              },
            )
          else
            AppAdaptiveAction(
              disabled: autoRefresh,
              icon: Icons.sync_disabled_rounded,
              title: context.l10n.autoRefresh,
              onPressed: () {
                startRefresh();
              },
            ),
        ],
      ),
    ];
  }
}