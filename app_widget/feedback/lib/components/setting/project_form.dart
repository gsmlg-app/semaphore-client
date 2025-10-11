import 'package:flutter/material.dart';
import 'package:app_feedback/app_feedback.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:project_form_bloc/project_form.dart';
import 'package:app_utils/app_utils.dart';

void showProjectForm(BuildContext context, server) {
  showFullScreenDialog(
    context: context,
    title: Text(
      context.l10n!.addProject,
    ),
    builder: (context) {
      final projectFormBloc = context.read<ProjectFormBloc>();

      return FormBlocListener<ProjectFormBloc, String, String>(
        formBloc: projectFormBloc,
        onSubmitting: (context, state) {},
        onSubmissionFailed: (context, state) {},
        onSuccess: (context, state) {
          Navigator.of(context).pop();
          showSuccessToast(context: context, message: state.successResponse!);
        },
        onFailure: (context, state) {
          if (state.failureResponse != null) {
            showErrorToast(context: context, message: state.failureResponse!);
          }
        },
        child: AutofillGroup(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFieldBlocBuilder(
                  textFieldBloc: projectFormBloc.name,
                  suffixButton: SuffixButton.clearText,
                  autofillHints: const [AutofillHints.name],
                  obscureText: false,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                    hintText: context.l10n!.projectNameLabel,
                    labelText: context.l10n!.projectNameHint,
                  ),
                ),
                const SizedBox(height: 20),
                SwitchFieldBlocBuilder(
                  booleanFieldBloc: projectFormBloc.alert,
                  body: Text(
                    context.l10n!.projectAlertLabel,
                  ),
                ),
                const SizedBox(height: 20),
                TextFieldBlocBuilder(
                  textFieldBloc: projectFormBloc.alertChat,
                  suffixButton: SuffixButton.clearText,
                  autofillHints: const [AutofillHints.name],
                  obscureText: false,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration:
                      InputDecoration(labelText: context.l10n!.alertChatLabel),
                ),
                const SizedBox(height: 20),
                TextFieldBlocBuilder(
                  textFieldBloc: projectFormBloc.maxParallelTasks,
                  suffixButton: SuffixButton.clearText,
                  autofillHints: const [],
                  obscureText: false,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                    hintText: context.l10n!.maxParallelTasksHint,
                    labelText: context.l10n!.maxParallelTasksLabel,
                  ),
                ),
                const SizedBox(height: 20),
                BlocBuilder<ProjectFormBloc, FormBlocState>(
                    bloc: projectFormBloc,
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
                              onPressed: projectFormBloc.submit,
                              child: Text(context.l10n!.buttonSave),
                            )
                          : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(50), // NEW
                              ),
                              onPressed: null,
                              child: Text(context.l10n!.buttonSave),
                            );
                    }),
              ],
            ),
          ),
        ),
      );
    },
  );
}
