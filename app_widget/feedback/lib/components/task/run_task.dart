import 'package:flutter/material.dart';
import 'package:app_feedback/app_feedback.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:run_task_bloc/run_task.dart';
import 'package:server_bloc/server.dart';
import 'package:task_bloc/task.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_api/app_api.dart';
import 'package:app_database/server.dart';

void showRunTaskFrom({
  required BuildContext context,
  required SemaphoreApi api,
  required int projectId,
  required int templateId,
  Task? task,
}) {
  final context0 = context;
  showFullScreenDialog(
      context: context,
      title: Text(
        context.l10n!.runTask,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      builder: (context) {
        context.read<RunTaskFormBloc>().init(
              api: api,
              projectId: projectId,
              templateId: templateId,
              task: task,
            );
        final runTaskFormBloc = context.read<RunTaskFormBloc>();

        return FormBlocListener<RunTaskFormBloc, Task, String>(
          onSubmitting: (context, state) {},
          onSubmissionFailed: (context, state) {},
          onSuccess: (context, state) async {
            Navigator.of(context).pop();
            final task = state.successResponse!;

            showSuccessToast(
                context: context,
                message: context.l10n!.taskCreated(task.id!),
                actionLabel: context.l10n!.showTaskOutput,
                onActionPressed: () {
                  showTaskOutput(
                    context: context0,
                    api: api,
                    projectId: projectId,
                    taskId: task.id!,
                  );
                });
            await Future.delayed(const Duration(seconds: 3));
            if (context.mounted) {
              context.read<TaskBloc>().add(TaskLoad(
                    api: context
                        .read<SemaphoreServerBloc>()
                        .state
                        .activeServer!
                        .api,
                    projectId: context
                        .read<SemaphoreServerBloc>()
                        .state
                        .activeProject!
                        .projectId!,
                    templateId: templateId,
                  ));
            }
          },
          onFailure: (context, state) {
            if (state.failureResponse != null) {
              showErrorToast(context: context, message: state.failureResponse!);
            }
          },
          onLoaded: (context, state) {
            final runTaskFormBloc = context.read<RunTaskFormBloc>();
            if (runTaskFormBloc.dynamicBlocs.isNotEmpty) {}
          },
          onLoadFailed: (context, state) {
            showErrorToast(context: context, message: state.failureResponse!);
            Navigator.of(context).pop();
          },
          child: AutofillGroup(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Text(
                          context.l10n!.runTask,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.close))
                    ],
                  ),
                  BlocBuilder<RunTaskFormBloc, FormBlocState>(
                      builder: (context, state) {
                    if (state is FormBlocLoaded) {
                      final runTaskFormBloc = context.read<RunTaskFormBloc>();
                      if (runTaskFormBloc.template != null &&
                          runTaskFormBloc.dynamicBlocs.isNotEmpty) {
                        return Column(
                            children: runTaskFormBloc.dynamicBlocs
                                .whereType<TextFieldBloc>()
                                .map((bloc) => TextFieldBlocBuilder(
                                      textFieldBloc: bloc,
                                      decoration: InputDecoration(
                                        labelText: runTaskFormBloc
                                            .template!.surveyVars!
                                            .where((v) => v.name == bloc.name)
                                            .firstOrNull
                                            ?.title,
                                        hintText: runTaskFormBloc
                                            .template!.surveyVars!
                                            .where((v) => v.name == bloc.name)
                                            .firstOrNull
                                            ?.description,
                                      ),
                                    ))
                                .toList());
                      }
                    }

                    return const SizedBox();
                  }),
                  TextFieldBlocBuilder(
                    textFieldBloc: runTaskFormBloc.message,
                    suffixButton: SuffixButton.clearText,
                    autofillHints: const [AutofillHints.name],
                    obscureText: false,
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      labelText: context.l10n!.taskLabelMessage,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SwitchFieldBlocBuilder(
                    booleanFieldBloc: runTaskFormBloc.dryRun,
                    body: Text(
                      context.l10n!.taskLabelDryRun,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SwitchFieldBlocBuilder(
                    booleanFieldBloc: runTaskFormBloc.diff,
                    body: Text(
                      context.l10n!.taskLabelDiff,
                    ),
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<RunTaskFormBloc, FormBlocState>(
                      builder: (context, state) {
                    if (state is FormBlocSubmitting) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor:
                              Theme.of(context).colorScheme.onPrimary,
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          minimumSize: const Size.fromHeight(50), // NEW
                        ),
                        onPressed: null,
                        child: const CircularProgressIndicator.adaptive(),
                      );
                    }
                    return state.isValid()
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              minimumSize: const Size.fromHeight(50), // NEW
                            ),
                            onPressed: runTaskFormBloc.submit,
                            child: Text(
                              context.l10n!.runTask,
                            ),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50), // NEW
                            ),
                            onPressed: null,
                            child: Text(
                              context.l10n!.runTask,
                            ),
                          );
                  }),
                ],
              ),
            ),
          ),
        );
      });
}
