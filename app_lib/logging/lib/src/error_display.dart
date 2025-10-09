import 'package:flutter/material.dart';

class ErrorDisplay {
  static void showError(
    BuildContext context,
    String message, {
    ErrorSeverity severity = ErrorSeverity.medium,
    VoidCallback? onRetry,
    VoidCallback? onDismiss,
  }) {
    final theme = Theme.of(context);

    switch (severity) {
      case ErrorSeverity.low:
        _showSnackBar(context, message, theme, duration: 2, onRetry: onRetry);
        break;
      case ErrorSeverity.medium:
        _showSnackBar(context, message, theme, duration: 4, onRetry: onRetry);
        break;
      case ErrorSeverity.high:
        _showDialog(context, message, theme, onRetry: onRetry);
        break;
      case ErrorSeverity.critical:
        _showCriticalErrorDialog(context, message, theme, onRetry: onRetry);
        break;
    }
  }

  static void _showSnackBar(
    BuildContext context,
    String message,
    ThemeData theme, {
    int duration = 2,
    VoidCallback? onRetry,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: duration),
        backgroundColor: theme.colorScheme.errorContainer,
        action: onRetry != null
            ? SnackBarAction(
                label: 'RETRY',
                textColor: theme.colorScheme.onErrorContainer,
                onPressed: onRetry,
              )
            : SnackBarAction(
                label: 'DISMISS',
                textColor: theme.colorScheme.onErrorContainer,
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
      ),
    );
  }

  static void _showDialog(
    BuildContext context,
    String message,
    ThemeData theme, {
    VoidCallback? onRetry,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          if (onRetry != null)
            TextButton(
              onPressed: onRetry,
              child: const Text('RETRY'),
            ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  static void _showCriticalErrorDialog(
    BuildContext context,
    String message,
    ThemeData theme, {
    VoidCallback? onRetry,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(
              Icons.error,
              color: theme.colorScheme.error,
            ),
            const SizedBox(width: 8),
            const Text('Critical Error'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message),
            const SizedBox(height: 16),
            const Text(
              'The app needs to restart to recover.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          if (onRetry != null)
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('RESTART APP'),
            ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}

enum ErrorSeverity {
  low,
  medium,
  high,
  critical,
}
