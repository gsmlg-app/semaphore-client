import 'package:app_locale/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:semaphore_client/screens/project/project_screen.dart';
import 'package:semaphore_client/screens/server/server_screen.dart';
import 'package:semaphore_client/screens/settings/settings_screen.dart';

class Destinations {
  static List<NavigationDestination> navs(BuildContext context) =>
      <NavigationDestination>[
        NavigationDestination(
          key: const Key(ServerScreen.name),
          icon: const Icon(Icons.dns_outlined),
          selectedIcon: const Icon(Icons.dns),
          label: context.l10n!.smenuSemaphore,
        ),
        NavigationDestination(
          key: const Key(ProjectScreen.name),
          icon: const Icon(Icons.work_outline),
          selectedIcon: const Icon(Icons.work),
          label: context.l10n!.destinationProject,
        ),
        NavigationDestination(
          key: const Key(SettingsScreen.name),
          icon: const Icon(Icons.settings_outlined),
          selectedIcon: const Icon(Icons.settings),
          label: context.l10n!.destinationSetting,
        ),
      ];

  static int indexOf(Key key, BuildContext context) {
    return navs(context).indexWhere((element) => element.key == key);
  }

  static void changeHandler(int idx, BuildContext context) {
    void _ = switch (idx) {
      0 => context.goNamed(ServerScreen.name),
      1 => context.goNamed(ProjectScreen.name),
      2 => context.goNamed(SettingsScreen.name),
      int() => context.goNamed(ServerScreen.name),
    };
  }
}
