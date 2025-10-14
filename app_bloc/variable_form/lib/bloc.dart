import 'package:dio/dio.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:app_api/app_api.dart';

class VariableFormBloc extends FormBloc<String, String> {
  SemaphoreApi api = SemaphoreApi();
  int projectId = 1;
  Environment? editData;

  final name = TextFieldBloc<String>(
    validators: [FieldBlocValidators.required],
  );

  final json = TextFieldBloc<String>(validators: []);

  final env = TextFieldBloc<String>(validators: []);

  final password = TextFieldBloc<String>(validators: []);

  VariableFormBloc() {
    addFieldBlocs(fieldBlocs: [name, json, env, password]);
  }

  void init({
    required SemaphoreApi api,
    required int projectId,
    Environment? environment,
  }) async {
    emitLoading();
    try {
      editData = environment;
      this.api = api;
      this.projectId = projectId;

      if (environment != null) {
        _setValues(environment);
      }
      emitLoaded();
    } catch (e) {
      emitLoadFailed(failureResponse: e.toString());
    }
  }

  @override
  void onSubmitting() async {
    try {
      final projectApi = api.getProjectApi();
      if (editData == null) {
        final request = EnvironmentRequest(
          projectId: projectId,
          name: name.value,
          json: json.value.isEmpty ? null : json.value,
          env: env.value.isEmpty ? null : env.value,
          password: password.value.isEmpty ? null : password.value,
        );
        await projectApi.projectProjectIdEnvironmentPost(
          projectId: projectId,
          environment: request,
        );
        emitSuccess(successResponse: 'Variable has been created');
      } else {
        final request = EnvironmentRequest(
          id: editData!.id!,
          projectId: projectId,
          name: name.value,
          json: json.value.isEmpty ? null : json.value,
          env: env.value.isEmpty ? null : env.value,
          password: password.value.isEmpty ? null : password.value,
        );
        await projectApi.projectProjectIdEnvironmentEnvironmentIdPut(
          projectId: projectId,
          environmentId: editData!.id!,
          environment: request,
        );
        emitSuccess(successResponse: 'Variable has been updated');
      }
    } on DioException catch (e) {
      emitFailure(failureResponse: e.response.toString());
    } catch (e) {
      emitFailure(failureResponse: e.toString());
    }
  }

  void _setValues(Environment item) {
    clear();
    name.updateValue(item.name ?? '');
    json.updateValue(item.json ?? '');
    env.updateValue(item.env ?? '');
    password.updateValue(item.password ?? '');
  }
}
