import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:theme_bloc/theme_bloc.dart';
import 'package:app_theme/app_theme.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_client/screens/settings/select_brightness.dart';
import 'package:semaphore_client/screens/settings/select_theme.dart';
import 'package:semaphore_client/screens/settings/app_settings_screen.dart';

class RootSettingList extends StatelessWidget {
  const RootSettingList({super.key});

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeBloc>();

    return BlocBuilder<ThemeBloc, ThemeState>(
        bloc: themeBloc,
        builder: (context, state) {
          return SettingsList(
            sections: [
              SettingsSection(
                title: const Text('Semaphore'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: const Icon(Icons.computer),
                    title: Text(context.l10n!.smenuSemaphoreServer),
                    onPressed: (context) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AppSettingsScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SettingsSection(
                title: Text(context.l10n!.smenuTheme),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: const Icon(Icons.brightness_6),
                    title: Text(context.l10n!.titleSelectAppearance),
                    value: Text(state.themeMode.title),
                    onPressed: (context) {
                      context.goNamed(SettingsSelectBrightness.name);
                    },
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.color_lens),
                    title: Text(context.l10n!.titleSelectColorTheme),
                    value: Text(state.theme.name),
                    onPressed: (context) {
                      context.goNamed(SettingsSelectTheme.name);
                    },
                  ),
                ],
              ),
            ],
          );
        });
  }
}
