import 'dart:async';
import 'dart:convert';

import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:app_api/app_api.dart';

class RunTaskFormBloc extends FormBloc<Task, String> {
  SemaphoreApi api = SemaphoreApi();

  final message = TextFieldBloc<String>(validators: []);

  final dryRun = BooleanFieldBloc<String>(validators: []);

  final diff = BooleanFieldBloc<String>(validators: []);

  Template? template;

  List<TextFieldBloc> dynamicBlocs = [];

  RunTaskFormBloc() {
    addFieldBlocs(fieldBlocs: [message, dryRun, diff]);
  }

  void init({
    required SemaphoreApi api,
    required int projectId,
    required int templateId,
    Task? task,
  }) async {
    emitLoading();
    this.api = api;
    final resp = await api
        .getProjectApi()
        .projectProjectIdTemplatesTemplateIdGet(
          projectId: projectId,
          templateId: templateId,
        );
    template = resp.data;
    print(template);
    if (template == null) {
      emitLoadFailed(failureResponse: 'Template not exists');
      return;
    }
    for (var bloc in dynamicBlocs) {
      removeFieldBloc(fieldBloc: bloc);
    }
    dynamicBlocs = [];
    if (template!.surveyVars != null && template!.surveyVars!.isNotEmpty) {
      for (var surveyVar in template!.surveyVars!) {
        TextFieldBloc fieldBloc;
        if (surveyVar.type == TemplateSurveyVarTypeEnum.int_) {
          fieldBloc = TextFieldBloc<int>(
            name: surveyVar.name,
            validators: surveyVar.required_ == true
                ? [FieldBlocValidators.required]
                : [],
          );
        } else {
          fieldBloc = TextFieldBloc<String>(
            name: surveyVar.name,
            validators: surveyVar.required_ == true
                ? [FieldBlocValidators.required]
                : [],
          );
        }
        dynamicBlocs.add(fieldBloc);
        addFieldBloc(fieldBloc: fieldBloc);
      }
      if (task != null) {
        initTask(task);
      }
      emitLoaded();
    }
  }

  void initTask(Task task) {
    message.updateValue(task.message ?? '');
    // dryRun.updateValue(task.dryRun ?? false);
    // diff.updateValue(task.diff ?? false);
    if (task.environment != null) {
      final dynamicData = jsonDecode(task.environment!);
      for (var bloc in dynamicBlocs) {
        final name = bloc.name;
        final value = dynamicData[name];
        if (value != null) {
          if (bloc is TextFieldBloc<int>) {
            bloc.updateValue(value);
            bloc.updateInitialValue(value);
          } else if (bloc is TextFieldBloc<String>) {
            bloc.updateValue(value);
            bloc.updateInitialValue(value);
          }
        }
      }
    }
  }

  @override
  FutureOr<void> onSubmitting() async {
    try {
      final dynamicData = <String, dynamic>{};
      for (var bloc in dynamicBlocs) {
        dynamicData[bloc.name] = bloc.value;
      }
      final resp = await api.getProjectApi().projectProjectIdTasksPost(
        projectId: template!.projectId!,
        task: ProjectProjectIdTasksPostRequest(
          templateId: template!.id!,
          // dryRun: dryRun.value,
          // debug: debug.value,
          // diff: diff.value,
          environment: dynamicBlocs.isNotEmpty ? jsonEncode(dynamicData) : null,
        ),
      );
      final newTask = resp.data;
      if (newTask != null) {
        emitSuccess(successResponse: newTask);
      } else {
        emitFailure(failureResponse: 'Failed to create task');
      }
    } catch (e) {
      emitFailure(failureResponse: e.toString());
    }
  }
}
