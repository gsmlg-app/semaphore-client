import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:schedule_bloc/schedule.dart';
import 'package:server_bloc/server.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_database/server.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';
import 'package:semaphore_client/screens/project/template_task_screen.dart';
import 'package:app_error/app_error.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});
  static const name = 'schedule';
  static const path = 'schedule';
  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen>
    with WidgetsBindingObserver, AutoRefreshMixin {
  @override
  void loadData() {
    final state = context.read<SemaphoreServerBloc>().state;
    context.read<ScheduleBloc>().add(
      ScheduleLoad(state.activeServer!.api, state.activeProject!.projectId!),
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
              title: Text(context.l10n!.titleSchedule),
              actions: getActions(context, isSmall: true),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<ScheduleBloc, ScheduleState>(
                  builder: (context, state) {
                    if (state is ScheduleLoaded && state.loading) {
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
                context.read<ScheduleBloc>().add(
                  ScheduleLoad(
                    state.activeServer!.api,
                    state.activeProject!.projectId!,
                  ),
                );
              },
              child: BlocBuilder<ScheduleBloc, ScheduleState>(
                builder: (context, state) {
                  if (state is ScheduleInitial || state is ScheduleLoading) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    );
                  }
                  if (state is ScheduleError) {
                    return SliverFillRemaining(
                      child: AppErrorWidget(
                        error: state.error,
                        onRetry: () => loadData(),
                      ),
                    );
                  }
                  if (state is ScheduleLoaded) {
                    return SliverList.builder(
                      itemCount: state.schedules.length,
                      itemBuilder: (context, index) {
                        final schedule = state.schedules[index];
                        return ListTile(
                          leading: (schedule.active == true)
                              ? const Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                )
                              : const Icon(Icons.stop, color: Colors.grey),
                          title: Text(schedule.name ?? '--'),
                          subtitle: Row(
                            children: [
                              Text(schedule.cronFormat ?? '--'),
                              const SizedBox(width: 24),
                              Text(
                                schedule.tplName ?? '--',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onSurface
                                      .withValues(alpha: 0.6),
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
              title: Text(context.l10n!.titleSchedule),
              actions: getActions(context),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<ScheduleBloc, ScheduleState>(
                  builder: (context, state) {
                    if (state is ScheduleLoaded && state.loading) {
                      return const LinearProgressIndicator();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
            BlocBuilder<ScheduleBloc, ScheduleState>(
              builder: (context, state) {
                if (state is ScheduleInitial || state is ScheduleLoading) {
                  return const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                if (state is ScheduleError) {
                  return SliverFillRemaining(
                    child: Text(
                      state.error.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  );
                }
                if (state is ScheduleLoaded) {
                  return SliverFillRemaining(
                    child: DataTable(
                      columns: const [
                        DataColumn(
                          label: Text(''),
                          columnWidth: FixedColumnWidth(24),
                        ),
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Cron')),
                        DataColumn(label: Text('Template')),
                        DataColumn(label: Text('Action')),
                      ],
                      rows: [
                        for (final schedule in state.schedules)
                          DataRow(
                            cells: [
                              DataCell(
                                Icon(
                                  schedule.active == true
                                      ? Icons.check_circle
                                      : Icons.stop,
                                  color: schedule.active == true
                                      ? Colors.green
                                      : Colors.grey,
                                ),
                              ),
                              DataCell(
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    schedule.name ?? 'N/A',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              DataCell(Text(schedule.cronFormat ?? 'N/A')),
                              DataCell(
                                TextButton(
                                  onPressed: () {
                                    context.goNamed(
                                      TemplateTaskScreen.name,
                                      pathParameters: {
                                        'templateId':
                                            schedule.templateId?.toString() ??
                                            '',
                                      },
                                    );
                                  },
                                  child: Text(
                                    schedule.tplName ?? 'N/A',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
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
