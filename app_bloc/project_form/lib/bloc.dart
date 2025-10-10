import 'package:app_api/app_api.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class ProjectFormBloc extends FormBloc<String, String> {
  SemaphoreApi api = SemaphoreApi();

  final name = TextFieldBloc<String>(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final alert = BooleanFieldBloc<String>(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final alertChat = TextFieldBloc<String>(
    validators: [],
  );

  final maxParallelTasks = TextFieldBloc<int>(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  ProjectFormBloc() {
    addFieldBlocs(
      fieldBlocs: [name, alert, alertChat, maxParallelTasks],
    );
  }

  @override
  void onSubmitting() async {
    try {
      await api.getProjectsApi().projectsPost(
            project: ProjectRequest(
              name: name.value,
              alert: alert.value,
              // alertChat: alertChat.value,
              maxParallelTasks: maxParallelTasks.value as int,
            ),
          );
      emitSuccess(
        successResponse: 'Project created',
      );
    } catch (e) {
      emitFailure(
        failureResponse: e.toString(),
      );
    }
  }
}
