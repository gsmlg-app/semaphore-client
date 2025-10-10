import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:app_api/app_api.dart';

part 'variable_event.dart';
part 'variable_state.dart';

class VariableBloc extends Bloc<VariableEvent, VariableState> {
  VariableBloc() : super(VariableInitial()) {
    on<VariableLoad>(_variableLoad);
  }

  _variableLoad(VariableLoad event, Emitter<VariableState> emit) async {
    if (state is VariableLoaded) {
      emit(VariableLoaded(
          variables: (state as VariableLoaded).variables, loading: true));
    } else {
      emit(VariableLoading());
    }
    try {
      final projectApi = event.api.getProjectApi();
      final resp = await projectApi.projectProjectIdEnvironmentGet(
          projectId: event.projectId, sort: 'name', order: 'asc');

      print(resp.data);
      emit(VariableLoaded(variables: resp.data ?? [], loading: false));
    } catch (e) {
      print(e);
      emit(VariableError(e));
    }
  }
}
