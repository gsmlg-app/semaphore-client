import 'package:app_locale/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:semaphore_client/screens/home/home_screen.dart';
import 'package:semaphore_client/screens/settings/settings_screen.dart';
import 'package:go_router/go_router.dart';

class Destinations {
  static List<NavigationDestination> navs(BuildContext context) =>
      <NavigationDestination>[
        NavigationDestination(
          key: const Key(HomeScreen.name),
          icon: const Icon(Icons.home_outlined),
          selectedIcon: const Icon(Icons.home),
          label: context.l10n.navHome,
        ),
        NavigationDestination(
          key: const Key(SettingsScreen.name),
          icon: const Icon(Icons.settings_outlined),
          selectedIcon: const Icon(Icons.settings),
          label: context.l10n.navSetting,
        ),
      ];

  static int indexOf(Key key, BuildContext context) {
    return navs(context).indexWhere((element) => element.key == key);
  }

  static void changeHandler(int idx, BuildContext context) {
    void _ = switch (idx) {
      0 => context.goNamed(HomeScreen.name),
      1 => context.goNamed(SettingsScreen.name),
      int() => context.goNamed(HomeScreen.name),
    };
  }
}
