import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:semaphore_api/semaphore_api.dart';
import 'package:app_logging/app_logging.dart';

part 'repository_event.dart';
part 'repository_state.dart';

class RepositoryBloc extends Bloc<RepositoryEvent, RepositoryState> {
  RepositoryBloc() : super(RepositoryInitial()) {
    on<RepositoryLoad>(_repositoryLoad);
  }

  Future<void> _repositoryLoad(
    RepositoryLoad event,
    Emitter<RepositoryState> emit,
  ) async {
    if (state is RepositoryLoaded) {
      emit(
        RepositoryLoaded(
          repositorys: (state as RepositoryLoaded).repositorys,
          loading: true,
        ),
      );
    } else {
      emit(RepositoryLoading());
    }
    try {
      final repositoryApi = event.api.getRepositoryApi();
      final resp = await repositoryApi.projectProjectIdRepositoriesGet(
        projectId: event.projectId,
        sort: 'name',
        order: 'asc',
      );

      AppLogger().d('Repository data: ${resp.data}');
      emit(RepositoryLoaded(repositorys: resp.data?.toList() ?? [], loading: false));
    } catch (e) {
      AppLogger().e('Failed to load repositories', e);
      emit(RepositoryError(e));
    }
  }
}
