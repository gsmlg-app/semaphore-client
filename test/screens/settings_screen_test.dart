import 'package:flutter/material.dart';
import 'package:semaphore_client/screens/settings/settings_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/theme_bloc.dart';
import 'package:server_bloc/server.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_locale/app_locale.dart';
import 'package:app_database/app_database.dart';

void main() {
  group('SettingsScreen', () {
    late ThemeBloc themeBloc;
    late SharedPreferences sharedPreferences;
    late AppDatabase database;
    late SemaphoreServerBloc serverBloc;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      sharedPreferences = await SharedPreferences.getInstance();
      database = AppDatabase.forTesting();
      themeBloc = ThemeBloc(sharedPreferences);
      serverBloc = SemaphoreServerBloc(
        SemaphoreServerState(),
        database,
        sharedPreferences,
      );
    });

    tearDown(() {
      themeBloc.close();
      serverBloc.close();
      sharedPreferences.clear();
      database.close();
    });

    testWidgets('renders correctly with basic components', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider<SharedPreferences>(
              create: (context) => sharedPreferences,
            ),
            RepositoryProvider<AppDatabase>(
              create: (context) => database,
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider<ThemeBloc>(
                create: (context) => themeBloc,
              ),
              BlocProvider<SemaphoreServerBloc>(
                create: (context) => serverBloc,
              ),
            ],
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

    

    testWidgets('shows appearance option', (WidgetTester tester) async {
      await tester.pumpWidget(
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider<SharedPreferences>(
              create: (context) => sharedPreferences,
            ),
            RepositoryProvider<AppDatabase>(
              create: (context) => database,
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider<ThemeBloc>(
                create: (context) => themeBloc,
              ),
              BlocProvider<SemaphoreServerBloc>(
                create: (context) => serverBloc,
              ),
            ],
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const SettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.brightness_6), findsOneWidget);
    });

    testWidgets('shows accent color option', (WidgetTester tester) async {
      await tester.pumpWidget(
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider<SharedPreferences>(
              create: (context) => sharedPreferences,
            ),
            RepositoryProvider<AppDatabase>(
              create: (context) => database,
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider<ThemeBloc>(
                create: (context) => themeBloc,
              ),
              BlocProvider<SemaphoreServerBloc>(
                create: (context) => serverBloc,
              ),
            ],
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const SettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.color_lens), findsOneWidget);
    });

    testWidgets('app settings tile has correct icon', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider<SharedPreferences>(
              create: (context) => sharedPreferences,
            ),
            RepositoryProvider<AppDatabase>(
              create: (context) => database,
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider<ThemeBloc>(
                create: (context) => themeBloc,
              ),
              BlocProvider<SemaphoreServerBloc>(
                create: (context) => serverBloc,
              ),
            ],
            child: MaterialApp(
              localizationsDelegates: AppLocale.localizationsDelegates,
              supportedLocales: AppLocale.supportedLocales,
              home: const SettingsScreen(),
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.computer), findsOneWidget);
    });
  });
}
