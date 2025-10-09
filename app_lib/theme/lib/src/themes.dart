import 'package:app_theme/src/color_schemes/fire.dart' as fire;
import 'package:app_theme/src/color_schemes/green.dart' as green;
import 'package:app_theme/src/color_schemes/violet.dart' as violet;
import 'package:app_theme/src/color_schemes/wheat.dart' as wheat;
import 'package:flutter/material.dart';

// import 'package:app_theme/src/typography.dart';

final themeList = [VioletTheme(), GreenTheme(), FireTheme(), WheatTheme()];

abstract class AppTheme {
  const AppTheme({
    required this.name,
    required this.lightTheme,
    required this.darkTheme,
  });
  final String name;
  final ThemeData lightTheme;
  final ThemeData darkTheme;

  @override
  String toString() {
    return name;
  }
}

@immutable
class VioletTheme extends AppTheme {
  factory VioletTheme() {
    return VioletTheme._();
  }

  VioletTheme._()
      : super(
          name: 'Violet',
          lightTheme: ThemeData(
            useMaterial3: true,
            colorScheme: violet.lightColorScheme,
            // textTheme: textTheme,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: violet.darkColorScheme,
            // textTheme: textTheme,
          ),
        );
}

@immutable
class GreenTheme extends AppTheme {
  factory GreenTheme() {
    return GreenTheme._();
  }

  GreenTheme._()
      : super(
          name: 'Green',
          lightTheme: ThemeData(
            useMaterial3: true,
            colorScheme: green.lightColorScheme,
            // textTheme: textTheme,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: green.darkColorScheme,
            // textTheme: textTheme,
          ),
        );
}

@immutable
class FireTheme extends AppTheme {
  factory FireTheme() {
    return FireTheme._();
  }

  FireTheme._()
      : super(
          name: 'Fire',
          lightTheme: ThemeData(
            useMaterial3: true,
            colorScheme: fire.lightColorScheme,
            // textTheme: textTheme,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: fire.darkColorScheme,
            // textTheme: textTheme,
          ),
        );
}

@immutable
class WheatTheme extends AppTheme {
  factory WheatTheme() {
    return WheatTheme._();
  }

  WheatTheme._()
      : super(
          name: 'Wheat',
          lightTheme: ThemeData(
            useMaterial3: true,
            colorScheme: wheat.lightColorScheme,
            // textTheme: textTheme,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: wheat.darkColorScheme,
            // textTheme: textTheme,
          ),
        );
}

@immutable
class DynamicTheme extends AppTheme {
  factory DynamicTheme.fromSeed(Color seedColor) {
    return DynamicTheme._(seedColor);
  }

  DynamicTheme._(Color seedColor)
      : super(
          name: 'Dynamic',
          lightTheme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
                seedColor: seedColor, brightness: Brightness.light),
            // textTheme: textTheme,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
                seedColor: seedColor, brightness: Brightness.dark),
            // textTheme: textTheme,
          ),
        );
}
