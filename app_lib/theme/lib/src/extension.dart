import 'package:flutter/material.dart' show ThemeMode, Widget, Icons, Icon;

extension ThemeModeExtension on ThemeMode {
  static ThemeMode fromString(String? name) {
    switch (name) {
      case 'system':
      case 'ThemeMode.system':
        return ThemeMode.system;
      case 'light':
      case 'ThemeMode.light':
        return ThemeMode.light;
      case 'dark':
      case 'ThemeMode.dark':
        return ThemeMode.dark;
    }
    return ThemeMode.system;
  }

  String get title {
    switch (this) {
      case ThemeMode.system:
        return 'System';
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
    }
  }

  Widget get icon {
    switch (this) {
      case ThemeMode.system:
        return const Icon(Icons.brightness_auto);
      case ThemeMode.light:
        return const Icon(Icons.light_mode);
      case ThemeMode.dark:
        return const Icon(Icons.dark_mode);
    }
  }

  Widget get iconOutlined {
    switch (this) {
      case ThemeMode.system:
        return const Icon(Icons.brightness_auto_outlined);
      case ThemeMode.light:
        return const Icon(Icons.light_mode_outlined);
      case ThemeMode.dark:
        return const Icon(Icons.dark_mode_outlined);
    }
  }
}
