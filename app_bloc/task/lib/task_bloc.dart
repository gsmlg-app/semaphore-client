import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:app_api/app_api.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskInitial()) {
    on<TaskLoad>(_taskLoad);
  }

  Future<void> _taskLoad(TaskLoad event, Emitter<TaskState> emit) async {
    try {
      Template? template = event.template;
      if (state is TaskLoaded &&
          (state as TaskLoaded).template.id == event.templateId) {
        template = (state as TaskLoaded).template;
        emit(
          TaskLoaded(
            loading: true,
            template: template,
            taskList: (state as TaskLoaded).taskList,
          ),
        );
      } else {
        emit(TaskLoading());
      }
      if (template == null) {
        final resp = await event.api
            .getProjectApi()
            .projectProjectIdTemplatesTemplateIdGet(
              projectId: event.projectId,
              templateId: event.templateId,
            );
        template = resp.data;
        if (template == null) {
          emit(TaskError(Exception('Template not found')));
          return;
        }
        emit(TaskLoading(template: template));
      }

      final projectApi = event.api.getProjectApi();
      final resp = await projectApi
          .projectProjectIdTemplatesTemplateIdTasksLastGet(
            projectId: event.projectId,
            templateId: event.templateId,
          );
      emit(TaskLoaded(template: template, taskList: resp.data ?? []));
    } catch (e) {
      emit(TaskError(e));
    }
  }
}
