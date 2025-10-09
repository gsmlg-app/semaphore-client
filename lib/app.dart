import 'package:app_locale/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/theme_bloc.dart';

import 'router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isOpenWindow = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeBloc>();

    return BlocBuilder<ThemeBloc, ThemeState>(
      bloc: themeBloc,
      builder: (context, state) {
        final router = AppRouter.router;
        return MaterialApp.router(
          key: const Key('app'),
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          onGenerateTitle: (context) => context.l10n.appName,
          theme: state.theme.lightTheme,
          darkTheme: state.theme.darkTheme,
          themeMode: state.themeMode,
          localizationsDelegates: AppLocale.localizationsDelegates,
          supportedLocales: AppLocale.supportedLocales,
        );
      },
    );
  }
}
