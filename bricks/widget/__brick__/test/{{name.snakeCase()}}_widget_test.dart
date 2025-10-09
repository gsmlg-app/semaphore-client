import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{name.snakeCase()}}_widget/{{name.snakeCase()}}_widget.dart';

void main() {
  group('{{name.pascalCase()}}Widget', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: {{name.pascalCase()}}Widget(),
          ),
        ),
      );

      expect(find.byType({{name.pascalCase()}}Widget), findsOneWidget);
      expect(find.text('{{name.pascalCase()}} Widget'), findsOneWidget);
    });

    testWidgets('adapts to platform', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(platform: TargetPlatform.android),
          home: const Scaffold(
            body: {{name.pascalCase()}}Widget(),
          ),
        ),
      );

      expect(find.text('{{name.pascalCase()}} - Material'), findsOneWidget);
    });
  });
}