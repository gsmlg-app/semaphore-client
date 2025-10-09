import 'package:app_feedback/app_feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('showSuccessToast test', (WidgetTester tester) async {
    const Key tapSuccessTarget = Key('tap-success');
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              showSuccessToast(
                  context: context, title: 'success', message: 'message');
            },
            behavior: HitTestBehavior.opaque,
            child: const SizedBox(
              height: 100.0,
              width: 100.0,
              key: tapSuccessTarget,
            ),
          );
        }),
      ),
    ));

    await tester.ensureVisible(find.byKey(tapSuccessTarget));
    await tester.pumpAndSettle();
    expect(find.text('success'), findsNothing);
    await tester.tap(find.byKey(tapSuccessTarget));
    expect(find.text('success'), findsNothing);
    await tester.pump(); // schedule animation
    expect(find.text('success'), findsOneWidget);
  });

  testWidgets('showErrorToast test', (WidgetTester tester) async {
    const Key tapErrorTarget = Key('tap-error');
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              showErrorToast(
                  context: context, title: 'error', message: 'message');
            },
            behavior: HitTestBehavior.opaque,
            child: const SizedBox(
              height: 100.0,
              width: 100.0,
              key: tapErrorTarget,
            ),
          );
        }),
      ),
    ));

    await tester.ensureVisible(find.byKey(tapErrorTarget));
    await tester.pumpAndSettle();
    expect(find.text('error'), findsNothing);
    await tester.tap(find.byKey(tapErrorTarget));
    expect(find.text('error'), findsNothing);
    await tester.pump(); // schedule animation
    expect(find.text('error'), findsOneWidget);
  });
}
