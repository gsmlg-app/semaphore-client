import 'dart:async';

import 'package:logging/logging.dart' as logging;
import 'package:stack_trace/stack_trace.dart';

import 'log_level.dart';
import 'log_record.dart';

class AppLogger {
  static final AppLogger _instance = AppLogger._internal();
  factory AppLogger() => _instance;
  AppLogger._internal();

  final StreamController<LogRecord> _logController =
      StreamController<LogRecord>.broadcast();

  LogLevel _currentLevel = LogLevel.info;
  bool _includeStackTrace = true;

  Stream<LogRecord> get logStream => _logController.stream;

  void initialize({
    LogLevel level = LogLevel.info,
    bool includeStackTrace = true,
  }) {
    _currentLevel = level;
    _includeStackTrace = includeStackTrace;

    logging.hierarchicalLoggingEnabled = true;

    logging.Logger.root.level = logging.Level.ALL;
    logging.Logger.root.onRecord.listen(_handleLogRecord);
  }

  void _handleLogRecord(logging.LogRecord record) {
    final logRecord = LogRecord(
      level: _mapLevel(record.level),
      message: record.message,
      error: record.error,
      stackTrace: _includeStackTrace ? record.stackTrace : null,
      loggerName: record.loggerName,
      time: record.time,
      zone: record.zone,
    );

    _logController.add(logRecord);
  }

  void v(String message, [Object? error, StackTrace? stackTrace]) =>
      _log(LogLevel.verbose, message, error, stackTrace);

  void d(String message, [Object? error, StackTrace? stackTrace]) =>
      _log(LogLevel.debug, message, error, stackTrace);

  void i(String message, [Object? error, StackTrace? stackTrace]) =>
      _log(LogLevel.info, message, error, stackTrace);

  void w(String message, [Object? error, StackTrace? stackTrace]) =>
      _log(LogLevel.warning, message, error, stackTrace);

  void e(String message, [Object? error, StackTrace? stackTrace]) =>
      _log(LogLevel.error, message, error, stackTrace);

  void f(String message, [Object? error, StackTrace? stackTrace]) =>
      _log(LogLevel.fatal, message, error, stackTrace);

  void _log(LogLevel level, String message,
      [Object? error, StackTrace? stackTrace]) {
    if (level < _currentLevel) return;

    final logger = logging.Logger('AppLogger');
    final loggingLevel = _mapToLoggingLevel(level);

    logger.log(
      loggingLevel,
      message,
      error,
      stackTrace ?? (error != null ? Chain.current() : null),
    );
  }

  LogLevel _mapLevel(logging.Level level) {
    switch (level.name) {
      case 'FINEST':
      case 'FINER':
        return LogLevel.verbose;
      case 'FINE':
        return LogLevel.debug;
      case 'CONFIG':
      case 'INFO':
        return LogLevel.info;
      case 'WARNING':
        return LogLevel.warning;
      case 'SEVERE':
        return LogLevel.error;
      case 'SHOUT':
        return LogLevel.fatal;
      default:
        return LogLevel.info;
    }
  }

  logging.Level _mapToLoggingLevel(LogLevel level) {
    switch (level) {
      case LogLevel.verbose:
        return logging.Level.FINEST;
      case LogLevel.debug:
        return logging.Level.FINE;
      case LogLevel.info:
        return logging.Level.INFO;
      case LogLevel.warning:
        return logging.Level.WARNING;
      case LogLevel.error:
        return logging.Level.SEVERE;
      case LogLevel.fatal:
        return logging.Level.SHOUT;
    }
  }

  void dispose() {
    _logController.close();
  }
}
