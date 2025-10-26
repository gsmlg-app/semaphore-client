import 'package:semaphore_api/semaphore_api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'task_output_event.dart';
part 'task_output_state.dart';

class TaskOutputBloc extends Bloc<TaskOutputEvent, TaskOutputState> {
  TaskOutputBloc() : super(TaskOutputInitial()) {
    on<TaskOutputLoad>(_onTaskOutputLoad);
  }

  Future<void> _onTaskOutputLoad(
    TaskOutputLoad event,
    Emitter<TaskOutputState> emit,
  ) async {
    try {
      if (state is TaskOutputInitial) {
        emit(TaskOutputLoading());
      }

      final taskResp = await event.api
          .getTaskApi()
          .projectProjectIdTasksTaskIdGet(
            projectId: event.projectId,
            taskId: event.taskId,
          );
      final outputResp = await event.api
          .getTaskApi()
          .projectProjectIdTasksTaskIdOutputGet(
            projectId: event.projectId,
            taskId: event.taskId,
          );
      if (taskResp.data == null) {
        emit(TaskOutputError(Exception('Task not exists!')));
        return;
      }

      emit(TaskOutputLoadDone(taskResp.data!, outputResp.data?.toList() ?? []));
    } catch (e) {
      emit(TaskOutputError(e));
    }
  }
}
