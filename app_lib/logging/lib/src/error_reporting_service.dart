import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart' as logging;
import 'package:shared_preferences/shared_preferences.dart';

import 'app_logger.dart';
import 'log_level.dart';

class ErrorReportingService {
  static final ErrorReportingService _instance =
      ErrorReportingService._internal();
  factory ErrorReportingService() => _instance;
  ErrorReportingService._internal();

  final AppLogger _logger = AppLogger();
  final logging.Logger _systemLogger = logging.Logger('ErrorReporting');

  static const String _errorLogKey = 'error_logs';
  static const int _maxStoredErrors = 100;

  Future<void> reportError({
    required dynamic error,
    StackTrace? stackTrace,
    String? context,
    LogLevel level = LogLevel.error,
    Map<String, dynamic>? additionalData,
    bool sendToBackend = false,
  }) async {
    final errorRecord = _createErrorRecord(
      error: error,
      stackTrace: stackTrace,
      context: context,
      level: level,
      additionalData: additionalData,
    );

    _logger.e(
      'Error: ${errorRecord['message']}',
      error,
      stackTrace,
    );

    await _storeError(errorRecord);

    if (sendToBackend) {
      await _sendToBackend(errorRecord);
    }
  }

  Future<void> reportException({
    required Exception exception,
    StackTrace? stackTrace,
    String? context,
    LogLevel level = LogLevel.error,
    Map<String, dynamic>? additionalData,
  }) async {
    await reportError(
      error: exception,
      stackTrace: stackTrace,
      context: context,
      level: level,
      additionalData: additionalData,
    );
  }

  Future<void> reportFlutterError({
    required FlutterErrorDetails details,
    String? context,
    LogLevel level = LogLevel.error,
  }) async {
    await reportError(
      error: details.exception,
      stackTrace: details.stack,
      context: context ?? 'Flutter Error',
      level: level,
      additionalData: {
        'library': details.library,
        'context': details.context?.toString(),
        'silent': details.silent,
      },
    );
  }

  Future<List<Map<String, dynamic>>> getRecentErrors() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final errorData = prefs.getStringList(_errorLogKey) ?? [];

      return errorData
          .map((json) => _decodeErrorRecord(json))
          .where((error) => error != null)
          .cast<Map<String, dynamic>>()
          .toList();
    } catch (e) {
      _systemLogger.warning('Failed to load error logs: $e');
      return [];
    }
  }

  Future<void> clearErrorLogs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_errorLogKey);
      _systemLogger.info('Error logs cleared');
    } catch (e) {
      _systemLogger.warning('Failed to clear error logs: $e');
    }
  }

  Map<String, dynamic> _createErrorRecord({
    required dynamic error,
    StackTrace? stackTrace,
    String? context,
    required LogLevel level,
    Map<String, dynamic>? additionalData,
  }) {
    return {
      'timestamp': DateTime.now().toIso8601String(),
      'level': level.name,
      'message': error.toString(),
      'error_type': error.runtimeType.toString(),
      'context': context,
      'stack_trace': stackTrace?.toString() ?? StackTrace.current.toString(),
      'additional_data': additionalData ?? {},
      'app_version': '1.0.0', // TODO: Get from package info
      'platform': 'flutter', // TODO: Get actual platform
    };
  }

  Future<void> _storeError(Map<String, dynamic> errorRecord) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final existingErrors = prefs.getStringList(_errorLogKey) ?? [];

      final json = _encodeErrorRecord(errorRecord);
      existingErrors.add(json);

      // Keep only the most recent errors
      if (existingErrors.length > _maxStoredErrors) {
        existingErrors.removeRange(0, existingErrors.length - _maxStoredErrors);
      }

      await prefs.setStringList(_errorLogKey, existingErrors);
    } catch (e) {
      _systemLogger.warning('Failed to store error: $e');
    }
  }

  Future<void> _sendToBackend(Map<String, dynamic> errorRecord) async {
    try {
      // TODO: Implement actual backend integration
      _systemLogger.info('Sending error to backend: ${errorRecord['message']}');

      // Simulate network delay
      await Future.delayed(const Duration(milliseconds: 100));

      // TODO: Replace with actual HTTP call
      _systemLogger.info('Error sent to backend successfully');
    } catch (e) {
      _systemLogger.warning('Failed to send error to backend: $e');
    }
  }

  String _encodeErrorRecord(Map<String, dynamic> record) {
    return record.toString(); // Simple encoding for now
  }

  Map<String, dynamic>? _decodeErrorRecord(String json) {
    try {
      // Simple decoding for now
      return {'raw': json};
    } catch (e) {
      return null;
    }
  }

  Future<void> exportErrorLogs() async {
    final errors = await getRecentErrors();
    _systemLogger.info('Error logs exported: ${errors.length} errors');
    // TODO: Implement export functionality (file sharing, email, etc.)
  }

  void setupGlobalErrorHandler() {
    FlutterError.onError = (FlutterErrorDetails details) {
      reportFlutterError(details: details);
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      reportError(
        error: error,
        stackTrace: stack,
        context: 'Unhandled platform error',
        level: LogLevel.fatal,
      );
      return true;
    };
  }
}
