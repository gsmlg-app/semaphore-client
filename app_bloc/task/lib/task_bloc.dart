import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:semaphore_api/semaphore_api.dart';

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
            .getTemplateApi()
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

      final taskApi = event.api.getTaskApi();
      final resp = await taskApi
          .projectProjectIdTasksLastGet(
            projectId: event.projectId,
          );
      emit(TaskLoaded(template: template, taskList: resp.data?.toList() ?? []));
    } catch (e) {
      emit(TaskError(e));
    }
  }
}
