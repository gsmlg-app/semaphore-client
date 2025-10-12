import 'package:activity_bloc/activity.dart';
import 'package:app_database/app_database.dart';
import 'package:app_utils/app_utils.dart' show PlatformExt;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:history_bloc/history.dart';
import 'package:integration_bloc/integration.dart';
import 'package:inventory_bloc/inventory.dart';
import 'package:inventory_form_bloc/inventory_form.dart';
import 'package:key_store_bloc/key_store.dart';
import 'package:project_bloc/project.dart';
import 'package:project_form_bloc/project_form.dart';
import 'package:repository_bloc/repository.dart';
import 'package:run_task_bloc/run_task.dart';
import 'package:schedule_bloc/schedule.dart';
import 'package:semaphore_client/app.dart';
import 'package:server_bloc/server.dart';
import 'package:server_form_bloc/server_form.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_bloc/task.dart';
import 'package:task_output_bloc/task_output.dart';
import 'package:team_bloc/team.dart';
import 'package:template_bloc/template.dart';
import 'package:theme_bloc/theme.dart';
import 'package:variable_bloc/variable.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (PlatformExt.isDesktop) {
    await windowManager.ensureInitialized();

    WindowOptions windowOptions = const WindowOptions(
      size: Size(800, 600),
      center: true,
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.normal,
      minimumSize: Size(360, 720),
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
    });
  }

  final sharedPrefs = await SharedPreferences.getInstance();
  final database = await AppDatabase.createWithMigration();

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AppDatabase>(
          create: (BuildContext context) => database,
        ),
        RepositoryProvider<SharedPreferences>(
          create: (BuildContext context) => sharedPrefs,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(
            create: (BuildContext context) =>
                ThemeBloc(context.read<SharedPreferences>()),
          ),
          BlocProvider<SemaphoreServerBloc>(
            create: (BuildContext context) => SemaphoreServerBloc(
              SemaphoreServerState(),
              context.read<AppDatabase>(),
              context.read<SharedPreferences>(),
            ),
          ),
          BlocProvider(create: (BuildContext context) => ServerFormBloc()),
          BlocProvider(create: (BuildContext context) => ProjectBloc()),
          BlocProvider(create: (BuildContext context) => ProjectFormBloc()),
          BlocProvider(create: (BuildContext context) => ActivityBloc()),
          BlocProvider(create: (BuildContext context) => HistoryBloc()),
          BlocProvider(create: (BuildContext context) => TemplateBloc()),
          BlocProvider(create: (BuildContext context) => TaskBloc()),
          BlocProvider(create: (BuildContext context) => TaskOutputBloc()),
          BlocProvider(create: (BuildContext context) => RunTaskFormBloc()),
          BlocProvider(create: (BuildContext context) => ScheduleBloc()),
          BlocProvider(create: (BuildContext context) => InventoryBloc()),
          BlocProvider(create: (BuildContext context) => InventoryFormBloc()),
          BlocProvider(create: (BuildContext context) => VariableBloc()),
          BlocProvider(create: (BuildContext context) => KeyStoreBloc()),
          BlocProvider(create: (BuildContext context) => RepositoryBloc()),
          BlocProvider(create: (BuildContext context) => IntegrationBloc()),
          BlocProvider(create: (BuildContext context) => TeamBloc()),
        ],
        child: const App(),
      ),
    ),
  );
}
