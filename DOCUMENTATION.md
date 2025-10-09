# Error Handling & Logging System Documentation

## Overview

This documentation covers the comprehensive error handling and logging system implemented in the Flutter monorepo. The system provides centralized logging, error tracking, crash reporting, and user-friendly error display across all platforms.

## Architecture

The system is built with a modular approach across multiple packages:

```
├── app_lib/logging/           # Core logging functionality
├── app_bloc/error_handler/    # Error state management
└── Integration with existing app_widget/feedback
```

## Components

### 1. Core Logging (app_lib/logging)

#### AppLogger
- **File**: `lib/src/app_logger.dart`
- **Purpose**: Centralized logging with configurable levels
- **Features**:
  - Multiple log levels (debug, info, warning, error, critical)
  - Structured logging with context
  - Platform-specific output formatting
  - Performance optimized for production

```dart
// Usage
import 'package:app_logging/app_logging.dart';

final logger = AppLogger('MyFeature');
logger.info('User action completed', context: {'userId': '123'});
logger.error('Failed to load data', error: e, stackTrace: stack);
```

#### ErrorReportingService
- **File**: `lib/src/error_reporting_service.dart`
- **Purpose**: Persistent error tracking and reporting
- **Features**:
  - Error persistence to local storage
  - Batch error reporting
  - Error deduplication
  - Configurable retention policies

#### ApiLoggingInterceptor
- **File**: `lib/src/api_logging_interceptor.dart`
- **Purpose**: HTTP request/response logging
- **Features**:
  - Request/response body logging
  - Performance timing
  - Error response capture
  - Security-sensitive data filtering

### 2. Error State Management (app_bloc/error_handler)

#### ErrorBloc
- **File**: `lib/src/error_bloc.dart`
- **Purpose**: Centralized error state management
- **Features**:
  - Error lifecycle management (reported, dismissed, resolved)
  - Severity-based handling
  - Context preservation
  - Error recovery patterns

```dart
// Usage
context.read<ErrorBloc>().reportError(
  exception,
  stackTrace: stack,
  context: 'Login process',
  severity: ErrorSeverity.high,
);
```

#### Error Events
- **File**: `lib/src/error_event.dart`
- **Types**:
  - `ErrorReported`: New error occurrence
  - `ErrorDismissed`: User dismissed error
  - `ErrorsCleared`: Bulk error clearing
  - `ErrorRecovered`: Error resolved

#### Error States
- **File**: `lib/src/error_state.dart`
- **Structure**:
  - `activeErrors`: Currently unresolved errors
  - `resolvedErrors`: Historical resolved errors
  - `lastErrorMessage`: Most recent error for UI display

### 3. User Interface Components

#### CrashReportingWidget
- **File**: `lib/src/crash_reporting_widget.dart`
- **Purpose**: Global error boundary for the app
- **Features**:
  - Catches all unhandled Flutter errors
  - Displays user-friendly error screens
  - Automatic error reporting
  - App restart functionality

```dart
// Usage
void main() {
  runApp(
    CrashReportingWidget(
      child: MyApp(),
    ),
  );
}
```

#### ErrorDisplay
- **File**: `lib/src/error_display.dart`
- **Purpose**: User-friendly error presentation
- **Features**:
  - Severity-based UI responses
  - SnackBar for low/medium severity
  - Dialog for high severity
  - Critical error screens with restart option

```dart
// Usage
ErrorDisplay.showError(
  context,
  'Failed to load data',
  severity: ErrorSeverity.medium,
  onRetry: () => _loadData(),
);
```

## Integration Guide

### Step 1: Add Dependencies

Add to your package's `pubspec.yaml`:

```yaml
dependencies:
  app_logging:
    path: ../../app_lib/logging
  error_handler_bloc:
    path: ../../app_bloc/error_handler
```

### Step 2: Initialize Logging

```dart
import 'package:app_logging/app_logging.dart';

void main() {
  // Initialize logging
  AppLogger.init(
    level: LogLevel.debug,
    enableConsoleOutput: true,
    enableFileOutput: kReleaseMode,
  );
  
  runApp(MyApp());
}
```

### Step 3: Setup Error Handling

```dart
import 'package:error_handler_bloc/error_handler_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ErrorBloc()),
      ],
      child: CrashReportingWidget(
        child: MyApp(),
      ),
    ),
  );
}
```

### Step 4: Use in Features

