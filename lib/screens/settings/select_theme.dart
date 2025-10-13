import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:settings_ui/gsmlg_settings.dart';
import 'package:theme_bloc/theme_bloc.dart';
import 'package:app_theme/app_theme.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_client/screens/settings/settings_screen.dart';

class SettingsSelectTheme extends StatelessWidget {
  static const name = 'Select Theme';
  static const path = 'select_theme';
  static const String fullPath = '${SettingsScreen.path}/$path';
  const SettingsSelectTheme({super.key});

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
            SliverAppBar(title: Text(context.l10n!.titleSelectColorTheme)),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: _buildThemeSettings(context),
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
              child: _buildThemeSettings(context),
            ),
          ],
        ),
      ),
      largeSecondaryBody: (_) => SafeArea(child: Container()),
    );
  }

  Widget _buildThemeSettings(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return SettingsList(
          sections: [
            SettingsSection(
              title: Text(context.l10n!.titleSelectColorTheme),
              tiles: themeList.map((theme) {
                return SettingsTile.checkTile(
                  leading: Icon(
                    Icons.palette,
                    color: theme.lightTheme.colorScheme.primary,
                  ),
                  title: Text(theme.name),
                  checked: state.theme.name == theme.name,
                  onPressed: (context) {
                    context.read<ThemeBloc>().add(ChangeTheme(theme));
                  },
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
