# Error Handler BLoC

A BLoC-based error handling and state management system for Flutter applications.

## Features

- ✅ Centralized error state management
- ✅ Severity-based error handling
- ✅ Error lifecycle tracking
- ✅ Context preservation
- ✅ Recovery pattern support
- ✅ Integration with app_logging

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  error_handler_bloc:
    path: ../app_bloc/error_handler
```

## Quick Start

```dart
import 'package:error_handler_bloc/error_handler_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ErrorBloc(),
      child: MyApp(),
    ),
  );
}
```

## Usage

### Basic Error Reporting

```dart
// In your widgets
context.read<ErrorBloc>().reportError(
  exception,
  context: 'Login process',
  severity: ErrorSeverity.high,
);

// Or use helper methods
context.read<ErrorBloc>().reportNetworkError(networkException);
context.read<ErrorBloc>().reportValidationError('Invalid input');
```

### Error Display

```dart
BlocBuilder<ErrorBloc, ErrorState>(
  builder: (context, state) {
    if (state.activeErrors.isNotEmpty) {
      final error = state.activeErrors.last;
      return ErrorDisplay.showError(
        context,
        error.displayMessage ?? 'An error occurred',
        severity: error.severity,
      );
    }
    return SizedBox.shrink();
  },
)
```

### Error Recovery

```dart
// Mark error as resolved
context.read<ErrorBloc>().add(
  ErrorRecovered(errorId: error.id),
);

// Dismiss error
context.read<ErrorBloc>().add(
  ErrorDismissed(errorId: error.id),
);

// Clear all errors
context.read<ErrorBloc>().add(ErrorsCleared());
```

## API Reference

### ErrorBloc

Main BLoC for error handling.

```dart
// Report error with full control
context.read<ErrorBloc>().add(ErrorReported(
  error: exception,
  stackTrace: stack,
  context: 'Feature context',
  severity: ErrorSeverity.high,
  showToUser: true,
));

// Helper methods
reportError(error, {stackTrace, context, severity})
reportNetworkError(error, {stackTrace, context})
reportValidationError(message, {context})
reportUnexpectedError(error, {stackTrace, context})
```

### ErrorState

Current error state containing:

- `activeErrors`: List of unresolved errors
- `resolvedErrors`: List of resolved errors
- `lastErrorMessage`: Most recent error message

### AppError

Error model containing:

- `id`: Unique error identifier
- `error`: Original error object
- `stackTrace`: Error stack trace
- `context`: Error context information
- `severity`: Error severity level
- `userMessage`: User-friendly message
- `isResolved`: Resolution status

### ErrorSeverity

Enum values:
- `low`: Minor issues
- `medium`: Some functionality affected
- `high`: Significant functionality affected
- `critical`: App stability compromised

## Integration with ErrorDisplay

```dart
// Listen for errors and show appropriate UI
BlocListener<ErrorBloc, ErrorState>(
  listener: (context, state) {
    if (state.lastErrorMessage != null) {
      ErrorDisplay.showError(
        context,
        state.lastErrorMessage!,
        severity: state.activeErrors.last.severity,
      );
    }
  },
  child: MyContent(),
)
```