import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:desktop_tray/desktop_tray.dart';
import 'package:app_theme/app_theme.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_locale/app_locale.dart';
import 'package:server_bloc/server.dart';
import 'package:template_bloc/template.dart';
import 'package:theme_bloc/theme_bloc.dart';
import 'package:semaphore_client/router.dart';
import 'package:semaphore_client/screens/project/template_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  late SystemTrayManager systemTrayManager;
  late QuickActionsManager quickActionsManager;

  @override
  initState() {
    super.initState();

    if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        initSystemTray();
      });
    }
    if (Platform.isAndroid || Platform.isIOS) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        initQuickActions();
      });
    }
    WidgetsBinding.instance.addObserver(this);
    if (WidgetsBinding.instance.lifecycleState != null) {
      print(WidgetsBinding.instance.lifecycleState!);
    }
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {}

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
      systemTrayManager.destroy();
    }
    super.dispose();
  }

  Future<void> initSystemTray() async {
    String path =
        Platform.isWindows ? 'assets/icon/icon.png' : 'assets/icon/icon.png';

    systemTrayManager = SystemTrayManager();

    final l10n = context.l10n;

    await systemTrayManager.initialize(
      toolTip: l10n.appName,
      iconPath: path,
      menuItems: [
        MenuItemLabel(
            label: l10n.show, onClicked: (menuItem) => print('Show app')),
        MenuItemLabel(
            label: l10n.hide, onClicked: (menuItem) => print('Hide app')),
        MenuSeparator(),
        MenuItemLabel(
            label: l10n.exit, onClicked: (menuItem) => print('Exit app')),
      ],
    );
  }

  Future<void> initQuickActions() async {
    quickActionsManager = QuickActionsManager();
    await quickActionsManager.initialize();
    
    quickActionsManager.registerAction('run_task', () {
      print('The user tapped on the "Run task" action.');
      // TODO: Update with proper navigation and BLoC calls
      // router.goNamed(TemplateScreen.name);
      // final state = context.read<ServerBloc>().state;
      // context.read<TemplateBloc>().add(TemplateLoad(
      //     state.activeServer!.api, state.activeProject!.projectId!));
    });

    await quickActionsManager.setShortcutItems([
      ShortcutItem(
        type: 'run_task',
        localizedTitle: context.l10n.runTask,
        icon: 'play_arrow',
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeBloc>();

    return BlocBuilder<ThemeBloc, ThemeState>(
        bloc: themeBloc,
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            themeMode: state.themeMode,
            theme: state.theme.lightTheme,
            darkTheme: state.theme.darkTheme,
            localizationsDelegates: AppLocale.localizationsDelegates,
            supportedLocales: AppLocale.supportedLocales,
          );
        });
  }
}
