import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_feedback/app_feedback.dart';
import 'package:variable_bloc/variable.dart';
import 'package:server_bloc/server.dart' show SemaphoreServerBloc;
import 'package:app_utils/app_utils.dart';
import 'package:app_api/app_api.dart';
import 'package:app_database/server.dart';

void showDeleteVariable({
  required BuildContext context,
  required SemaphoreApi api,
  required int projectId,
  required Environment environment,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(context.l10n!.delete),
        content: Text(
          'Are you sure you want to delete "${environment.name ?? 'this variable'}"? This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(context.l10n!.buttonCancel),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.read<VariableBloc>().add(
                    VariableDelete(api, projectId, environment.id!),
                  );
            },
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: Text(context.l10n!.delete),
          ),
        ],
      );
    },
  );
}
