import 'dart:io' show Platform;

import 'package:app_locale/app_locale.dart';
import 'package:app_locale/gen_l10n/app_localizations.dart';
import 'package:desktop_tray/desktop_tray.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:semaphore_client/router.dart';
import 'package:theme_bloc/theme_bloc.dart';

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
        // Delay a bit more to ensure localization is ready
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted) {
            initSystemTray();
          }
        });
      });
    }
    if (Platform.isAndroid || Platform.isIOS) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // Delay a bit more to ensure localization is ready
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted) {
            initQuickActions();
          }
        });
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
    String path = Platform.isWindows
        ? 'assets/icon/icon.png'
        : 'assets/icon/icon.png';

    systemTrayManager = SystemTrayManager();

    // Safely get localization with fallback values
    AppLocalizations? l10n;
    try {
      l10n = AppLocalizations.of(context);
    } catch (e) {
      // Localization not ready, use fallback values
      l10n = null;
    }

    // Use fallback values if localization is not available
    final appName = l10n?.appName ?? 'Semaphore Client';
    final showLabel = l10n?.show ?? 'Show';
    final hideLabel = l10n?.hide ?? 'Hide';
    final exitLabel = l10n?.exit ?? 'Exit';

    await systemTrayManager.initialize(
      toolTip: appName,
      iconPath: path,
      menuItems: [
        MenuItemLabel(
          label: showLabel,
          onClicked: (menuItem) => print('Show app'),
        ),
        MenuItemLabel(
          label: hideLabel,
          onClicked: (menuItem) => print('Hide app'),
        ),
        MenuSeparator(),
        MenuItemLabel(
          label: exitLabel,
          onClicked: (menuItem) => print('Exit app'),
        ),
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

    // Safely get localization with fallback values
    AppLocalizations? l10n;
    try {
      l10n = AppLocalizations.of(context);
    } catch (e) {
      // Localization not ready, use fallback values
      l10n = null;
    }

    // Use fallback values if localization is not available
    final runTaskLabel = l10n?.runTask ?? 'Run Task';

    await quickActionsManager.setShortcutItems([
      ShortcutItem(
        type: 'run_task',
        localizedTitle: runTaskLabel,
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
      },
    );
  }
}
