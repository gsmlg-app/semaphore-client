# Error Handling System Usage Guide

## Setup

1. **Initialize the error handler** in your main.dart:

```dart
import 'package:app_logging/app_logging.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize error handling
  ErrorHandler().initialize();
  
  runApp(const MyApp());
}
```

2. **Wrap your app with crash reporting**:

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CrashReportingWidget(
      child: MaterialApp(
        title: 'My App',
        home: const HomeScreen(),
      ),
    );
  }
}
```

## Basic Usage

### Logging

```dart
import 'package:app_logging/app_logging.dart';

// Get logger instance
final logger = AppLogger();

// Log messages
logger.d('Debug message');
logger.i('Info message');
logger.w('Warning message');
logger.e('Error message', error, stackTrace);
logger.f('Fatal message');
```

### API Logging

```dart
import 'package:app_logging/app_logging.dart';

final apiLogger = ApiLoggingInterceptor();

// Log API requests
apiLogger.logRequest(
  method: 'GET',
  url: '/api/users',
  headers: {'Authorization': 'Bearer token'},
);

// Log API responses
apiLogger.logResponse(
  method: 'GET',
  url: '/api/users',
  statusCode: 200,
  body: {'users': [...]},
  responseTimeMs: 250,
);

// Log API errors
apiLogger.logError(
  method: 'POST',
  url: '/api/login',
  error: 'Invalid credentials',
);
```

### Error Reporting

```dart
import 'package:app_logging/app_logging.dart';

final errorService = ErrorReportingService();

// Report errors
errorService.reportError(
  error: 'Something went wrong',
  context: 'User login',
  level: LogLevel.error,
);

// Report Flutter errors
errorService.reportFlutterError(
  details: FlutterErrorDetails(...),
);
```

### Error Handling with BLoC

```dart
import 'package:error_handler_bloc/error_handler_bloc.dart';

// In your widget
BlocProvider(
  create: (context) => ErrorBloc(),
  child: BlocListener<ErrorBloc, ErrorState>(
    listener: (context, state) {
      if (state.activeErrors.isNotEmpty) {
        // Handle errors
      }
    },
    child: YourWidget(),
  ),
)

// Report errors from anywhere
context.read<ErrorBloc>().reportError(
  'Network error',
  severity: ErrorSeverity.medium,
);
```

## Error UI Components

### Error Display

```dart
import 'package:app_widget/feedback.dart';

// Wrap your app
ErrorDisplay(
  child: YourApp(),
)

// Use error UI components
InlineError(
  message: 'Failed to load data',
  onRetry: () => loadData(),
)

ErrorCard(
  title: 'Connection Error',
  message: 'Unable to connect to server',
  onRetry: () => retryConnection(),
)
```

## Configuration

### Logging Levels

```dart
// Initialize with specific level
AppLogger().initialize(
  level: LogLevel.debug, // or .info, .warning, .error
  includeStackTrace: true,
);
```

### Error Severity Levels

- `ErrorSeverity.low` - Minor issues, shown as snackbars
- `ErrorSeverity.medium` - Warnings, shown as dialogs
- `ErrorSeverity.high` - Errors, shown as dialogs
- `ErrorSeverity.critical` - Critical errors, shown as blocking dialogs

## Best Practices

1. **Always use try-catch** for async operations:

```dart
try {
  await someAsyncOperation();
} catch (e, stack) {
  ErrorHandler().reportError(e, stackTrace: stack, context: 'Operation X');
}
```

2. **Log API calls** for debugging:

```dart
ErrorHandler().logApiRequest(
  method: 'POST',
  url: '/api/user',
  body: userData,
);
```

3. **Use appropriate error severity**:

```dart
// Validation errors
ErrorHandler().reportValidationError('Invalid email format');

// Network errors  
ErrorHandler().reportNetworkError('Connection timeout');

// Unexpected errors
ErrorHandler().reportUnexpectedError('Unknown error occurred');
```

4. **Test error handling**:

```dart
// Simulate error
ElevatedButton(
  onPressed: () {
    throw Exception('Test error');
  },
  child: Text('Trigger Error'),
)
```

## Advanced Features

### Export Error Logs

```dart
final errorService = ErrorReportingService();
final logs = await errorService.getRecentErrors();
await errorService.exportErrorLogs();
```

### Custom Error Widgets

```dart
CrashReportingWidget(
  errorScreenBuilder: (details) => CustomErrorScreen(details: details),
  child: YourApp(),
)
```