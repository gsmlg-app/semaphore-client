part of 'bloc.dart';

sealed class ThemeEvent {
  const ThemeEvent();
}

final class ChangeThemeMode extends ThemeEvent {
  final ThemeMode themeMode;

  const ChangeThemeMode(this.themeMode);
}

final class ChangeTheme extends ThemeEvent {
  final AppTheme theme;

  const ChangeTheme(this.theme);
}
