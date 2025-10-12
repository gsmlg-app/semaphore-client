import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app_feedback/app_feedback.dart';
import 'package:server_bloc/server.dart';
import 'package:semaphore_client/screens/project/activity_screen.dart';
import 'package:semaphore_client/screens/project/history_screen.dart';
import 'package:semaphore_client/screens/project/integration_screen.dart';
import 'package:semaphore_client/screens/project/inventory_screen.dart';
import 'package:semaphore_client/screens/project/key_store_screen.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';
import 'package:semaphore_client/screens/project/repository_screen.dart';
import 'package:semaphore_client/screens/project/schedule_screen.dart';
import 'package:semaphore_client/screens/project/team_screen.dart';
import 'package:semaphore_client/screens/project/template_screen.dart';
import 'package:semaphore_client/screens/project/template_task_screen.dart';
import 'package:semaphore_client/screens/project/variable_screen.dart';
import 'package:semaphore_client/screens/server/server_screen.dart';
import 'package:semaphore_client/screens/settings/select_server.dart';
GoRoute projectRoutes = GoRoute(
  name: ProjectScreen.name,
  path: ProjectScreen.path,
  redirect: (BuildContext context, GoRouterState state) {
    if ((state.fullPath ?? '').startsWith(ProjectScreen.path) &&
        context.read<SemaphoreServerBloc>().state.activeProject == null) {
      Timer(const Duration(milliseconds: 100), () {
        showSnackbar(
          context: context,
          showCloseIcon: true,
          message: const Text('Please add a server and select a project first'),
        );
      });
      return ServerScreen.path;
    }
    return null;
  },
  pageBuilder: (context, state) {
    return NoTransitionPage<void>(
      key: state.pageKey,
      child: const ProjectScreen(),
    );
  },
  routes: [
    GoRoute(
      name: ActivityScreen.name,
      path: ActivityScreen.path,
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const ActivityScreen(),
        );
      },
    ),
    GoRoute(
      name: HistoryScreen.name,
      path: HistoryScreen.path,
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const HistoryScreen(),
        );
      },
    ),
    GoRoute(
      name: TemplateScreen.name,
      path: TemplateScreen.path,
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const TemplateScreen(),
        );
      },
      routes: [
        GoRoute(
          name: TemplateTaskScreen.name,
          path: TemplateTaskScreen.path,
          pageBuilder: (context, state) {
            final templateId = int.parse(state.pathParameters['templateId']!);
            return NoTransitionPage<void>(
              key: state.pageKey,
              child: TemplateTaskScreen(templateId: templateId),
            );
          },
        ),
      ],
    ),
    GoRoute(
      name: ScheduleScreen.name,
      path: ScheduleScreen.path,
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const ScheduleScreen(),
        );
      },
    ),
    GoRoute(
      name: InventoryScreen.name,
      path: InventoryScreen.path,
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const InventoryScreen(),
        );
      },
    ),
    GoRoute(
      name: VariableScreen.name,
      path: VariableScreen.path,
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const VariableScreen(),
        );
      },
    ),
    GoRoute(
      name: KeyStoreScreen.name,
      path: KeyStoreScreen.path,
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const KeyStoreScreen(),
        );
      },
    ),
    GoRoute(
      name: RepositoryScreen.name,
      path: RepositoryScreen.path,
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const RepositoryScreen(),
        );
      },
    ),
    GoRoute(
      name: IntegrationScreen.name,
      path: IntegrationScreen.path,
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const IntegrationScreen(),
        );
      },
    ),
    GoRoute(
      name: TeamScreen.name,
      path: TeamScreen.path,
      pageBuilder: (context, state) {
        return NoTransitionPage<void>(
          key: state.pageKey,
          child: const TeamScreen(),
        );
      },
    ),
  ],
);
