import 'package:settings_ui/settings_ui.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      final settings = SettingsList(sections: []);
      expect(settings, isNotNull);
    });
  });
}
