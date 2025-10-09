# App Logging

A comprehensive logging package for Flutter applications with support for multiple output formats, levels, and structured logging.

## Features

- ✅ Multiple log levels (debug, info, warning, error, critical)
- ✅ Structured logging with context
- ✅ Platform-specific output formatting
- ✅ Performance optimized for production
- ✅ Integration with error reporting
- ✅ HTTP request/response logging
- ✅ User-friendly error display

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  app_logging:
    path: ../app_lib/logging
```

## Quick Start

```dart
import 'package:app_logging/app_logging.dart';

void main() {
  // Initialize logging
  final logger = AppLogger();
  logger.initialize(
    level: LogLevel.debug,
  );
  
  logger.info('App started');
  logger.error('Something went wrong', error: exception);
}
```

## API Reference

### AppLogger

Main logging class with static initialization and instance methods.

```dart
// Initialize globally
AppLogger.init({
  LogLevel level = LogLevel.info,
  bool enableConsoleOutput = true,
  bool enableFileOutput = false,
  String? logDirectory,
})

// Create logger instance
final logger = AppLogger('FeatureName');

// Log methods
logger.debug('Debug message');
logger.info('Info message', context: {'key': 'value'});
logger.warning('Warning message');
logger.error('Error message', error: exception, stackTrace: stack);
logger.critical('Critical message');
```

### ErrorReportingService

Persistent error tracking and reporting.

```dart
final service = ErrorReportingService();
await service.reportError(error, stackTrace: stack);
final errors = await service.getStoredErrors();
```

### CrashReportingWidget

Global error boundary for Flutter apps.

```dart
void main() {
  runApp(
    CrashReportingWidget(
      child: MyApp(),
    ),
  );
}
```

### ApiLoggingInterceptor

HTTP request/response logging for Dio/HTTP clients.

```dart
final dio = Dio()
  ..interceptors.add(ApiLoggingInterceptor());
```

### ErrorDisplay

User-friendly error presentation.

```dart
ErrorDisplay.showError(
  context,
  'Failed to load data',
  severity: ErrorSeverity.medium,
  onRetry: () => _retry(),
);
```