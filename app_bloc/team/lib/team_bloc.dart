import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:app_api/app_api.dart';

part 'team_event.dart';
part 'team_state.dart';

class TeamBloc extends Bloc<TeamEvent, TeamState> {
  TeamBloc() : super(TeamInitial()) {
    on<TeamLoad>(_teamLoad);
  }

  Future<void> _teamLoad(TeamLoad event, Emitter<TeamState> emit) async {
    if (state is TeamLoaded) {
      emit(TeamLoaded(users: (state as TeamLoaded).users, loading: true));
    } else {
      emit(TeamLoading());
    }
    try {
      final projectApi = event.api.getProjectApi();
      final resp = await projectApi.projectProjectIdUsersGet(
        projectId: event.projectId,
        sort: 'name',
        order: 'asc',
      );

      print(resp.data);
      emit(TeamLoaded(users: resp.data ?? [], loading: false));
    } catch (e) {
      print(e);
      emit(TeamError(e));
    }
  }
}
