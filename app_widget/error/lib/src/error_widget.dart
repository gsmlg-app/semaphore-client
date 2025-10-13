import 'package:flutter/material.dart';

/// Reusable error handling widget that provides user-friendly error messages
/// with retry functionality and consistent styling.
class AppErrorWidget extends StatelessWidget {
  final dynamic error;
  final VoidCallback? onRetry;
  final String? title;
  final String? subtitle;
  final IconData? icon;

  const AppErrorWidget({
    super.key,
    required this.error,
    this.onRetry,
    this.title,
    this.subtitle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final errorMessage = _getErrorMessage(error);
    final errorDetails = _getErrorDetails(error);
    final errorIcon = icon ?? Icons.error_outline;

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            errorIcon,
            size: 64,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(height: 16),
          Text(
            title ?? errorMessage,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
            textAlign: TextAlign.center,
          ),
          if (subtitle?.isNotEmpty == true) ...[
            const SizedBox(height: 8),
            Text(
              subtitle!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
          if (errorDetails.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              errorDetails,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
          const SizedBox(height: 24),
          if (onRetry != null)
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
        ],
      ),
    );
  }

  String _getErrorMessage(dynamic error) {
    String errorMessage = 'An unexpected error occurred';

    if (error is Exception) {
      errorMessage = error.toString();
    } else if (error is String) {
      errorMessage = error;
    }

    // Try to extract a user-friendly message from common errors
    if (errorMessage.contains('SocketException')) {
      if (errorMessage.contains('No route to host') ||
          errorMessage.contains('Host not found')) {
        return 'Server not found';
      } else {
        return 'Network connection failed';
      }
    } else if (errorMessage.contains('TimeoutException')) {
      return 'Request timed out';
    } else if (errorMessage.contains('404')) {
      return 'Not found';
    } else if (errorMessage.contains('401') || errorMessage.contains('403')) {
      return 'Authentication failed';
    } else if (errorMessage.contains('500')) {
      return 'Server error';
    } else if (errorMessage.contains('DioException')) {
      return 'Connection failed';
    }

    return errorMessage;
  }

  String _getErrorDetails(dynamic error) {
    String errorMessage = error is String ? error : error.toString();

    // Try to extract a user-friendly message from common errors
    if (errorMessage.contains('SocketException')) {
      if (errorMessage.contains('No route to host') ||
          errorMessage.contains('Host not found')) {
        return 'The server hostname could not be resolved. Please check the server URL and your internet connection.';
      } else {
        return 'Please check your internet connection and try again.';
      }
    } else if (errorMessage.contains('TimeoutException')) {
      return 'The server took too long to respond. Please try again.';
    } else if (errorMessage.contains('404')) {
      return 'The requested resource could not be found.';
    } else if (errorMessage.contains('401') || errorMessage.contains('403')) {
      return 'Please check your server credentials and try again.';
    } else if (errorMessage.contains('500')) {
      return 'The server encountered an error. Please try again later.';
    } else if (errorMessage.contains('DioException')) {
      return 'Unable to connect to the server. Please check your internet connection and server status.';
    }

    return '';
  }
}
