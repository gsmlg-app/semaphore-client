import 'package:flutter/material.dart';
import 'package:app_feedback/app_feedback.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:variable_bloc/variable.dart';
import 'package:variable_form_bloc/variable_form.dart';
import 'package:server_bloc/server.dart' show SemaphoreServerBloc;
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_api/semaphore_api.dart';
import 'package:app_database/server.dart';

void showEditVariable({
  required BuildContext context,
  required SemaphoreApi api,
  required int projectId,
  required Environment environment,
}) {
  context.read<VariableFormBloc>().init(
        api: api,
        projectId: projectId,
        environment: environment,
      );
  showFullScreenDialog(
    context: context,
    title: Text(
      context.l10n!.edit,
      style: Theme.of(context).textTheme.titleLarge,
    ),
    builder: (context0) {
      void closeDialog() {
        if (context.mounted) {
          Navigator.of(context).pop();
        }
      }

      final formBloc = context.read<VariableFormBloc>();

      return FormBlocListener<VariableFormBloc, String, String>(
        formBloc: formBloc,
        onSubmitting: (context, state) {},
        onSubmissionFailed: (context, state) {},
        onSuccess: (context, state) async {
          closeDialog();
          final successText = state.successResponse!;

          showSuccessToast(
            context: context,
            message: successText,
          );
          final serverState = context.read<SemaphoreServerBloc>().state;
          context.read<VariableBloc>().add(VariableLoad(
              serverState.activeServer!.api,
              serverState.activeProject!.projectId!));
        },
        onFailure: (context, state) {
          if (state.failureResponse != null) {
            showErrorToast(context: context, message: state.failureResponse!);
          }
        },
        onLoaded: (context, state) {},
        onLoadFailed: (context, state) {
          showErrorToast(context: context, message: state.failureResponse!);
          closeDialog();
        },
        child: SingleChildScrollView(
          child: AutofillGroup(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFieldBlocBuilder(
                    textFieldBloc: formBloc.name,
                    suffixButton: SuffixButton.clearText,
                    autofillHints: const [AutofillHints.name],
                    obscureText: false,
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFieldBlocBuilder(
                    textFieldBloc: formBloc.json,
                    suffixButton: SuffixButton.clearText,
                    obscureText: false,
                    autocorrect: false,
                    enableSuggestions: false,
                    minLines: 3,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'JSON',
                      hintText: 'Enter JSON data',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFieldBlocBuilder(
                    textFieldBloc: formBloc.env,
                    suffixButton: SuffixButton.clearText,
                    obscureText: false,
                    autocorrect: false,
                    enableSuggestions: false,
                    minLines: 3,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Environment Variables',
                      hintText:
                          'Enter environment variables (KEY=value format)',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFieldBlocBuilder(
                    textFieldBloc: formBloc.password,
                    suffixButton: SuffixButton.clearText,
                    obscureText: true,
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<VariableFormBloc, FormBlocState>(
                    builder: (context, state) {
                      if (state is FormBlocSubmitting) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            minimumSize: const Size.fromHeight(50),
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
                                minimumSize: const Size.fromHeight(50),
                              ),
                              onPressed: formBloc.submit,
                              child: Text(
                                context.l10n!.save,
                              ),
                            )
                          : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(50),
                              ),
                              onPressed: null,
                              child: Text(
                                context.l10n!.save,
                              ),
                            );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
