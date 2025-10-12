import 'package:flutter_test/flutter_test.dart';

import 'package:app_server/app_server.dart';

void main() {
  group('App Server Tests', () {
    testWidgets('ServerList builds correctly', (WidgetTester tester) async {
      // TODO: Implement widget tests
      await tester.pumpWidget(const ServerList());
      expect(find.byType(ServerList), findsOneWidget);
    });

    testWidgets('ServerCard builds correctly', (WidgetTester tester) async {
      // TODO: Implement widget tests
      // await tester.pumpWidget(ServerCard(server: testServer));
      // expect(find.byType(ServerCard), findsOneWidget);
    });

    testWidgets('ActiveServerStatus builds correctly', (WidgetTester tester) async {
      // TODO: Implement widget tests
      // await tester.pumpWidget(const ActiveServerStatus());
      // expect(find.byType(ActiveServerStatus), findsOneWidget);
    });
  });
}