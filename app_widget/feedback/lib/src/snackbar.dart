import 'package:app_locale/app_locale.dart';
import 'package:flutter/material.dart';

void showSnackbar({
  required Widget message,
  required BuildContext context,
  Duration duration = const Duration(seconds: 5),
  bool showCloseIcon = false,
  String? actionLabel,
  VoidCallback? onActionPressed,
}) {
  final snackBar = SnackBar(
    content: message,
    duration: duration,
    showCloseIcon: showCloseIcon,
    action: actionLabel != null && onActionPressed != null
        ? SnackBarAction(
            label: actionLabel,
            onPressed: onActionPressed,
          )
        : null,
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showUndoSnackbar({
  required BuildContext context,
  required void Function() onUndoPressed,
  required Widget message,
  Duration duration = const Duration(seconds: 5),
  bool showCloseIcon = true,
}) {
  final snackBar = SnackBar(
    duration: duration,
    showCloseIcon: showCloseIcon,
    content: message,
    action: SnackBarAction(
      label: context.l10n.undo,
      onPressed: onUndoPressed,
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
