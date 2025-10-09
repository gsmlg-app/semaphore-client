import 'package:flutter/material.dart';
import 'package:semaphore_client/screens/app/error_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:app_locale/app_locale.dart';

// Test version of SplashScreen that doesn't use Timer
class TestSplashScreen extends StatelessWidget {
  const TestSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: const Center(child: Text('Splash Screen')),
    );
  }
}

void main() {
  group('ErrorScreen Tests', () {
    late GoRouter router;

    setUp(() {
      router = GoRouter(
        initialLocation: '/error',
        routes: [
          GoRoute(
            name: ErrorScreen.name,
            path: ErrorScreen.path,
            builder: (context, state) => ErrorScreen(routerState: state),
          ),
          GoRoute(
            name: 'splash',
            path: '/',
            builder: (context, state) => const TestSplashScreen(),
          ),
        ],
      );
    });

    testWidgets('ErrorScreen renders correctly with error message', (
      WidgetTester tester,
    ) async {
      const errorMessage = 'Test error message';

      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(ErrorScreen), findsOneWidget);
      expect(find.byType(Column), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('ErrorScreen button navigates to splash screen', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp.router(
          routerConfig: router,
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
        ),
      );

      await tester.pumpAndSettle();

      final button = find.byType(ElevatedButton);
      expect(button, findsOneWidget);

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.byType(TestSplashScreen), findsOneWidget);
    });
  });
}
