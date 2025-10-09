import 'dart:io' show Platform;

import 'package:app_artwork/app_artwork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('A group of logo test', () {
    testWidgets('Widget LogoGSMLGDEV', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LogoGSMLGDEV()));

      await expectLater(
        find.byType(LogoGSMLGDEV),
        matchesGoldenFile('goldens/gsmlg_dev.png'),
        skip: !Platform.isWindows,
      );
    });

    testWidgets('Widget LaddingPageLottie', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LaddingPageLottie()));

      await expectLater(
        find.byType(LaddingPageLottie),
        matchesGoldenFile('goldens/landing_page.png'),
        skip: !Platform.isWindows,
      );
    });
  });
}
