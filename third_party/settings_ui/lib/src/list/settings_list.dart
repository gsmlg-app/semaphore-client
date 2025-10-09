import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/src/sections/abstract_settings_section.dart';
import 'package:settings_ui/src/utils/platform_utils.dart';
import 'package:settings_ui/src/utils/settings_theme.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({
    required this.sections,
    this.shrinkWrap = false,
    this.physics,
    this.platform,
    this.contentPadding,
    super.key,
  });

  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final DevicePlatform? platform;
  final EdgeInsetsGeometry? contentPadding;
  final List<AbstractSettingsSection> sections;

  @override
  Widget build(BuildContext context) {
    final platform = this.platform ?? DevicePlatform.detect();
    final themeData = SettingsThemeData.withContext(context, platform);

    return LayoutBuilder(
        builder: ((context, constraints) => Container(
              color: themeData.settingsListBackground,
              width: constraints.maxWidth,
              alignment: Alignment.center,
              child: SettingsTheme(
                themeData: themeData,
                platform: platform,
                child: ListView.builder(
                  physics: physics,
                  shrinkWrap: shrinkWrap,
                  itemCount: sections.length,
                  padding: contentPadding ??
                      calculateDefaultPadding(platform, constraints),
                  itemBuilder: (BuildContext context, int index) {
                    return sections[index];
                  },
                ),
              ),
            )));
  }

  static EdgeInsets calculateDefaultPadding(
      DevicePlatform platform, BoxConstraints constraints) {
    final maxWidth = constraints.maxWidth;
    if (maxWidth > 810) {
      double padding = (maxWidth - 810) / 2;
      switch (platform) {
        case DevicePlatform.android:
        case DevicePlatform.fuchsia:
        case DevicePlatform.linux:
        case DevicePlatform.iOS:
        case DevicePlatform.macOS:
        case DevicePlatform.windows:
          return EdgeInsets.symmetric(horizontal: padding);
        case DevicePlatform.web:
        default:
          return EdgeInsets.symmetric(vertical: 20, horizontal: padding);
      }
    }
    switch (platform) {
      case DevicePlatform.android:
      case DevicePlatform.fuchsia:
      case DevicePlatform.linux:
      case DevicePlatform.iOS:
      case DevicePlatform.macOS:
      case DevicePlatform.windows:
        return EdgeInsets.symmetric(vertical: 0);
      case DevicePlatform.web:
      case DevicePlatform.custom:
        return EdgeInsets.symmetric(vertical: 20);
    }
  }
}
