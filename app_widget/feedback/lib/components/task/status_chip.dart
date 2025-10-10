import 'package:flutter/material.dart';
import 'package:app_utils/app_utils.dart';

class StatusChip extends StatelessWidget {
  final String? status;
  final double? size;

  const StatusChip({super.key, this.status, this.size});

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case 'success':
        return Tooltip(
          message: context.l10n.statusSuccess,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(size: size, Icons.check_circle, color: Colors.white),
          ),
        );

      case 'error':
        return Tooltip(
          message: context.l10n.statusFailed,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(size: size, Icons.info, color: Colors.white),
          ),
        );

      case 'stopped':
        return Tooltip(
          message: context.l10n.statusStopped,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(size: size, Icons.stop_circle, color: Colors.white),
          ),
        );

      case 'waiting':
        return Tooltip(
          message: context.l10n.statusWaiting,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 84, 83, 72),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(size: size, Icons.schedule, color: Colors.white),
          ),
        );

      case 'running':
        return Tooltip(
          message: context.l10n.statusRunning,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(size: size, Icons.play_circle, color: Colors.white),
          ),
        );

      default:
        return Tooltip(
          message: context.l10n.statusUnknown,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(size: size, Icons.not_accessible, color: Colors.white),
          ),
        );
    }
  }
}
