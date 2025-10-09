import 'dart:convert';
import 'package:logging/logging.dart' as logging;

import 'app_logger.dart';

class ApiLoggingInterceptor {
  static final logging.Logger _logger = logging.Logger('API');
  final AppLogger _appLogger = AppLogger();

  static const int _maxBodyLength = 1000;

  // Request logging
  void logRequest({
    required String method,
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    String? tag,
  }) {
    final logMessage = StringBuffer();
    logMessage.writeln('→ $method $url');

    if (tag != null) {
      logMessage.writeln('Tag: $tag');
    }

    if (headers != null && headers.isNotEmpty) {
      logMessage.writeln('Headers: ${_formatMap(headers)}');
    }

    if (body != null) {
      final bodyStr = jsonEncode(body);
      logMessage.writeln('Body: ${_truncateBody(bodyStr)}');
    }

    _appLogger.d(logMessage.toString().trim());
    _logger.info(logMessage.toString().trim());
  }

  // Response logging
  void logResponse({
    required String method,
    required String url,
    required int statusCode,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    int? responseTimeMs,
    String? tag,
  }) {
    final logMessage = StringBuffer();
    logMessage.writeln('← $method $url');
    logMessage.writeln('Status: $statusCode');

    if (tag != null) {
      logMessage.writeln('Tag: $tag');
    }

    if (responseTimeMs != null) {
      logMessage.writeln('Time: ${responseTimeMs}ms');
    }

    if (headers != null && headers.isNotEmpty) {
      logMessage.writeln('Headers: ${_formatMap(headers)}');
    }

    if (body != null) {
      final bodyStr = jsonEncode(body);
      logMessage.writeln('Body: ${_truncateBody(bodyStr)}');
    }

    if (statusCode >= 200 && statusCode < 300) {
      _appLogger.d(logMessage.toString().trim());
      _logger.info(logMessage.toString().trim());
    } else if (statusCode >= 400) {
      _appLogger.w(logMessage.toString().trim());
      _logger.warning(logMessage.toString().trim());
    } else {
      _appLogger.i(logMessage.toString().trim());
      _logger.info(logMessage.toString().trim());
    }
  }

  // Error logging
  void logError({
    required String method,
    required String url,
    required dynamic error,
    StackTrace? stackTrace,
    Map<String, dynamic>? requestBody,
    String? tag,
  }) {
    final logMessage = StringBuffer();
    logMessage.writeln('✗ $method $url');
    logMessage.writeln('Error: $error');

    if (tag != null) {
      logMessage.writeln('Tag: $tag');
    }

    if (requestBody != null) {
      final bodyStr = jsonEncode(requestBody);
      logMessage.writeln('Request Body: ${_truncateBody(bodyStr)}');
    }

    _appLogger.e(logMessage.toString().trim(), error, stackTrace);
    _logger.severe(logMessage.toString().trim(), error, stackTrace);
  }

  String _formatMap(Map<String, dynamic> map) {
    return map.entries.map((e) => '${e.key}: ${e.value}').join(', ');
  }

  String _truncateBody(String body) {
    if (body.length <= _maxBodyLength) return body;
    return '${body.substring(0, _maxBodyLength)}... [truncated]';
  }

  // Performance logging
  void logPerformance({
    required String method,
    required String url,
    required int durationMs,
    String? tag,
  }) {
    final level = _getPerformanceLevel(durationMs);
    final message = '⚡ $method $url took ${durationMs}ms';

    switch (level) {
      case 'slow':
        _appLogger.w(message);
        _logger.warning(message);
        break;
      case 'very_slow':
        _appLogger.e(message);
        _logger.severe(message);
        break;
      default:
        _appLogger.d(message);
        _logger.info(message);
    }
  }

  String _getPerformanceLevel(int durationMs) {
    if (durationMs > 5000) return 'very_slow';
    if (durationMs > 1000) return 'slow';
    return 'normal';
  }

  // Network connectivity logging
  void logConnectivity({
    required bool isConnected,
    String? networkType,
  }) {
    final message = isConnected
        ? 'Network connected${networkType != null ? ' ($networkType)' : ''}'
        : 'Network disconnected';

    if (isConnected) {
      _appLogger.i(message);
      _logger.info(message);
    } else {
      _appLogger.w(message);
      _logger.warning(message);
    }
  }

  // Rate limiting logging
  void logRateLimit({
    required String method,
    required String url,
    required int retryAfter,
  }) {
    final message = 'Rate limited: $method $url, retry after ${retryAfter}s';
    _appLogger.w(message);
    _logger.warning(message);
  }

  // Authentication logging
  void logAuth({
    required String action,
    required bool success,
    String? userId,
    String? error,
  }) {
    final message = 'Auth $action: ${success ? 'success' : 'failed'}';

    if (success) {
      _appLogger.i('$message${userId != null ? ' for $userId' : ''}');
      _logger.info('$message${userId != null ? ' for $userId' : ''}');
    } else {
      _appLogger.w('$message${error != null ? ' - $error' : ''}');
      _logger.warning('$message${error != null ? ' - $error' : ''}');
    }
  }

  // Data validation logging
  void logValidation({
    required String endpoint,
    required Map<String, dynamic> data,
    required List<String> errors,
  }) {
    final message = 'Validation errors for $endpoint: ${errors.join(', ')}';
    _appLogger.w(message);
    _logger.warning(message);
  }
}
