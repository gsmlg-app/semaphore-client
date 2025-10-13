import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:inventory_bloc/inventory.dart';
import 'package:server_bloc/server.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_feedback/components/inventory/create_inventory.dart';
import 'package:app_feedback/components/inventory/delete_inventory.dart';
import 'package:app_feedback/components/inventory/edit_inventory.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_database/server.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';
import 'package:app_error/app_error.dart';
import 'package:app_api/semaphore_api.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key});
  static const name = 'inventory';
  static const path = 'inventory';
  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen>
    with WidgetsBindingObserver, AutoRefreshMixin {
  @override
  void loadData() {
    final state = context.read<SemaphoreServerBloc>().state;
    context.read<InventoryBloc>().add(
      InventoryLoad(state.activeServer!.api, state.activeProject!.projectId!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppAdaptiveScaffold(
      selectedIndex: Destinations.indexOf(
        const Key(ProjectScreen.name),
        context,
      ),
      onSelectedIndexChange: (idx) => Destinations.changeHandler(idx, context),
      destinations: Destinations.navs(context),
      smallBody: (context) => SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text(context.l10n!.titleInventory),
              actions: getActions(context, isSmall: true),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<InventoryBloc, InventoryState>(
                  builder: (context, state) {
                    if (state is InventoryLoaded && state.loading) {
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
                context.read<InventoryBloc>().add(
                  InventoryLoad(
                    state.activeServer!.api,
                    state.activeProject!.projectId!,
                  ),
                );
              },
              child: BlocBuilder<InventoryBloc, InventoryState>(
                builder: (context, state) {
                  if (state is InventoryInitial || state is InventoryLoading) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    );
                  }
                  if (state is InventoryError) {
                    return SliverFillRemaining(
                      child: AppErrorWidget(
                        error: state.error,
                        onRetry: () => loadData(),
                      ),
                    );
                  }
                  if (state is InventoryLoaded) {
                    return SliverList.builder(
                      itemCount: state.inventorys.length,
                      itemBuilder: (context, index) {
                        final inventory = state.inventorys[index];
                        return ListTile(
                          leading: const Icon(Icons.badge),
                          title: Text(inventory.name ?? '--'),
                          subtitle: Row(
                            children: [
                              Text(
                                inventory.type?.name.replaceAll(
                                      RegExp(r'_$'),
                                      '',
                                    ) ??
                                    '--',
                              ),
                              const SizedBox(width: 8),
                              if (inventory.type == InventoryTypeEnum.file)
                                Text(inventory.inventory ?? '--'),
                            ],
                          ),
                          trailing: AppAdaptiveActionList(
                            size: AppAdaptiveActionSize.small,
                            actions: [
                              AppAdaptiveAction(
                                icon: Icons.delete,
                                title: context.l10n!.delete,
                                onPressed: () {
                                  showDeleteInventory(
                                    context: context,
                                    inventory: inventory,
                                  );
                                },
                              ),
                              AppAdaptiveAction(
                                icon: Icons.edit,
                                title: context.l10n!.edit,
                                onPressed: () {
                                  showEditInventory(
                                    context: context,
                                    api: context
                                        .read<SemaphoreServerBloc>()
                                        .state
                                        .activeServer!
                                        .api,
                                    projectId: context
                                        .read<SemaphoreServerBloc>()
                                        .state
                                        .activeProject!
                                        .projectId!,
                                    inventory: inventory,
                                  );
                                },
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
              title: Text(context.l10n!.titleInventory),
              actions: getActions(context),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<InventoryBloc, InventoryState>(
                  builder: (context, state) {
                    if (state is InventoryLoaded && state.loading) {
                      return const LinearProgressIndicator();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
            BlocBuilder<InventoryBloc, InventoryState>(
              builder: (context, state) {
                if (state is InventoryInitial || state is InventoryLoading) {
                  return const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                if (state is InventoryError) {
                  return SliverFillRemaining(
                    child: AppErrorWidget(
                      error: state.error,
                      onRetry: () => loadData(),
                    ),
                  );
                }
                if (state is InventoryLoaded) {
                  return SliverFillRemaining(
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Type')),
                        DataColumn(label: Text('Path')),
                        DataColumn(label: Text('Action')),
                      ],
                      rows: [
                        for (final inventory in state.inventorys)
                          DataRow(
                            cells: [
                              DataCell(
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    inventory.name ?? 'N/A',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              DataCell(
                                Text(
                                  inventory.type?.name.replaceAll(
                                        RegExp(r'_$'),
                                        '',
                                      ) ??
                                      '--',
                                ),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.delete),
                                      onPressed: () {
                                        showDeleteInventory(
                                          context: context,
                                          inventory: inventory,
                                        );
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.edit),
                                      onPressed: () {
                                        showEditInventory(
                                          context: context,
                                          api: context
                                              .read<SemaphoreServerBloc>()
                                              .state
                                              .activeServer!
                                              .api,
                                          projectId: context
                                              .read<SemaphoreServerBloc>()
                                              .state
                                              .activeProject!
                                              .projectId!,
                                          inventory: inventory,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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

  List<Widget> getActions(
    BuildContext context, {
    bool isSmall = false,
    bool isLarge = false,
  }) {
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
            icon: Icons.add,
            title: context.l10n!.add,
            onPressed: () {
              showCreateInventory(
                context: context,
                api: context
                    .read<SemaphoreServerBloc>()
                    .state
                    .activeServer!
                    .api,
                projectId: context
                    .read<SemaphoreServerBloc>()
                    .state
                    .activeProject!
                    .projectId!,
              );
            },
          ),
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
