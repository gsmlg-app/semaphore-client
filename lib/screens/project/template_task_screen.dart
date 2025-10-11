import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:server_bloc/server.dart';
import 'package:task_bloc/task.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_feedback/components/task/run_task.dart';
import 'package:app_feedback/components/task/show_task_output.dart';
import 'package:app_feedback/components/task/status_chip.dart';
import 'package:app_feedback/components/task/task_env.dart';
import 'package:app_feedback/components/task/task_time.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_database/server.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';

class TemplateTaskScreen extends StatefulWidget {
  const TemplateTaskScreen({super.key, required this.templateId});
  static const name = 'task';
  static const path = ':templateId/task';
  final int templateId;
  @override
  State<TemplateTaskScreen> createState() => _TemplateTaskScreenState();
}

class _TemplateTaskScreenState extends State<TemplateTaskScreen>
    with WidgetsBindingObserver, AutoRefreshMixin {
  @override
  void loadData() {
    context.read<TaskBloc>().add(TaskLoad(
          api: context.read<SemaphoreServerBloc>().state.activeServer!.api,
          projectId: context
              .read<SemaphoreServerBloc>()
              .state
              .activeProject!
              .projectId!,
          templateId: widget.templateId,
        ));
  }

  void openRunTask() {
    showRunTaskFrom(
      context: context,
      api: context.read<SemaphoreServerBloc>().state.activeServer!.api,
      projectId:
          context.read<SemaphoreServerBloc>().state.activeProject!.projectId!,
      templateId: widget.templateId,
    );
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
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: context.l10n.titleTask),
                    const WidgetSpan(
                      child: SizedBox(
                        width: 24,
                      ),
                    ),
                    WidgetSpan(
                      child: BlocBuilder<TaskBloc, TaskState>(
                        builder: (context, state) {
                          if (state is TaskLoaded) {
                            return Text(
                              state.template.name ?? '--',
                              style: Theme.of(context).textTheme.titleSmall,
                            );
                          }
                          return const CircularProgressIndicator.adaptive();
                        },
                      ),
                    ),
                  ],
                ),
                overflow: TextOverflow.fade,
              ),
              actions: getActions(context, isSmall: true),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<TaskBloc, TaskState>(
                  builder: (context, state) {
                    if (state is TaskLoaded && state.loading) {
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
                context.read<TaskBloc>().add(TaskLoad(
                      api: state.activeServer!.api,
                      projectId: state.activeProject!.projectId!,
                      templateId: widget.templateId,
                    ));
              },
              builder: (context, serverState) =>
                  BlocBuilder<TaskBloc, TaskState>(builder: (context, state) {
                if (state is TaskInitial || state is TaskLoading) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                }
                if (state is TaskError) {
                  return SliverFillRemaining(
                    child: Text(
                      state.error.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  );
                }
                if (state is TaskLoaded) {
                  return SliverList.builder(
                    itemCount: state.taskList.length,
                    itemBuilder: (context, index) {
                      final task = state.taskList[index];
                      return ListTile(
                        leading: StatusChip(status: task.status),
                        title: Row(
                          children: [
                            TextButton(
                              style: Theme.of(context)
                                  .textButtonTheme
                                  .style
                                  ?.copyWith(
                                    alignment: Alignment.centerLeft,
                                  ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '#${task.id}',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              onPressed: () {
                                showTaskOutput(
                                  context: context,
                                  api: serverState.activeServer!.api,
                                  projectId:
                                      serverState.activeProject!.projectId!,
                                  taskId: task.id!,
                                );
                              },
                            ),
                          ],
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TaskTimeWidget(task: task),
                            TaskEnvWidget(task: task),
                          ],
                        ),
                        trailing: task.status == 'running' ||
                                task.status == 'waiting'
                            ? IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.stop),
                              )
                            : IconButton(
                                tooltip: context.l10n.rerunTask,
                                icon: const Icon(Icons.replay),
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
                                     templateId: task.templateId!,
                                     task: task,
                                   );
                                },
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
        child: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: context.l10n.titleTask),
                  const WidgetSpan(
                    child: SizedBox(
                      width: 24,
                    ),
                  ),
                  WidgetSpan(
                    child: BlocBuilder<TaskBloc, TaskState>(
                      builder: (context, state) {
                        if (state is TaskLoaded) {
                          return Text(
                            state.template.name ?? '--',
                            style: Theme.of(context).textTheme.titleSmall,
                          );
                        }
                        return const CircularProgressIndicator.adaptive();
                      },
                    ),
                  ),
                ],
              ),
              overflow: TextOverflow.fade,
            ),
            actions: getActions(context),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(2),
              child: BlocBuilder<TaskBloc, TaskState>(
                builder: (context, state) {
                  if (state is TaskLoaded && state.loading) {
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
              context.read<TaskBloc>().add(TaskLoad(
                    api: state.activeServer!.api,
                    projectId: state.activeProject!.projectId!,
                    templateId: widget.templateId,
                  ));
            },
            builder: (context, serverState) =>
                BlocBuilder<TaskBloc, TaskState>(builder: (context, state) {
              if (state is TaskInitial || state is TaskLoading) {
                return const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                );
              }
              if (state is TaskError) {
                return SliverFillRemaining(
                  child: Text(
                    state.error.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                );
              }
              if (state is TaskLoaded) {
                return SliverList.builder(
                  itemCount: state.taskList.length,
                  itemBuilder: (context, index) {
                    final task = state.taskList[index];
                    return ListTile(
                      leading: StatusChip(status: task.status),
                      title: TextButton(
                        style: Theme.of(context)
                            .textButtonTheme
                            .style
                            ?.copyWith(
                              alignment: Alignment.centerLeft,
                            ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '#${task.id}',
                            textAlign: TextAlign.left,
                          ),
                        ),
                        onPressed: () {
                           showTaskOutput(
                             context: context,
                             api: serverState.activeServer!.api,
                             projectId:
                                 serverState.activeProject!.projectId!,
                             taskId: task.id!,
                           );
                        },
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TaskTimeWidget(task: task),
                          TaskEnvWidget(task: task),
                        ],
                      ),
                      trailing: task.status == 'running' ||
                              task.status == 'waiting'
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.stop),
                            )
                          : IconButton(
                              tooltip: context.l10n.rerunTask,
                              icon: const Icon(Icons.replay),
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
                                   templateId: task.templateId!,
                                   task: task,
                                 );
                              },
                            ),
                    );
                  },
                );
              }
              return const Center(child: Text('--'));
            }),
          ),
        ]),
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
            title: context.l10n.runTask,
            icon: Icons.play_arrow_rounded,
            onPressed: () {
              openRunTask();
            },
          ),
          AppAdaptiveAction(
            icon: Icons.refresh,
            title: context.l10n.refresh,
            onPressed: () {
              loadData();
            },
          ),
          if (autoRefresh)
            AppAdaptiveAction(
              icon: Icons.sync_rounded,
              title: context.l10n.autoRefresh,
              onPressed: () {
                stopRefresh();
              },
            )
          else
            AppAdaptiveAction(
              icon: Icons.sync_disabled_rounded,
              title: context.l10n.autoRefresh,
              onPressed: () {
                startRefresh();
              },
            ),
        ],
      )
    ];
  }
}