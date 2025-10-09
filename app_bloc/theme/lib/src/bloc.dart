import 'package:app_theme/app_theme.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'event.dart';
part 'state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  SharedPreferences pref;

  ThemeBloc(this.pref) : super(ThemeState.initial(pref)) {
    on<ChangeTheme>(_onThemeChanged);
    on<ChangeThemeMode>(_onThemeModeChanged);
  }

  Future<void> _onThemeChanged(
    ChangeTheme event,
    Emitter<ThemeState> emitter,
  ) async {
    emitter(state.copyWith(theme: event.theme));
    pref.setString('themeName', event.theme.name);
  }

  Future<void> _onThemeModeChanged(
    ChangeThemeMode event,
    Emitter<ThemeState> emitter,
  ) async {
    emitter(state.copyWith(themeMode: event.themeMode));
    pref.setString('themeMode', event.themeMode.name);
  }
}
