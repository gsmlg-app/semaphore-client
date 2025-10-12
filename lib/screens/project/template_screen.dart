import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:inventory_bloc/inventory.dart';
import 'package:repository_bloc/repository.dart';
import 'package:server_bloc/server.dart';
import 'package:template_bloc/template.dart';
import 'package:variable_bloc/variable.dart';
import 'package:app_feedback/components/data_cell/inventory_name.dart';
import 'package:app_feedback/components/data_cell/repository_name.dart';
import 'package:app_feedback/components/data_cell/variable_group_name.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_feedback/components/task/run_task.dart';
import 'package:app_database/app_database.dart';
import 'package:app_feedback/components/task/show_task_output.dart';
import 'package:app_feedback/components/task/status_chip.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';
import 'package:semaphore_client/screens/project/template_task_screen.dart';
import 'package:app_error/app_error.dart';
import 'package:app_api/semaphore_api.dart';

class TemplateScreen extends StatefulWidget {
  const TemplateScreen({super.key});
  static const name = 'template';
  static const path = 'template';
  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen>
    with WidgetsBindingObserver, AutoRefreshMixin {
  @override
  void loadData() {
    context.read<InventoryBloc>().add(InventoryLoad(
        context.read<SemaphoreServerBloc>().state.activeServer!.api,
        context.read<SemaphoreServerBloc>().state.activeProject!.projectId!));
    context.read<VariableBloc>().add(VariableLoad(
        context.read<SemaphoreServerBloc>().state.activeServer!.api,
        context.read<SemaphoreServerBloc>().state.activeProject!.projectId!));
    context.read<RepositoryBloc>().add(RepositoryLoad(
        context.read<SemaphoreServerBloc>().state.activeServer!.api,
        context.read<SemaphoreServerBloc>().state.activeProject!.projectId!));
    context.read<TemplateBloc>().add(TemplateLoad(
        context.read<SemaphoreServerBloc>().state.activeServer!.api,
        context.read<SemaphoreServerBloc>().state.activeProject!.projectId!));
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
              title: Text(context.l10n!.titleTemplate),
              actions: getActions(context, isSmall: true),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<TemplateBloc, TemplateState>(
                  builder: (context, state) {
                    if (state is TemplateLoaded && state.loading) {
                      return const LinearProgressIndicator();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
            BlocConsumer<SemaphoreServerBloc, SemaphoreServerState>(
              listenWhen: (previous, current) =>
                  previous.activeProject != current.activeProject &&
                  current.activeProject != null,
              listener: (context, state) {
                context.read<TemplateBloc>().add(TemplateLoad(
                    state.activeServer!.api, state.activeProject!.projectId!));
              },
              builder: (context, serverState) =>
                  BlocBuilder<TemplateBloc, TemplateState>(
                      builder: (context, state) {
                if (state is TemplateInitial || state is TemplateLoading) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                }
                if (state is TemplateError) {
                  return SliverFillRemaining(
                    child: AppErrorWidget(
                      error: state.error,
                      onRetry: () => loadData(),
                    ),
                  );
                }
                if (state is TemplateLoaded) {
                  return SliverList.list(
                    children: [
                      for (final template in state.templates)
                        ListTile(
                          leading: SvgPicture.asset(
                            'assets/svg/${template.app}.svg',
                            height: 24,
                            width: 24,
                          ),
                          title: Text(template.name ?? 'N/A'),
                          subtitle: _showLastTask(context, template.lastTask),
                          trailing: IconButton(
                            icon: const Icon(Icons.play_circle_outline),
                            onPressed: () {
                              showRunTaskFrom(
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
                                templateId: template.id!,
                              );
                            },
                          ),
                          onTap: () {
                            context.goNamed(
                              TemplateTaskScreen.name,
                              pathParameters: {
                                'templateId': template.id!.toString()
                              },
                            );
                          },
                        ),
                    ],
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
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text(context.l10n!.titleTemplate),
              actions: getActions(context),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<TemplateBloc, TemplateState>(
                  builder: (context, state) {
                    if (state is TemplateLoaded && state.loading) {
                      return const LinearProgressIndicator();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
            BlocConsumer<SemaphoreServerBloc, SemaphoreServerState>(
              listenWhen: (previous, current) =>
                  previous.activeProject != current.activeProject &&
                  current.activeProject != null,
              listener: (context, state) {
                context.read<TemplateBloc>().add(TemplateLoad(
                    state.activeServer!.api, state.activeProject!.projectId!));
              },
              builder: (context, serverState) =>
                  BlocBuilder<TemplateBloc, TemplateState>(
                      builder: (context, state) {
                if (state is TemplateInitial || state is TemplateLoading) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                }
                if (state is TemplateError) {
                  return SliverFillRemaining(
                    child: AppErrorWidget(
                      error: state.error,
                      onRetry: () => loadData(),
                    ),
                  );
                }
                if (state is TemplateLoaded) {
                  return SliverFillRemaining(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const [
                          DataColumn(label: Text('Name')),
                          DataColumn(label: Text('last task')),
                          DataColumn(label: Text('Playbook')),
                          DataColumn(label: Text('Inventory')),
                          DataColumn(label: Text('Variable Group')),
                          DataColumn(label: Text('Repository')),
                          DataColumn(label: Text('Action')),
                        ],
                        rows: [
                          for (final template in state.templates)
                            DataRow(cells: [
                              DataCell(
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: TextButton(
                                    onPressed: () {
                                      context.goNamed(
                                        TemplateTaskScreen.name,
                                        pathParameters: {
                                          'templateId': template.id!.toString()
                                        },
                                      );
                                    },
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: SvgPicture.asset(
                                              'assets/svg/${template.app}.svg',
                                              height: 20,
                                              width: 20,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' ${template.name ?? 'N/A'}',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(_showLastTask(
                                context,
                                template.lastTask,
                              )),
                              DataCell(Text(
                                template.playbook ?? 'N/A',
                                overflow: TextOverflow.ellipsis,
                              )),
                              DataCell(InventoryName(
                                inventoryId: template.inventoryId,
                              )),
                              DataCell(VariableGroupName(
                                variableGroupId: template.environmentId,
                              )),
                              DataCell(RepositoryName(
                                repositoryId: template.repositoryId,
                              )),
                              DataCell(IconButton(
                                icon: const Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  showRunTaskFrom(
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
                                    templateId: template.id!,
                                  );
                                },
                              )),
                            ]),
                        ],
                      ),
                    ),
                  );
                }
                return const Center(child: Text('--'));
              }),
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
          AppAdaptiveAction(
            icon:
                autoRefresh ? Icons.sync_rounded : Icons.sync_disabled_rounded,
            title: context.l10n!.autoRefresh,
            onPressed: () =>
                autoRefresh ? stopRefresh() : startRefresh(),
          ),
        ],
      ),
    ];
  }

  Widget _showLastTask(BuildContext context, Task? task) {
    if (task == null) {
      return const Text('--');
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        StatusChip(status: task.status, size: 10),
        const SizedBox(width: 8),
        TextButton(
          style: Theme.of(context).textButtonTheme.style?.copyWith(
                alignment: Alignment.centerLeft,
              ),
          onPressed: task.id != null
              ? () {
                  showTaskOutput(
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
                    taskId: task.id!,
                  );
                }
              : null,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '#${task.id}',
              textAlign: TextAlign.left,
            ),
          ),
        ),
        task.userName != null
            ? Text(context.l10n!.byUser(task.userName!),
                textScaler: const TextScaler.linear(0.8))
            : const SizedBox(),
      ],
    );
  }
}