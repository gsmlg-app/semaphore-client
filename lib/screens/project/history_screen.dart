import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:history_bloc/history.dart';
import 'package:server_bloc/server.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_feedback/components/task/run_task.dart';
import 'package:app_feedback/components/task/show_task_output.dart';
import 'package:app_feedback/components/task/status_chip.dart';
import 'package:app_feedback/components/task/task_env.dart';
import 'package:app_feedback/components/task/task_time.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_database/server.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';
import 'package:semaphore_client/screens/project/template_task_screen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});
  static const name = 'history';
  static const path = 'history';
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}
class _HistoryScreenState extends State<HistoryScreen>
    with WidgetsBindingObserver, AutoRefreshMixin {
  @override
  void loadData() {
    final state = context.read<SemaphoreServerBloc>().state;
    context.read<HistoryBloc>().add(
        HistoryLoad(state.activeServer!.api, state.activeProject!.projectId!));
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
          if (!autoRefresh)
            AppAdaptiveAction(
              icon: Icons.sync_rounded,
              title: context.l10n.autoRefresh,
              onPressed: () => startRefresh(),
            )
          else
            AppAdaptiveAction(
              disabled: autoRefresh,
              icon: Icons.sync_disabled_rounded,
              title: context.l10n.autoRefresh,
              onPressed: () => stopRefresh(),
            ),
        ],
      ),
    ];
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
      body: (context) => SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text(context.l10n.titleHistory),
              actions: getActions(context),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<HistoryBloc, HistoryState>(
                  builder: (context, state) {
                    if (state is HistoryLoaded && state.loading) {
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
                loadData();
              },
              builder: (context, serverState) =>
                  BlocBuilder<HistoryBloc, HistoryState>(
                      builder: (context, state) {
                if (state is HistoryInitial || state is HistoryLoading) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                }
                if (state is HistoryError) {
                  return SliverFillRemaining(
                      child: Text(
                        state.error.toString(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                  );
                }
                if (state is HistoryLoaded) {
                  return SliverList.builder(
                    itemCount: state.history.length,
                    itemBuilder: (context, index) {
                      final history = state.history[index];
                      return ListTile(
                          leading: StatusChip(status: history.status),
                          title: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: GestureDetector(
                                    child: Text(
                                      '#${history.id}',
                                    ),
                                    onTap: () => showTaskOutput(
                                      context: context,
                                      api: serverState.activeServer!.api,
                                      projectId:
                                          serverState.activeProject!.projectId!,
                                      taskId: history.id!,
                                    ),
                                  ),
                                ),
                                const WidgetSpan(child: Icon(Icons.arrow_back)),
                                WidgetSpan(
                                  child: GestureDetector(
                                    child: Text('${history.tplAlias}'),
                                    onTap: () => context.goNamed(
                                      TemplateTaskScreen.name,
                                      pathParameters: {
                                        'templateId':
                                            history.templateId.toString(),
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TaskTimeWidget(task: history),
                              TaskEnvWidget(task: history),
                            ],
                          ),
                          trailing: history.status == 'running' ||
                                  history.status == 'waiting'
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
                                      projectId: 1, // history.projectId!,
                                      templateId: history.templateId!,
                                      task: history,
                                    );
                                  },
                                ));
                    },
                  );
                }
                return const SizedBox();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
