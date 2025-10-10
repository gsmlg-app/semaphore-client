import 'package:app_api/app_api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryInitial()) {
    on<HistoryLoad>(_historyLoad);
  }

  _historyLoad(HistoryLoad event, Emitter<HistoryState> emit) async {
    if (state is HistoryLoaded) {
      emit(HistoryLoaded(
          history: (state as HistoryLoaded).history, loading: true));
    } else {
      emit(HistoryLoading());
    }
    try {
      final projectApi = event.api.getProjectApi();
      final resp = await projectApi.projectProjectIdTasksLastGet(
          projectId: event.projectId);
      print(resp.data);
      emit(HistoryLoaded(history: resp.data ?? []));
    } catch (e) {
      print(e);
      emit(HistoryError(e));
    }
  }
}
