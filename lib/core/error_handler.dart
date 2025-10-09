import 'package:app_logging/app_logging.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart' as logging;

class ErrorHandler {
  static final ErrorHandler _instance = ErrorHandler._internal();
  factory ErrorHandler() => _instance;
  ErrorHandler._internal();

  final ErrorReportingService _errorService = ErrorReportingService();
  final ApiLoggingInterceptor _apiLogger = ApiLoggingInterceptor();
  late final logging.Logger _logger;

  void initialize() {
    _logger = logging.Logger('AppErrorHandler');

    // Set up global error handling
    _errorService.setupGlobalErrorHandler();

    // Configure logging levels
    logging.Logger.root.level = logging.Level.ALL;
    logging.Logger.root.onRecord.listen((record) {
      debugPrint('${record.level.name}: ${record.time}: ${record.message}');
    });

    _logger.info('Error handler initialized');
  }

  // Convenience methods
  void reportError(dynamic error, {StackTrace? stackTrace, String? context}) {
    _errorService.reportError(
      error: error,
      stackTrace: stackTrace,
      context: context,
    );
  }

  void reportFlutterError(FlutterErrorDetails details) {
    _errorService.reportFlutterError(details: details);
  }

  ApiLoggingInterceptor get apiLogger => _apiLogger;

  void logApiRequest({
    required String method,
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) {
    _apiLogger.logRequest(
      method: method,
      url: url,
      headers: headers,
      body: body,
    );
  }

  void logApiResponse({
    required String method,
    required String url,
    required int statusCode,
    Map<String, dynamic>? body,
    int? responseTimeMs,
  }) {
    _apiLogger.logResponse(
      method: method,
      url: url,
      statusCode: statusCode,
      body: body,
      responseTimeMs: responseTimeMs,
    );
  }

  void logApiError({
    required String method,
    required String url,
    required dynamic error,
    StackTrace? stackTrace,
  }) {
    _apiLogger.logError(
      method: method,
      url: url,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
