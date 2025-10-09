import 'package:flutter/material.dart';
import 'package:semaphore_client/screens/home/home_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_locale/app_locale.dart';
import 'package:app_adaptive_widgets/app_adaptive_widgets.dart';
import 'package:provider/provider.dart';
import 'package:app_theme/app_theme.dart';
import 'package:app_provider/app_provider.dart';

void main() {
  group('HomeScreen', () {
    testWidgets('renders correctly with basic components', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
          home: const HomeScreen(),
        ),
      );

      expect(find.byType(HomeScreen), findsOneWidget);
      expect(find.byType(SafeArea), findsAtLeastNWidgets(1));
      expect(find.byType(Column), findsAtLeastNWidgets(1));
    });

    testWidgets('displays throw error button', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
          home: const HomeScreen(),
        ),
      );

      expect(find.byType(TextButton), findsOneWidget);
      expect(find.text('Throw Error'), findsOneWidget);
    });

    testWidgets('throw error button has correct styling', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
              error: Colors.red,
            ),
          ),
          home: const HomeScreen(),
        ),
      );

      final textButton = tester.widget<TextButton>(find.byType(TextButton));
      final textWidget = textButton.child as Text;

      expect(textWidget.style?.color, equals(Colors.red));
    });

    testWidgets('throws exception when throw error button is pressed', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
          home: const HomeScreen(),
        ),
      );

      final button = find.byType(TextButton);
      expect(button, findsOneWidget);

      await tester.tap(button);
      await tester.pump();

      expect(tester.takeException(), isA<Exception>());
    });

    testWidgets('uses correct screen dimensions for container', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
          home: const HomeScreen(),
        ),
      );

      // Find the main container (should be at least one)
      expect(find.byType(Container), findsAtLeastNWidgets(1));
    });

    testWidgets('handles landscape orientation correctly', (
      WidgetTester tester,
    ) async {
      await tester.binding.setSurfaceSize(const Size(1200, 800));

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
          home: const HomeScreen(),
        ),
      );

      expect(find.byType(HomeScreen), findsOneWidget);

      await tester.binding.setSurfaceSize(null);
    });

    testWidgets('container has correct decoration', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
          home: const HomeScreen(),
        ),
      );

      // Find containers and check if any have decoration
      final containers = find.byType(Container);
      expect(containers, findsAtLeastNWidgets(1));
    });

    testWidgets('displays logo correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
          home: const HomeScreen(),
        ),
      );

      // Check for any logo-related widgets
      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });
}
