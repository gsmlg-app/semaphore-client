import 'package:app_locale/app_locale.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () {
    final supportedLocales = AppLocale.supportedLocales;
    expect(supportedLocales.isNotEmpty, true);
  });
}
