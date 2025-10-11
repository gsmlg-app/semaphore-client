import 'package:app_api/app_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_feedback/app_feedback.dart';
import 'package:intl/intl.dart';
import 'package:task_output_bloc/task_output.dart';
import 'package:app_utils/app_utils.dart';

void showTaskOutput({
  required BuildContext context,
  required SemaphoreApi api,
  required int projectId,
  required int taskId,
}) {
  showFullScreenDialog(
    context: context,
    title: BlocConsumer<TaskOutputBloc, TaskOutputState>(
      listener: (context, state) async {
        if (state is TaskOutputLoadDone) {
          await Future.delayed(const Duration(seconds: 1));
          if (context.mounted &&
              (state.task.status == 'running' ||
                  state.task.status == 'waiting')) {
            context.read<TaskOutputBloc>().add(
                  TaskOutputLoad(
                    api: api,
                    projectId: projectId,
                    taskId: taskId,
                  ),
                );
          }
        }
      },
      builder: (context, state) {
        final status = switch (state) {
          TaskOutputInitial() => const StatusChip(status: ''),
          TaskOutputLoading() => const StatusChip(status: ''),
          TaskOutputLoadDone() => StatusChip(status: state.task.status),
          TaskOutputError() => const StatusChip(status: 'error'),
          _ => const StatusChip(status: 'unknown'),
        };
        return Row(
          children: [
            status,
            const SizedBox(
              width: 8,
            ),
            Text(
              '#$taskId',
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              context.l10n!.taskOutput,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        );
      },
    ),
    builder: (context) {
      context.read<TaskOutputBloc>().add(
            TaskOutputLoad(
              api: api,
              projectId: projectId,
              taskId: taskId,
            ),
          );
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TaskOutputView(taskId: taskId),
        ),
      );
    },
  );
}

class TaskOutputView extends StatelessWidget {
  static const Map<String, Color> colorMap = {
    '30': Colors.black,
    '31': Colors.red,
    '32': Colors.green,
    '33': Colors.yellow,
    '34': Colors.blue,
    '35': Colors.purple,
    '36': Colors.cyan,
    '37': Colors.white
  };

  final int taskId;

  const TaskOutputView({super.key, required this.taskId});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskOutputBloc, TaskOutputState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is TaskOutputInitial) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }
        if (state is TaskOutputLoading) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }
        if (state is TaskOutputLoadDone) {
          return getOutput(state.output);
        }
        if (state is TaskOutputError) {
          return Text(state.error.toString());
        }
        return Container();
      },
    );
  }

  Column getOutput(List<TaskOutput> output) {
    const textColor = Colors.white;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: output.map((line) {
        List<InlineSpan> coloredSegments = [];
        RegExp colorRegex = RegExp(r'\u001b\[[0-9];([0-9]+)m');
        List<String> segments = line.output?.split('\u001b[0m') ?? [];

        for (String segment in segments) {
          Color specificColor = textColor;

          // Check if the segment matches the color code pattern
          if (colorRegex.hasMatch(segment)) {
            String colorCode = colorRegex.firstMatch(segment)?.group(1) ?? '';
            specificColor = colorMap[colorCode] ?? textColor;
          }

          coloredSegments.add(TextSpan(
            text: segment.replaceAll(colorRegex, ''), // Remove color codes
            style: GoogleFonts.robotoMono(
              textStyle: TextStyle(color: specificColor),
            ),
          ));
        }

        return SelectableText.rich(
          TextSpan(
            text: line.time != null
                ? DateFormat('yyyy-MM-dd HH:mm:ss').format(line.time!.toLocal())
                : '--',
            style: GoogleFonts.robotoMono(
              textStyle: const TextStyle(
                color: Colors.lightGreenAccent,
              ),
            ),
            children: <InlineSpan>[
              const TextSpan(text: '\t'),
              ...coloredSegments,
            ],
          ),
        );
      }).toList(),
    );
  }
}
