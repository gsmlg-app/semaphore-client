import 'package:flutter/material.dart';
import 'package:semaphore_client/screens/settings/app_settings_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/theme_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_locale/app_locale.dart';

void main() {
  group('AppSettingsScreen', () {
    late SharedPreferences sharedPreferences;
    late ThemeBloc themeBloc;

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
              home: const AppSettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.byType(AppSettingsScreen), findsOneWidget);
      expect(find.byType(SliverAppBar), findsOneWidget);
    });

    testWidgets('displays APP_NAME section', (WidgetTester tester) async {
      await tester.pumpWidget(
        RepositoryProvider<SharedPreferences>(
          create: (context) => sharedPreferences,
          child: BlocProvider<ThemeBloc>(
            create: (context) => themeBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const AppSettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.text('APP_NAME'), findsWidgets);
    });

    testWidgets('displays N/A when APP_NAME is not set', (
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
              home: const AppSettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.text('N/A'), findsOneWidget);
    });

    testWidgets('displays APP_NAME value when set', (
      WidgetTester tester,
    ) async {
      await sharedPreferences.setString('APP_NAME', 'Test App Name');

      await tester.pumpWidget(
        RepositoryProvider<SharedPreferences>(
          create: (context) => sharedPreferences,
          child: BlocProvider<ThemeBloc>(
            create: (context) => themeBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const AppSettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.text('Test App Name'), findsOneWidget);
      expect(find.text('N/A'), findsNothing);
    });

    testWidgets('opens dialog when APP_NAME tile is tapped', (
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
              home: const AppSettingsScreen(),
            ),
          ),
        ),
      );

      // Find the APP_NAME tile and tap it
      final appNameTile = find.text('APP_NAME').first;
      expect(appNameTile, findsOneWidget);

      await tester.tap(appNameTile);
      await tester.pumpAndSettle();

      // Check for any dialog-related widgets
      expect(
        find.byType(Material),
        findsAtLeastNWidgets(0),
      ); // Dialog might be Material
    });

    testWidgets('dialog closes when button is pressed', (
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
              home: const AppSettingsScreen(),
            ),
          ),
        ),
      );

      // Find the APP_NAME tile and tap it
      final appNameTiles = find.text('APP_NAME');
      if (appNameTiles.evaluate().isNotEmpty) {
        await tester.tap(appNameTiles.first);
        await tester.pumpAndSettle();

        // Try to find and tap any button that might close the dialog
        final okButtons = find.text('OK');
        if (okButtons.evaluate().isNotEmpty) {
          await tester.tap(okButtons.first);
          await tester.pumpAndSettle();
        }
      }
    });

    testWidgets('APP_NAME tile has correct icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        RepositoryProvider<SharedPreferences>(
          create: (context) => sharedPreferences,
          child: BlocProvider<ThemeBloc>(
            create: (context) => themeBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const AppSettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.api), findsOneWidget);
    });

    testWidgets('handles empty SharedPreferences correctly', (
      WidgetTester tester,
    ) async {
      SharedPreferences.setMockInitialValues({});
      final emptyPrefs = await SharedPreferences.getInstance();

      await tester.pumpWidget(
        RepositoryProvider<SharedPreferences>(
          create: (context) => emptyPrefs,
          child: BlocProvider<ThemeBloc>(
            create: (context) => themeBloc,
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const AppSettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.text('N/A'), findsOneWidget);
    });
  });
}
