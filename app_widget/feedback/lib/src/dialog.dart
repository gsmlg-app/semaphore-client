import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDialogAction extends StatelessWidget {
  const AppDialogAction({
    super.key,
    this.onPressed,
    required this.child,
  });

  final Function(BuildContext context)? onPressed;
  final Widget child;

  VoidCallback? _onPressed(BuildContext context) {
    if (onPressed != null) {
      return () => onPressed!(context);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(onPressed: _onPressed(context), child: child);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(
            onPressed: _onPressed(context), child: child);
    }
  }
}

Future<T?> showAppDialog<T>({
  required BuildContext context,
  required Widget title,
  required Widget content,
  List<Widget>? actions,
}) {
  return showDialog<T>(
    context: context,
    builder: (context) {
      return AlertDialog.adaptive(
        title: title,
        content: content,
        actions: actions,
      );
    },
  );
}
