import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:server_bloc/server.dart';
import 'package:variable_bloc/variable.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_database/server.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';

class VariableScreen extends StatefulWidget {
  const VariableScreen({super.key});
  static const name = 'variable';
  static const path = 'variable';
  @override
  State<VariableScreen> createState() => _VariableScreenState();
}

class _VariableScreenState extends State<VariableScreen>
    with WidgetsBindingObserver, AutoRefreshMixin {
  @override
  void loadData() {
    final state = context.read<SemaphoreServerBloc>().state;
    context.read<VariableBloc>().add(
        VariableLoad(state.activeServer!.api, state.activeProject!.projectId!));
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
              title: Text(context.l10n!.titleVariable),
              actions: getActions(context, isSmall: true),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<VariableBloc, VariableState>(
                  builder: (context, state) {
                    if (state is VariableLoaded && state.loading) {
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
                context.read<VariableBloc>().add(VariableLoad(
                    state.activeServer!.api, state.activeProject!.projectId!));
              },
              child: BlocBuilder<VariableBloc, VariableState>(
                builder: (context, state) {
                  if (state is VariableInitial || state is VariableLoading) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    );
                  }
                  if (state is VariableError) {
                    return SliverFillRemaining(
                      child: Text(
                        state.error.toString(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    );
                  }
                  if (state is VariableLoaded) {
                    return SliverList.builder(
                      itemCount: state.variables.length,
                      itemBuilder: (context, index) {
                        final variable = state.variables[index];
                        return ListTile(
                          leading: const Icon(Icons.data_object),
                          title: Text(variable.name ?? '--'),
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
              title: Text(context.l10n!.titleVariable),
              actions: getActions(context),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2),
                child: BlocBuilder<VariableBloc, VariableState>(
                  builder: (context, state) {
                    if (state is VariableLoaded && state.loading) {
                      return const LinearProgressIndicator();
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
            BlocBuilder<VariableBloc, VariableState>(
              builder: (context, state) {
                if (state is VariableInitial || state is VariableLoading) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if (state is VariableError) {
                  return SliverFillRemaining(
                    child: Text(
                      state.error.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  );
                }
                if (state is VariableLoaded) {
                  return SliverFillRemaining(
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('Name')),
                        DataColumn(label: Text('Action')),
                      ],
                      rows: [
                        for (final variable in state.variables)
                          DataRow(cells: [
                            DataCell(
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  variable.name ?? 'N/A',
                                  maxLines: 1,
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