import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:theme_bloc/theme_bloc.dart';
import 'package:server_bloc/server.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_client/screens/settings/select_brightness.dart';
import 'package:semaphore_client/screens/settings/select_server.dart';
import 'package:semaphore_client/screens/settings/select_theme.dart';

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
                title: Text(context.l10n!.smenuSemaphore),
                tiles: <Widget>[
                  SettingsTile.navigation(
                    leading: const Icon(Icons.computer),
                    title: Text(context.l10n!.smenuSemaphoreServer),
                    value:
                        BlocConsumer<SemaphoreServerBloc, SemaphoreServerState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        return Text(
                          state.activeServer?.name == null
                              ? context.l10n!.clickToSelect
                              : '${state.activeServer!.name}/${state.activeProject?.name}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        );
                      },
                    ),
                    onPressed: (context) {
                      context.read<SemaphoreServerBloc>().add(LoadServers());
                      context.goNamed(SettingsSelectServer.name);
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
                    onPressed: (context) {
                      context.goNamed(SettingsSelectBrightness.name);
                    },
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.color_lens),
                    title: Text(context.l10n!.titleSelectColorTheme),
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
