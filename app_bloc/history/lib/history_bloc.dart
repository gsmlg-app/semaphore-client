import 'package:app_api/app_api.dart';
import 'package:app_logging/app_logging.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryInitial()) {
    on<HistoryLoad>(_historyLoad);
  }

  Future<void> _historyLoad(
    HistoryLoad event,
    Emitter<HistoryState> emit,
  ) async {
    if (state is HistoryLoaded) {
      emit(
        HistoryLoaded(history: (state as HistoryLoaded).history, loading: true),
      );
    } else {
      emit(HistoryLoading());
    }
    try {
      final projectApi = event.api.getProjectApi();
      final resp = await projectApi.projectProjectIdTasksLastGet(
        projectId: event.projectId,
      );
      AppLogger().d('History data: ${resp.data}');
      emit(HistoryLoaded(history: resp.data ?? []));
    } catch (e) {
      AppLogger().e('Failed to load history', e);
      emit(HistoryError(e));
    }
  }
}
