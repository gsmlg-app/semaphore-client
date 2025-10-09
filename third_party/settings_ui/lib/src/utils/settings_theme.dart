import 'package:flutter/material.dart';
import 'package:settings_ui/src/utils/platform_utils.dart';

class SettingsTheme extends InheritedWidget {
  final SettingsThemeData themeData;
  final DevicePlatform platform;

  SettingsTheme({
    required this.themeData,
    required this.platform,
    required super.child,
  });

  @override
  bool updateShouldNotify(SettingsTheme oldWidget) => true;

  static SettingsTheme? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SettingsTheme>();
  }

  static SettingsTheme of(BuildContext context) {
    final SettingsTheme? result = maybeOf(context);
    assert(result != null, 'No SettingsTheme found in context');
    return result!;
  }
}

class SettingsThemeData {
  static SettingsThemeData withContext(
      BuildContext context, DevicePlatform? platform) {
    platform ??= DevicePlatform.detect();
    final colorScheme = Theme.of(context).colorScheme;
    return withColorScheme(colorScheme, platform);
  }

  static SettingsThemeData withColorScheme(
      ColorScheme colorScheme, DevicePlatform? platform) {
    platform ??= DevicePlatform.detect();
    switch (platform) {
      case DevicePlatform.android:
      case DevicePlatform.fuchsia:
      case DevicePlatform.linux:
        return _androidTheme(colorScheme);
      case DevicePlatform.iOS:
      case DevicePlatform.macOS:
      case DevicePlatform.windows:
        return _iosTheme(colorScheme);
      default:
        return _webTheme(colorScheme);
    }
  }

  static SettingsThemeData _androidTheme(
    ColorScheme colorScheme,
  ) {
    final listBackground = colorScheme.surface;

    final titleTextColor = colorScheme.onSecondaryContainer;

    final settingsTileTextColor = colorScheme.secondary;

    final tileHighlightColor = colorScheme.onSecondaryContainer;

    final tileDescriptionTextColor = colorScheme.tertiary;

    final leadingIconsColor = colorScheme.primary;

    final inactiveTitleColor = colorScheme.onSurfaceVariant;

    final inactiveSubtitleColor = colorScheme.onSurfaceVariant;

    return SettingsThemeData(
      tileHighlightColor: tileHighlightColor,
      settingsListBackground: listBackground,
      titleTextColor: titleTextColor,
      settingsTileTextColor: settingsTileTextColor,
      tileDescriptionTextColor: tileDescriptionTextColor,
      leadingIconsColor: leadingIconsColor,
      inactiveTitleColor: inactiveTitleColor,
      inactiveSubtitleColor: inactiveSubtitleColor,
    );
  }

  static SettingsThemeData _iosTheme(
    ColorScheme colorScheme,
  ) {
    final listBackground = colorScheme.surface;

    final sectionBackground = colorScheme.secondaryContainer;

    final titleTextColor = colorScheme.onSecondaryContainer;

    final settingsTileTextColor = colorScheme.secondary;

    final dividerColor = colorScheme.onSecondaryContainer;

    final trailingTextColor = colorScheme.tertiary;

    final tileHighlightColor = colorScheme.onTertiaryContainer;

    final leadingIconsColor = colorScheme.primary;

    return SettingsThemeData(
      tileHighlightColor: tileHighlightColor,
      settingsListBackground: listBackground,
      settingsSectionBackground: sectionBackground,
      titleTextColor: titleTextColor,
      dividerColor: dividerColor,
      trailingTextColor: trailingTextColor,
      settingsTileTextColor: settingsTileTextColor,
      leadingIconsColor: leadingIconsColor,
      inactiveTitleColor: colorScheme.onSurfaceVariant,
      inactiveSubtitleColor: colorScheme.onSurfaceVariant,
    );
  }

