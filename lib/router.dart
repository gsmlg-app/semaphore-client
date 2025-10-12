import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:semaphore_client/screens/error/error_screen.dart';
import 'package:semaphore_client/screens/project/routes.dart';
import 'package:semaphore_client/screens/server/server_screen.dart';
import 'package:semaphore_client/screens/settings/select_brightness.dart';
import 'package:semaphore_client/screens/settings/select_server.dart';
import 'package:semaphore_client/screens/settings/select_theme.dart';
import 'package:semaphore_client/screens/settings/settings_screen.dart';
import 'package:semaphore_client/screens/splash/splash_screen.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

final router = GoRouter(
  navigatorKey: _key,
  debugLogDiagnostics: true,
  initialLocation: SplashScreen.path,
  routes: routes,
  redirect: (BuildContext context, GoRouterState state) {
    return null;
  },
  errorBuilder: (context, state) {
    return ErrorScreen(routerState: state);
  },
);

List<GoRoute> routes = [
  GoRoute(
    name: SplashScreen.name,
    path: SplashScreen.path,
    pageBuilder: (context, state) {
      return MaterialPage<void>(
        key: state.pageKey,
        child: const SplashScreen(),
      );
    },
  ),
  GoRoute(
    name: ErrorScreen.name,
    path: ErrorScreen.path,
    pageBuilder: (context, state) {
      return MaterialPage<void>(
        key: state.pageKey,
        child: ErrorScreen(routerState: state),
      );
    },
  ),
  GoRoute(
    name: ServerScreen.name,
    path: ServerScreen.path,
    pageBuilder: (context, state) {
      return NoTransitionPage<void>(
        key: state.pageKey,
        child: const ServerScreen(),
      );
    },
  ),
  GoRoute(
    name: SettingsScreen.name,
    path: SettingsScreen.path,
    pageBuilder: (context, state) {
      return NoTransitionPage<void>(
        key: state.pageKey,
        child: const SettingsScreen(),
      );
    },
    routes: [
      GoRoute(
        name: SettingsSelectBrightness.name,
        path: SettingsSelectBrightness.path,
        pageBuilder: (context, state) {
          return NoTransitionPage<void>(
            key: state.pageKey,
            child: const SettingsSelectBrightness(),
          );
        },
      ),
      GoRoute(
        name: SettingsSelectTheme.name,
        path: SettingsSelectTheme.path,
        pageBuilder: (context, state) {
          return NoTransitionPage<void>(
            key: state.pageKey,
            child: const SettingsSelectTheme(),
          );
        },
      ),
      GoRoute(
        name: SettingsSelectServer.name,
        path: SettingsSelectServer.path,
        pageBuilder: (context, state) {
          return NoTransitionPage<void>(
            key: state.pageKey,
            child: const SettingsSelectServer(),
          );
        },
      ),
    ],
  ),
  projectRoutes,
];
