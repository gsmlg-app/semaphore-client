import 'dart:convert';

import 'package:app_api/app_api.dart';
import 'package:flutter/material.dart';

class TaskEnvWidget extends StatelessWidget {
  final Task task;

  const TaskEnvWidget({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    if (task.environment != null) {
      try {
        final Map<String, dynamic> env = jsonDecode(task.environment!);
        if (env.keys.isNotEmpty) {
          return Wrap(
            alignment: WrapAlignment.start,
            spacing: 24,
            runSpacing: 24,
            children: env.keys.map<Widget>((key) {
              return Chip(
                label: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: key,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          )),
                  const TextSpan(text: ' '),
                  TextSpan(text: '${env[key]}'),
                ])),
              );
            }).toList(),
          );
        }
      } catch (e) {
        return const SizedBox();
      }
    }

    return const SizedBox();
  }
}
