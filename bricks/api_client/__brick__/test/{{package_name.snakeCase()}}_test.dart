import 'dart:io';

import 'package:dio/dio.dart';
import 'package:{{package_name.snakeCase()}}/{{package_name.snakeCase()}}.dart';
import 'package:test/test.dart';

// tests for User
void main() async {
  final dio = Dio();

  group("Group of test", () {
    // User's unique username.
    // String username
    test('to test the function to be defined', () async {
      expect(true, true);
    });
  });
}