```dart
class MyFeature {
  final _logger = AppLogger('MyFeature');
  
  Future<void> performAction() async {
    try {
      _logger.info('Starting action');
      // ... your code
    } catch (e, stack) {
      _logger.error('Action failed', error: e, stackTrace: stack);
      
      if (mounted) {
        context.read<ErrorBloc>().reportError(
          e,
          stackTrace: stack,
          context: 'MyFeature.performAction',
        );
      }
    }
  }
}
```

## Configuration

### Log Levels
- **debug**: Development only, detailed information
- **info**: General information, production safe
- **warning**: Potential issues that don't break functionality
- **error**: Recoverable errors that affect functionality
- **critical**: Unrecoverable errors requiring immediate attention

### Error Severity
- **low**: Minor issues, no user impact
- **medium**: Some functionality affected, automatic recovery possible
- **high**: Significant functionality affected, user action may be needed
- **critical**: App stability compromised, restart required

## Best Practices

### 1. Error Context
Always provide meaningful context:
```dart
// Good
logger.error('API call failed', 
  error: e,
  context: {
    'endpoint': '/api/users',
    'method': 'POST',
    'userId': userId,
  }
);

// Avoid
logger.error('Something went wrong');
```

### 2. User Experience
Match error severity with user impact:
```dart
// Validation errors - low severity
ErrorDisplay.showError(
  context,
  'Please enter a valid email',
  severity: ErrorSeverity.low,
);

// Network failures - medium severity
ErrorDisplay.showError(
  context,
  'Connection failed. Check your internet.',
  severity: ErrorSeverity.medium,
  onRetry: () => _retryRequest(),
);
```

### 3. Error Recovery
Implement recovery strategies:
```dart
Future<void> handleNetworkError() async {
  try {
    await apiCall();
  } on NetworkException catch (e) {
    if (e.isRetryable) {
      context.read<ErrorBloc>().reportError(
        e,
        context: 'Retryable network error',
        severity: ErrorSeverity.medium,
      );
    } else {
      context.read<ErrorBloc>().reportError(
        e,
        context: 'Non-retryable network error',
        severity: ErrorSeverity.high,
      );
    }
  }
}
```

## Monitoring and Analytics

### Key Metrics to Track
- Error frequency by feature
- Error severity distribution
- User recovery rate
- App crash rate
- Network error patterns

### Log Analysis
```dart
// Enable analytics integration
AppLogger.addOutput((record) {
  analytics.logEvent(
    'app_error',
    parameters: {
      'level': record.level.name,
      'logger': record.loggerName,
      'hasError': record.error != null,
    },
  );
});
```

## Troubleshooting

### Common Issues

1. **Circular Dependencies**
   - Ensure error_handler_bloc doesn't depend on app_feedback
   - Use event-based communication between packages

2. **Memory Leaks**
   - Always dispose ErrorBloc subscriptions
   - Clear error states on app logout

3. **Performance**
   - Limit error history size in production
   - Use sampling for high-frequency errors

### Debug Mode Features
- Stack traces always included
- Full error details in UI
- Extended error history
- Console debugging tools

## Testing

### Unit Tests
```dart
test('ErrorBloc handles network errors correctly', () {
  final bloc = ErrorBloc();
  
  bloc.reportNetworkError(
    NetworkException('Connection timeout'),
    context: 'API call',
  );
  
  expect(bloc.state.activeErrors, hasLength(1));
  expect(bloc.state.activeErrors.first.severity, ErrorSeverity.medium);
});
```

### Integration Tests
```dart
testWidgets('CrashReportingWidget shows error screen', (tester) async {
  await tester.pumpWidget(
    CrashReportingWidget(
      child: MaterialApp(home: ErrorThrowingWidget()),
    ),
  );
  
  // Trigger error
  await tester.tap(find.byType(ErrorThrowingWidget));
  await tester.pump();
  
  expect(find.text('Something went wrong'), findsOneWidget);
});
```

## Migration Guide

### From Basic Logging
```dart
// Before
print('Debug: User logged in');

// After
final logger = AppLogger('Auth');
logger.info('User logged in', context: {'userId': userId});
```

### From Try-Catch Logging
```dart
// Before
try {
  await apiCall();
} catch (e) {
  print('Error: $e');
}

// After
try {
  await apiCall();
} catch (e, stack) {
  logger.error('API call failed', error: e, stackTrace: stack);
  context.read<ErrorBloc>().reportNetworkError(e);
}
```