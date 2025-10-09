import 'package:flutter/material.dart';

void showBottomSheetActionList({
  required BuildContext context,
  required List<BottomSheetAction> actions,
  bool showBackdrop = true,
}) {
  final spacingSize = Theme.of(context).textTheme.bodyMedium?.fontSize ?? 16.0;

  showBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      constraints: const BoxConstraints(
        maxWidth: double.infinity,
        maxHeight: double.infinity,
      ),
      builder: (context) {
        return GestureDetector(
          onTap: showBackdrop ? () => Navigator.of(context).pop() : null,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: showBackdrop
                ? BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withValues(alpha: 0.2),
                  )
                : null,
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom * 2),
            child: SafeArea(
              child: Wrap(
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.end,
                runSpacing: spacingSize,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  for (final action in actions)
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: spacingSize,
                      ),
                      child: ElevatedButton(
                        style: action.style ??
                            ElevatedButton.styleFrom(
                              foregroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              minimumSize: const Size.fromHeight(50), // NEW
                            ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          action.onTap();
                        },
                        child: Center(
                          child: action.title,
                        ),
                      ),
                    ),
                  SizedBox(
                    width: double.infinity,
                    height: spacingSize,
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

class BottomSheetAction {
  final Widget title;
  final VoidCallback onTap;
  final ButtonStyle? style;

  BottomSheetAction({
    required this.title,
    required this.onTap,
    this.style,
  });
}
