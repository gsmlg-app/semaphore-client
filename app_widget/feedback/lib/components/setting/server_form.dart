import 'package:flutter/material.dart';
import 'package:app_feedback/app_feedback.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:server_bloc/server.dart';
import 'package:server_form_bloc/server_form.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_database/server.dart';

void showServerForm(BuildContext context) {
  showFullScreenDialog(
    context: context,
    title: Text(context.l10n.addServer),
    builder: (context) {
      final serverFormBloc = context.read<ServerFormBloc>();

      return FormBlocListener<ServerFormBloc, String, String>(
        formBloc: serverFormBloc,
        onSubmitting: (context, state) {},
        onSubmissionFailed: (context, state) {},
        onSuccess: (context, state) {
          final token = state.successResponse!;
          final server = SemaphoreServer()
            ..name = serverFormBloc.name.value
            ..apiUrl = serverFormBloc.apiUrl.value
            ..username = serverFormBloc.username.value
            ..token = token;
          context.read<SemaphoreServerBloc>().add(AddServer(server));
          Navigator.of(context).pop();
          showSuccessToast(context: context, message: context.l10n.serverAdded);
        },
        onFailure: (context, state) {
          if (state.failureResponse != null) {
            showErrorToast(context: context, message: state.failureResponse!);
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: AutofillGroup(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFieldBlocBuilder(
                      textFieldBloc: serverFormBloc.name,
                      suffixButton: SuffixButton.clearText,
                      autofillHints: const [AutofillHints.name],
                      obscureText: false,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        hintText: context.l10n.serverNameLabel,
                        labelText: context.l10n.serverNameHint,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFieldBlocBuilder(
                      textFieldBloc: serverFormBloc.apiUrl,
                      suffixButton: SuffixButton.clearText,
                      autofillHints: const [AutofillHints.url],
                      obscureText: false,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        hintText: context.l10n.serverUrlHint,
                        labelText: context.l10n.serverUrlLabel,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFieldBlocBuilder(
                      textFieldBloc: serverFormBloc.username,
                      suffixButton: SuffixButton.clearText,
                      autofillHints: const [AutofillHints.name],
                      obscureText: false,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                          hintText: context.l10n.usernameHint,
                          labelText: context.l10n.usernameLabel),
                    ),
                    const SizedBox(height: 20),
                    TextFieldBlocBuilder(
                      textFieldBloc: serverFormBloc.password,
                      suffixButton: SuffixButton.obscureText,
                      autofillHints: const [AutofillHints.password],
                      obscureText: true,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        hintText: context.l10n.passwordHint,
                        labelText: context.l10n.passwordLabel,
                      ),
                    ),
                    const SizedBox(height: 20),
                    BlocBuilder<ServerFormBloc, FormBlocState>(
                        bloc: serverFormBloc,
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
                                    minimumSize:
                                        const Size.fromHeight(50), // NEW
                                  ),
                                  onPressed: serverFormBloc.submit,
                                  child: Text(context.l10n.buttonSave),
                                )
                              : ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize:
                                        const Size.fromHeight(50), // NEW
                                  ),
                                  onPressed: null,
                                  child: Text(context.l10n.buttonSave),
                                );
                        }),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