  static SettingsThemeData _webTheme(
    ColorScheme colorScheme,
  ) {
    final listBackground = colorScheme.surface;

    final titleTextColor = colorScheme.onSecondaryContainer;

    final settingsTileTextColor = colorScheme.secondary;

    final tileHighlightColor = colorScheme.onTertiaryContainer;

    final tileDescriptionTextColor = colorScheme.tertiary;

    final leadingIconsColor = colorScheme.primary;

    final sectionBackground = colorScheme.secondaryContainer;

    return SettingsThemeData(
      tileHighlightColor: tileHighlightColor,
      settingsListBackground: listBackground,
      titleTextColor: titleTextColor,
      settingsSectionBackground: sectionBackground,
      settingsTileTextColor: settingsTileTextColor,
      tileDescriptionTextColor: tileDescriptionTextColor,
      leadingIconsColor: leadingIconsColor,
    );
  }

  const SettingsThemeData({
    this.trailingTextColor,
    this.settingsListBackground,
    this.settingsSectionBackground,
    this.dividerColor,
    this.tileHighlightColor,
    this.titleTextColor,
    this.leadingIconsColor,
    this.tileDescriptionTextColor,
    this.settingsTileTextColor,
    this.inactiveTitleColor,
    this.inactiveSubtitleColor,
  });

  final Color? settingsListBackground;
  final Color? trailingTextColor;
  final Color? leadingIconsColor;
  final Color? settingsSectionBackground;
  final Color? dividerColor;
  final Color? tileDescriptionTextColor;
  final Color? tileHighlightColor;
  final Color? titleTextColor;
  final Color? settingsTileTextColor;
  final Color? inactiveTitleColor;
  final Color? inactiveSubtitleColor;

  SettingsThemeData merge({
    SettingsThemeData? theme,
  }) {
    if (theme == null) return this;

    return copyWith(
      leadingIconsColor: theme.leadingIconsColor,
      tileDescriptionTextColor: theme.tileDescriptionTextColor,
      dividerColor: theme.dividerColor,
      trailingTextColor: theme.trailingTextColor,
      settingsListBackground: theme.settingsListBackground,
      settingsSectionBackground: theme.settingsSectionBackground,
      settingsTileTextColor: theme.settingsTileTextColor,
      tileHighlightColor: theme.tileHighlightColor,
      titleTextColor: theme.titleTextColor,
      inactiveTitleColor: theme.inactiveTitleColor,
      inactiveSubtitleColor: theme.inactiveSubtitleColor,
    );
  }

  SettingsThemeData copyWith({
    Color? settingsListBackground,
    Color? trailingTextColor,
    Color? leadingIconsColor,
    Color? settingsSectionBackground,
    Color? dividerColor,
    Color? tileDescriptionTextColor,
    Color? tileHighlightColor,
    Color? titleTextColor,
    Color? settingsTileTextColor,
    Color? inactiveTitleColor,
    Color? inactiveSubtitleColor,
  }) {
    return SettingsThemeData(
      settingsListBackground:
          settingsListBackground ?? this.settingsListBackground,
      trailingTextColor: trailingTextColor ?? this.trailingTextColor,
      leadingIconsColor: leadingIconsColor ?? this.leadingIconsColor,
      settingsSectionBackground:
          settingsSectionBackground ?? this.settingsSectionBackground,
      dividerColor: dividerColor ?? this.dividerColor,
      tileDescriptionTextColor:
          tileDescriptionTextColor ?? this.tileDescriptionTextColor,
      tileHighlightColor: tileHighlightColor ?? this.tileHighlightColor,
      titleTextColor: titleTextColor ?? this.titleTextColor,
      inactiveTitleColor: inactiveTitleColor ?? this.inactiveTitleColor,
      inactiveSubtitleColor:
          inactiveSubtitleColor ?? this.inactiveSubtitleColor,
      settingsTileTextColor:
          settingsTileTextColor ?? this.settingsTileTextColor,
    );
  }
}
