import 'package:app_api/app_api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'task_output_event.dart';
part 'task_output_state.dart';

class TaskOutputBloc extends Bloc<TaskOutputEvent, TaskOutputState> {
  TaskOutputBloc() : super(TaskOutputInitial()) {
    on<TaskOutputLoad>(_onTaskOutputLoad);
  }

  _onTaskOutputLoad(TaskOutputLoad event, Emitter<TaskOutputState> emit) async {
    try {
      if (state is TaskOutputInitial) {
        emit(TaskOutputLoading());
      }

      final taskResp = await event.api
          .getProjectApi()
          .projectProjectIdTasksTaskIdGet(
              projectId: event.projectId, taskId: event.taskId);
      final outputResp = await event.api
          .getProjectApi()
          .projectProjectIdTasksTaskIdOutputGet(
              projectId: event.projectId, taskId: event.taskId);
      if (taskResp.data == null) {
        emit(TaskOutputError(Exception('Task not exists!')));
        return;
      }

      emit(TaskOutputLoadDone(taskResp.data!, outputResp.data ?? []));
    } catch (e) {
      emit(TaskOutputError(e));
    }
  }
}
