import 'dart:async';

import 'package:meta/meta.dart';

import 'log_level.dart';

@immutable
class LogRecord {
  final LogLevel level;
  final String message;
  final Object? error;
  final StackTrace? stackTrace;
  final String loggerName;
  final DateTime time;
  final Zone? zone;

  LogRecord({
    required this.level,
    required this.message,
    this.error,
    this.stackTrace,
    required this.loggerName,
    DateTime? time,
    this.zone,
  }) : time = time ?? DateTime.now();

  LogRecord copyWith({
    LogLevel? level,
    String? message,
    Object? error,
    StackTrace? stackTrace,
    String? loggerName,
    DateTime? time,
    Zone? zone,
  }) {
    return LogRecord(
      level: level ?? this.level,
      message: message ?? this.message,
      error: error ?? this.error,
      stackTrace: stackTrace ?? this.stackTrace,
      loggerName: loggerName ?? this.loggerName,
      time: time ?? this.time,
      zone: zone ?? this.zone,
    );
  }

  @override
  String toString() {
    return 'LogRecord(level: ${level.name}, message: $message, error: $error, '
        'loggerName: $loggerName, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LogRecord &&
        other.level == level &&
        other.message == message &&
        other.error == error &&
        other.stackTrace == stackTrace &&
        other.loggerName == loggerName &&
        other.time == time;
  }

  @override
  int get hashCode {
    return level.hashCode ^
        message.hashCode ^
        error.hashCode ^
        stackTrace.hashCode ^
        loggerName.hashCode ^
        time.hashCode;
  }
}
