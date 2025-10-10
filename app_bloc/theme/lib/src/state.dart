import 'package:app_theme/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeState extends Equatable {
  factory ThemeState.initial(SharedPreferences pref) {
    final themeName = pref.getString('themeName');
    final themeMode = switch (pref.getString('themeMode')) {
      'light' => ThemeMode.light,
      'dark' => ThemeMode.dark,
      _ => ThemeMode.system,
    };
    final theme = themeList.firstWhere(
      (e) => e.name == themeName,
      orElse: () => themeList.first,
    );
    return ThemeState(theme: theme, themeMode: themeMode);
  }

  const ThemeState({required this.theme, this.themeMode = ThemeMode.system});

  final AppTheme theme;
  final ThemeMode themeMode;

  @override
  List<Object> get props => [theme, themeMode];

  ThemeState copyWith({AppTheme? theme, ThemeMode? themeMode}) {
    return ThemeState(
      theme: theme ?? this.theme,
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
