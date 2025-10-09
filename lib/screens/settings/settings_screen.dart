import 'package:app_adaptive_widgets/app_adaptive_widgets.dart';
import 'package:app_feedback/app_feedback.dart';
import 'package:app_locale/app_locale.dart';
import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:semaphore_client/destination.dart';
import 'package:semaphore_client/screens/settings/app_settings_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:theme_bloc/theme_bloc.dart';

class SettingsScreen extends StatelessWidget {
  static const name = 'Settings';
  static const path = '/settings';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAdaptiveScaffold(
      selectedIndex: Destinations.indexOf(const Key(name), context),
      onSelectedIndexChange: (idx) => Destinations.changeHandler(idx, context),
      destinations: Destinations.navs(context),
      body: (context) {
        final themeBloc = context.read<ThemeBloc>();
        final theme = themeBloc.state.theme;
        final isLight = Theme.of(context).brightness == Brightness.light;

        return SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(title: Text(context.l10n.settingsTitle)),
              SliverFillRemaining(
                child: BlocBuilder<ThemeBloc, ThemeState>(
                  bloc: themeBloc,
                  builder: (context, state) {
                    return SettingsList(
                      sections: [
                        SettingsSection(
                          title: Text('App Setting'),
                          tiles: <SettingsTile>[
                            SettingsTile.navigation(
                              leading: const Icon(Icons.api),
                              title: Text('App Setting'),
                              onPressed: (context) {
                                context.goNamed(AppSettingsScreen.name);
                              },
                            ),
                          ],
                        ),
                        SettingsSection(
                          title: Text(context.l10n.smenuTheme),
                          tiles: <SettingsTile>[
                            SettingsTile.navigation(
                              leading: const Icon(Icons.brightness_medium),
                              title: Text(context.l10n.appearance),
                              value: themeBloc.state.themeMode.icon,
                              onPressed: (context) {
                                showBottomSheetActionList(
                                  context: context,
                                  actions: [
                                    BottomSheetAction(
                                      title: ThemeMode.light.icon,
                                      onTap: () {
                                        context.read<ThemeBloc>().add(
                                          const ChangeThemeMode(
                                            ThemeMode.light,
                                          ),
                                        );
                                      },
                                    ),
                                    BottomSheetAction(
                                      title: ThemeMode.dark.icon,
                                      onTap: () {
                                        context.read<ThemeBloc>().add(
                                          const ChangeThemeMode(ThemeMode.dark),
                                        );
                                      },
                                    ),
                                    BottomSheetAction(
                                      title: ThemeMode.system.icon,
                                      onTap: () {
                                        context.read<ThemeBloc>().add(
                                          const ChangeThemeMode(
                                            ThemeMode.system,
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            ),
                            SettingsTile.navigation(
                              leading: const Icon(Icons.format_paint),
                              title: Text(context.l10n.accentColor),
                              value: SizedBox(
                                width:
                                    Theme.of(
                                      context,
                                    ).textTheme.bodyLarge!.fontSize! *
                                    6,
                                height: Theme.of(
                                  context,
                                ).textTheme.bodyLarge!.fontSize,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: Theme.of(
                                          context,
                                        ).textTheme.bodyLarge!.fontSize,
                                        decoration: BoxDecoration(
                                          color: isLight
                                              ? theme
                                                    .lightTheme
                                                    .colorScheme
                                                    .primary
                                              : theme
                                                    .darkTheme
                                                    .colorScheme
                                                    .primary,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: Theme.of(
                                          context,
                                        ).textTheme.bodyLarge!.fontSize,
                                        decoration: BoxDecoration(
                                          color: isLight
                                              ? theme
                                                    .lightTheme
                                                    .colorScheme
                                                    .secondary
                                              : theme
                                                    .darkTheme
                                                    .colorScheme
                                                    .secondary,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: Theme.of(
                                          context,
                                        ).textTheme.bodyLarge!.fontSize,
                                        decoration: BoxDecoration(
                                          color: isLight
                                              ? theme
                                                    .lightTheme
                                                    .colorScheme
                                                    .tertiary
                                              : theme
                                                    .darkTheme
                                                    .colorScheme
                                                    .tertiary,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Theme.of(
                                        context,
                                      ).textTheme.bodyLarge!.fontSize,
                                    ),
                                  ],
                                ),
                              ),
                              onPressed: (context) {
                                showBottomSheetActionList(
                                  context: context,
                                  actions: themeList.map<BottomSheetAction>((
                                    theme,
                                  ) {
                                    return BottomSheetAction(
                                      title: Text(theme.name),
                                      onTap: () {
                                        themeBloc.add(ChangeTheme(theme));
                                      },
                                    );
                                  }).toList(),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
      smallSecondaryBody: AdaptiveScaffold.emptyBuilder,
    );
  }
}
