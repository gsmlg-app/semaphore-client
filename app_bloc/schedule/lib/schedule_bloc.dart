import 'package:semaphore_api/semaphore_api.dart';
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
      // TODO: Schedule list API not available in current OpenAPI spec
      // Using empty list until API is updated
      AppLogger().d('Schedule list API not yet available');
      emit(ScheduleLoaded(schedules: [], loading: false));
    } catch (e) {
      AppLogger().e('Failed to load schedules', e);
      emit(ScheduleError(e));
    }
  }
}
