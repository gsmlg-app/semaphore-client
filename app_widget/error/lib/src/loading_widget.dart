import 'package:flutter/material.dart';

/// A loading widget with consistent styling across the app
class LoadingWidget extends StatelessWidget {
  final String? message;
  final Widget? child;

  const LoadingWidget({
    super.key,
    this.message,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child ?? const CircularProgressIndicator.adaptive(),
          if (message?.isNotEmpty == true) ...[
            const SizedBox(height: 16),
            Text(
              message!,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }
}