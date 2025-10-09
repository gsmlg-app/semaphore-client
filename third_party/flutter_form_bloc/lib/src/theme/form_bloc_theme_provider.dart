import 'package:flutter/widgets.dart';
import 'package:flutter_form_bloc/src/theme/form_bloc_theme.dart';

class FormThemeProvider extends InheritedWidget {
  final FormTheme theme;

  const FormThemeProvider({
    super.key,
    required this.theme,
    required super.child,
  });

  static FormTheme? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<FormThemeProvider>()
        ?.theme;
  }

  @override
  bool updateShouldNotify(FormThemeProvider oldWidget) {
    return theme != oldWidget.theme;
  }
}
