import 'package:app_locale/app_locale.dart';
import 'package:flutter/material.dart';

void showSuccessToast({
  required BuildContext context,
  required String message,
  String? title,
  Duration duration = const Duration(seconds: 5),
  bool showCloseIcon = false,
  String? actionLabel,
  void Function()? onActionPressed,
}) {
  title ??= context.l10n.success;
  final snackBar = SnackBar(
    backgroundColor: Theme.of(context).colorScheme.primary,
    content: SingleChildScrollView(
      child: Row(
        children: [
          Icon(Icons.check,
              size:
                  (Theme.of(context).textTheme.titleMedium?.fontSize ?? 14) * 2,
              color: Theme.of(context).colorScheme.onPrimary),
          SizedBox(
              width: Theme.of(context).textTheme.titleMedium?.fontSize ?? 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary)),
                const SizedBox(
                  height: 8,
                ),
                Text(message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary)),
              ],
            ),
          ),
        ],
      ),
    ),
    duration: duration,
    showCloseIcon: showCloseIcon,
    action: actionLabel != null && onActionPressed != null
        ? SnackBarAction(
            label: actionLabel,
            onPressed: onActionPressed,
            textColor: Theme.of(context).colorScheme.onPrimaryContainer,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          )
        : null,
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showErrorToast({
  required BuildContext context,
  String? title,
  required String message,
  Duration duration = const Duration(seconds: 5),
  bool showCloseIcon = false,
  String? actionLabel,
  void Function()? onActionPressed,
}) {
  title ??= context.l10n.error;
  final snackBar = SnackBar(
    backgroundColor: Theme.of(context).colorScheme.error,
    content: SingleChildScrollView(
      child: Row(
        children: [
          Icon(Icons.error,
              size:
                  (Theme.of(context).textTheme.titleMedium?.fontSize ?? 14) * 2,
              color: Theme.of(context).colorScheme.onError),
          SizedBox(
              width: Theme.of(context).textTheme.titleMedium?.fontSize ?? 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onError)),
                const SizedBox(
                  height: 8,
                ),
                Text(message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onError)),
              ],
            ),
          ),
        ],
      ),
    ),
    duration: duration,
    showCloseIcon: showCloseIcon,
    action: actionLabel != null && onActionPressed != null
        ? SnackBarAction(
            label: actionLabel,
            onPressed: onActionPressed,
            textColor: Theme.of(context).colorScheme.onErrorContainer,
            backgroundColor: Theme.of(context).colorScheme.errorContainer,
          )
        : null,
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
