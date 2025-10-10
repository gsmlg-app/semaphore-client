import 'package:app_api/app_api.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:app_utils/app_utils.dart';

class TaskTimeWidget extends StatelessWidget {
  final Task task;

  const TaskTimeWidget({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        // Text(context.l10n.taskStartedAt(task.start != null
        //     ? DateFormat('yyyy-MM-dd HH:mm:ss').format(task.start!.toLocal())
        //     : '--')),
        // const SizedBox(width: 16),
        // ...(task.start != null && task.end == null
        //     ? [
        //         const Icon(Icons.timer),
        //         const SizedBox(width: 8),
        //         Text(context.l10n.taskRunning),
        //       ]
        //     : [
        //         const Icon(Icons.done),
        //         const SizedBox(width: 8),
        //         Text(context.l10n
        //             .taskDuration(getDuration(task.start, task.end))),
        //       ]),
      ],
    );
  }

  String getDuration(DateTime? start, DateTime? end) {
    if (start == null || end == null) return '--';
    final diff = end.difference(start);
    final hours = diff.inHours.toString().padLeft(2, '0');
    final minutes = diff.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = diff.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds';
  }
}
