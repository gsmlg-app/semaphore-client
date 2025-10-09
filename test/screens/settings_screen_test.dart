import 'package:flutter/material.dart';
import 'package:semaphore_client/screens/settings/settings_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/theme_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_locale/app_locale.dart';

void main() {
  group('SettingsScreen', () {
    late ThemeBloc themeBloc;
    late SharedPreferences sharedPreferences;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      sharedPreferences = await SharedPreferences.getInstance();
      themeBloc = ThemeBloc(sharedPreferences);
    });

    tearDown(() {
      themeBloc.close();
      sharedPreferences.clear();
    });

    testWidgets('renders correctly with basic components', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        RepositoryProvider<SharedPreferences>(
          create: (context) => sharedPreferences,
          child: BlocProvider<ThemeBloc>(
            create: (context) => themeBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const SettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.byType(SettingsScreen), findsOneWidget);
      expect(find.byType(SliverAppBar), findsOneWidget);
    });

    testWidgets('displays settings sections', (WidgetTester tester) async {
      await tester.pumpWidget(
        RepositoryProvider<SharedPreferences>(
          create: (context) => sharedPreferences,
          child: BlocProvider<ThemeBloc>(
            create: (context) => themeBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const SettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.text('App Setting'), findsAtLeastNWidgets(1));
    });

    testWidgets('shows appearance option', (WidgetTester tester) async {
      await tester.pumpWidget(
        RepositoryProvider<SharedPreferences>(
          create: (context) => sharedPreferences,
          child: BlocProvider<ThemeBloc>(
            create: (context) => themeBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const SettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.brightness_medium), findsOneWidget);
    });

    testWidgets('shows accent color option', (WidgetTester tester) async {
      await tester.pumpWidget(
        RepositoryProvider<SharedPreferences>(
          create: (context) => sharedPreferences,
          child: BlocProvider<ThemeBloc>(
            create: (context) => themeBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const SettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.format_paint), findsOneWidget);
    });

    testWidgets('app settings tile has correct icon', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        RepositoryProvider<SharedPreferences>(
          create: (context) => sharedPreferences,
          child: BlocProvider<ThemeBloc>(
            create: (context) => themeBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const SettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.api), findsOneWidget);
    });
  });
}
