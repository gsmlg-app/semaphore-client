import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:app_api/app_api.dart';

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
      final projectApi = event.api.getProjectApi();
      final resp = await projectApi.projectProjectIdRepositoriesGet(
        projectId: event.projectId,
        sort: 'name',
        order: 'asc',
      );

      print(resp.data);
      emit(RepositoryLoaded(repositorys: resp.data ?? [], loading: false));
    } catch (e) {
      print(e);
      emit(RepositoryError(e));
    }
  }
}
