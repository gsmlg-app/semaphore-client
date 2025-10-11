import 'package:app_api/app_api.dart';
import 'package:app_logging/app_logging.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  ScheduleBloc() : super(ScheduleInitial()) {
    on<ScheduleLoad>(_scheduleLoad);
  }

  Future<void> _scheduleLoad(
    ScheduleLoad event,
    Emitter<ScheduleState> emit,
  ) async {
    if (state is ScheduleLoaded) {
      emit(
        ScheduleLoaded(
          schedules: (state as ScheduleLoaded).schedules,
          loading: true,
        ),
      );
    } else {
      emit(ScheduleLoading());
    }
    try {
      final scheduleApi = event.api.getScheduleApi();
      final resp = await scheduleApi.projectProjectIdSchedulesGet(
        projectId: event.projectId,
      );
      AppLogger().d('Schedule data: ${resp.data}');
      emit(ScheduleLoaded(schedules: resp.data ?? [], loading: false));
    } catch (e) {
      AppLogger().e('Failed to load schedules', error: e);
      emit(ScheduleError(e));
    }
  }
}
