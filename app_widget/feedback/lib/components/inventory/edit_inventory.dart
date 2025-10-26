import 'package:flutter/material.dart';
import 'package:app_feedback/app_feedback.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:inventory_bloc/inventory.dart'
    show InventoryBloc, InventoryLoad;
import 'package:inventory_form_bloc/inventory_form.dart';
import 'package:server_bloc/server.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_api/semaphore_api.dart';
import 'package:app_database/server.dart';

void showEditInventory({
  required BuildContext context,
  required SemaphoreApi api,
  required int projectId,
  required Inventory inventory,
}) {
  context.read<InventoryFormBloc>().init(
        api: api,
        projectId: projectId,
        inventory: inventory,
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

      final formBloc = context.read<InventoryFormBloc>();

      return FormBlocListener<InventoryFormBloc, String, String>(
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
          context.read<InventoryBloc>().add(InventoryLoad(
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
                      labelText: context.l10n!.inventoryNameLabel,
                    ),
                  ),
                  const SizedBox(height: 20),
                  DropdownFieldBlocBuilder(
                    selectFieldBloc: formBloc.sshKeyId,
                    itemBuilder: (context, item) => FieldItem(
                      child: Text(
                        item.name ?? '--',
                      ),
                    ),
                    decoration: InputDecoration(
                      labelText: context.l10n!.inventorySshKeyLabel,
                    ),
                  ),
                  const SizedBox(height: 20),
                  DropdownFieldBlocBuilder(
                    selectFieldBloc: formBloc.becomeKeyId,
                    itemBuilder: (context, item) => FieldItem(
                      child: Text(
                        item.name ?? '--',
                      ),
                    ),
                    decoration: InputDecoration(
                        labelText: context.l10n!.inventoryBecomeKeyLabel),
                  ),
                  const SizedBox(height: 20),
                  DropdownFieldBlocBuilder(
                    selectFieldBloc: formBloc.type,
                    itemBuilder: (context, item) => FieldItem(
                      child: Text(
                        item.name,
                      ),
                    ),
                    decoration: InputDecoration(
                      labelText: context.l10n!.inventoryTypeLabel,
                    ),
                  ),
                  BlocBuilder<SelectFieldBloc<InventoryTypeEnum, dynamic>,
                      SelectFieldBlocState<InventoryTypeEnum, dynamic>>(
                    bloc: formBloc.type,
                    builder: (context, state) {
                      final currentType = state.value;
                      if (currentType == InventoryTypeEnum.file) {
                        return Column(
                          children: [
                            const SizedBox(height: 20),
                            TextFieldBlocBuilder(
                              textFieldBloc: formBloc.inventory,
                              suffixButton: SuffixButton.clearText,
                              obscureText: false,
                              autocorrect: false,
                              enableSuggestions: false,
                              minLines: null,
                              maxLines: 1,
                              decoration: InputDecoration(
                                labelText:
                                    context.l10n!.inventoryInventoryFileLabel,
                              ),
                            ),
                            const SizedBox(height: 20),
                            DropdownFieldBlocBuilder(
                              selectFieldBloc: formBloc.repositoryId,
                              itemBuilder: (context, item) => FieldItem(
                                child: Text(
                                  item.name ?? '--',
                                ),
                              ),
                              decoration: InputDecoration(
                                labelText:
                                    context.l10n!.inventoryRepositoryLabel,
                              ),
                            ),
                          ],
                        );
                      }
                      if ([
                        InventoryTypeEnum.staticYaml,
                        InventoryTypeEnum.static_
                      ].contains(currentType)) {
                        return Column(
                          children: [
                            const SizedBox(height: 20),
                            TextFieldBlocBuilder(
                              textFieldBloc: formBloc.inventory,
                              suffixButton: SuffixButton.clearText,
                              obscureText: false,
                              autocorrect: false,
                              enableSuggestions: false,
                              minLines: 5,
                              maxLines: null,
                              decoration: InputDecoration(
                                hintText:
                                    context.l10n!.inventoryInventoryTextLabel,
                              ),
                            ),
                            const SizedBox(height: 20),
                            if (currentType == InventoryTypeEnum.static_)
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(16),
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                child: Text('''
${context.l10n!.inventoryInventoryTextHint}

[website]
172.18.8.40
172.18.8.41
'''),
                              ),
                            if (currentType == InventoryTypeEnum.staticYaml)
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(16),
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                child: Text('''
${context.l10n!.inventoryInventoryTextYamlHint}

all:
  children:
    website:
      hosts:
        172.18.8.40:
        172.18.8.41:
'''),
                              ),
                          ],
                        );
                      }
                      return SizedBox();
                    },
                  ),
                  const SizedBox(height: 20),
                  BlocBuilder<InventoryFormBloc, FormBlocState>(
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
                              onPressed: formBloc.submit,
                              child: Text(
                                context.l10n!.save,
                              ),
                            )
                          : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(50), // NEW
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
