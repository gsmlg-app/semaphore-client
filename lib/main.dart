import 'dart:io';

import 'package:app_database/app_database.dart';
import 'package:app_locale/app_locale.dart';
import 'package:app_logging/app_logging.dart';
import 'package:app_provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  final applicationSupportDirectory = await getApplicationSupportDirectory();

  // Initialize logging
  final logger = AppLogger();
  logger.initialize(level: LogLevel.debug);
  final directory = Directory(
    path.join(applicationSupportDirectory.path, 'appName'),
  );
  await directory.create(recursive: true);
  final logFile = File(
    path.join(applicationSupportDirectory.path, 'appName', 'app.log'),
  );
  logger.logStream.listen((record) {
    final log =
        '${record.loggerName} ${record.level.name} [${record.time}]: ${record.message}';
    logFile.writeAsString(log, mode: FileMode.append);
  });
  // Use logger
  logger.i('App started');

  final sharedPrefs = await SharedPreferences.getInstance();
  final database = AppDatabase();

  runApp(
    MainProvider(
      sharedPrefs: sharedPrefs,
      database: database,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocale.localizationsDelegates,
        supportedLocales: AppLocale.supportedLocales,
        home: CrashReportingWidget(child: const App()),
      ),
    ),
  );
}
