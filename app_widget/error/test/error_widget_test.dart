import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:error_widget/error_widget.dart';

void main() {
  group('ErrorWidget', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ErrorWidget(),
          ),
        ),
      );

      expect(find.byType(ErrorWidget), findsOneWidget);
      expect(find.text('Error Widget'), findsOneWidget);
    });

    testWidgets('adapts to platform', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(platform: TargetPlatform.android),
          home: const Scaffold(
            body: ErrorWidget(),
          ),
        ),
      );

      expect(find.text('Error - Material'), findsOneWidget);
    });
  });
}