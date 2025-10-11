import 'package:app_api/app_api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'activity_event.dart';
part 'activity_state.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc() : super(ActivityInitial()) {
    on<ActivityLoad>(_activityLoad);
  }

  Future<void> _activityLoad(
    ActivityLoad event,
    Emitter<ActivityState> emit,
  ) async {
    if (state is ActivityLoaded) {
      emit(
        ActivityLoaded(
          activities: (state as ActivityLoaded).activities,
          loading: true,
        ),
      );
    } else {
      emit(ActivityLoading());
    }
    try {
      final projectApi = event.api.getProjectApi();
      final resp = await projectApi.projectProjectIdEventsGet(
        projectId: event.projectId,
      );
      print(resp.data);
      emit(ActivityLoaded(activities: resp.data ?? [], loading: false));
    } catch (e) {
      print(e);
      emit(ActivityError(e));
    }
  }
}
