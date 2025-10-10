import 'package:flutter/material.dart';
import 'package:app_feedback/app_feedback.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:server_bloc/server.dart';
import 'package:server_form_bloc/server_form.dart';
import 'package:app_utils/app_utils.dart';
import 'package:app_database/server.dart';

showRenameServerForm(BuildContext context, SemaphoreServer server) {
  showFullScreenDialog(
    context: context,
    title: Text(
      context.l10n.renameServer,
    ),
    builder: (context) {
      final serverFormBloc = context.read<ServerFormBloc>();
      serverFormBloc.name.updateValue(server.name!);
      return FormBlocListener<ServerFormBloc, String, String>(
        formBloc: serverFormBloc,
        onSubmitting: (context, state) {},
        onSubmissionFailed: (context, state) {},
        onSuccess: (context, state) {
          final name = state.successResponse!;
          server.name = name;
          context.read<SemaphoreServerBloc>().add(UpdateServer(server));
          Navigator.of(context).pop();
          showSuccessToast(
              context: context, message: context.l10n.serverRenamed(name));
        },
        onFailure: (context, state) {
          if (state.failureResponse != null) {
            showErrorToast(context: context, message: state.failureResponse!);
          }
        },
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
              BlocBuilder(
                bloc: serverFormBloc.name,
                builder: (context, TextFieldBlocState state) {
                  return state.value.isNotEmpty
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            minimumSize: const Size.fromHeight(50), // NEW
                          ),
                          onPressed: () {
                            final name = state.value;
                            server.name = name;
                            context
                                .read<SemaphoreServerBloc>()
                                .add(UpdateServer(server));
                            Navigator.of(context).pop();
                            showSuccessToast(
                                context: context,
                                message: context.l10n.serverRenamed(name));
                          },
                          child: Text(context.l10n.buttonSave),
                        )
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50), // NEW
                          ),
                          onPressed: null,
                          child: Text(context.l10n.buttonSave),
                        );
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
