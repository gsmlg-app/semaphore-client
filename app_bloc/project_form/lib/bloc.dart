import 'package:semaphore_api/semaphore_api.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:built_value/json_object.dart';

class ProjectFormBloc extends FormBloc<String, String> {
  SemaphoreApi api = SemaphoreApi();

  final name = TextFieldBloc<String>(
    validators: [FieldBlocValidators.required],
  );

  final alert = BooleanFieldBloc<String>(
    validators: [FieldBlocValidators.required],
  );

  final alertChat = TextFieldBloc<String>(validators: []);

  final maxParallelTasks = TextFieldBloc<int>(
    validators: [FieldBlocValidators.required],
  );

  ProjectFormBloc() {
    addFieldBlocs(fieldBlocs: [name, alert, alertChat, maxParallelTasks]);
  }

  @override
  void onSubmitting() async {
    try {
      final projectData = JsonObject({
        'name': name.value,
        'alert': alert.value,
        'max_parallel_tasks': maxParallelTasks.value,
      });
      await api.getProjectApi().projectsPost(
        project: projectData as ProjectRequest,
      );
      emitSuccess(successResponse: 'Project created');
    } catch (e) {
      emitFailure(failureResponse: e.toString());
    }
  }
}
