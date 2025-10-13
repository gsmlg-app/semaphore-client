import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:settings_ui/gsmlg_settings.dart';
import 'package:theme_bloc/theme_bloc.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_client/screens/settings/settings_screen.dart';

class SettingsSelectBrightness extends StatelessWidget {
  static const name = 'Select Brightness';
  static const path = 'select_brightness';
  static const String fullPath = '${SettingsScreen.path}/$path';
  const SettingsSelectBrightness({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAdaptiveScaffold(
      selectedIndex: Destinations.indexOf(
        const Key(SettingsScreen.name),
        context,
      ),
      onSelectedIndexChange: (idx) => Destinations.changeHandler(idx, context),
      destinations: Destinations.navs(context),
      body: (context) => SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(title: Text(context.l10n!.titleSelectAppearance)),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: _buildBrightnessSettings(context),
                ),
              ]),
            ),
          ],
        ),
      ),
      largeBody: (context) => SafeArea(
        child: Column(
          children: [
            Text(
              context.l10n!.settingsTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: _buildBrightnessSettings(context),
            ),
          ],
        ),
      ),
      largeSecondaryBody: (_) => SafeArea(child: Container()),
    );
  }

  Widget _buildBrightnessSettings(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return SettingsList(
          sections: [
            SettingsSection(
              title: Text(context.l10n!.titleSelectAppearance),
              tiles: [
                SettingsTile.checkTile(
                  leading: const Icon(Icons.brightness_auto),
                  title: const Text('System'),
                  checked: state.themeMode == ThemeMode.system,
                  onPressed: (context) {
                    context.read<ThemeBloc>().add(
                      const ChangeThemeMode(ThemeMode.system),
                    );
                  },
                ),
                SettingsTile.checkTile(
                  leading: const Icon(Icons.light_mode),
                  title: const Text('Light'),
                  checked: state.themeMode == ThemeMode.light,
                  onPressed: (context) {
                    context.read<ThemeBloc>().add(
                      const ChangeThemeMode(ThemeMode.light),
                    );
                  },
                ),
                SettingsTile.checkTile(
                  leading: const Icon(Icons.dark_mode),
                  title: const Text('Dark'),
                  checked: state.themeMode == ThemeMode.dark,
                  onPressed: (context) {
                    context.read<ThemeBloc>().add(
                      const ChangeThemeMode(ThemeMode.dark),
                    );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
