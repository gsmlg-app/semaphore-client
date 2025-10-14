import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:app_api/app_api.dart';
import 'package:app_logging/app_logging.dart';

part 'variable_event.dart';
part 'variable_state.dart';

class VariableBloc extends Bloc<VariableEvent, VariableState> {
  VariableBloc() : super(VariableInitial()) {
    on<VariableLoad>(_variableLoad);
    on<VariableCreate>(_variableCreate);
    on<VariableUpdate>(_variableUpdate);
    on<VariableDelete>(_variableDelete);
  }

  Future<void> _variableLoad(
    VariableLoad event,
    Emitter<VariableState> emit,
  ) async {
    if (state is VariableLoaded) {
      emit(
        VariableLoaded(
          variables: (state as VariableLoaded).variables,
          loading: true,
        ),
      );
    } else {
      emit(VariableLoading());
    }
    try {
      final projectApi = event.api.getProjectApi();
      final resp = await projectApi.projectProjectIdEnvironmentGet(
        projectId: event.projectId,
        sort: 'name',
        order: 'asc',
      );

      AppLogger().d('Variable data: ${resp.data}');
      emit(VariableLoaded(variables: resp.data ?? [], loading: false));
    } catch (e) {
      AppLogger().e('Failed to load variables', e);
      emit(VariableError(e));
    }
  }

  Future<void> _variableCreate(
    VariableCreate event,
    Emitter<VariableState> emit,
  ) async {
    if (state is! VariableLoaded) return;

    final currentVariables = (state as VariableLoaded).variables;
    emit(VariableLoaded(variables: currentVariables, loading: true));

    try {
      final projectApi = event.api.getProjectApi();
      await projectApi.projectProjectIdEnvironmentPost(
        projectId: event.projectId,
        environment: event.environment,
      );

      // Reload variables after creation
      add(VariableLoad(event.api, event.projectId));
    } catch (e) {
      AppLogger().e('Failed to create variable', e);
      emit(VariableLoaded(variables: currentVariables, loading: false));
    }
  }

  Future<void> _variableUpdate(
    VariableUpdate event,
    Emitter<VariableState> emit,
  ) async {
    if (state is! VariableLoaded) return;

    final currentVariables = (state as VariableLoaded).variables;
    emit(VariableLoaded(variables: currentVariables, loading: true));

    try {
      final projectApi = event.api.getProjectApi();
      await projectApi.projectProjectIdEnvironmentEnvironmentIdPut(
        projectId: event.projectId,
        environmentId: event.environmentId,
        environment: event.environment,
      );

      // Reload variables after update
      add(VariableLoad(event.api, event.projectId));
    } catch (e) {
      AppLogger().e('Failed to update variable', e);
      emit(VariableLoaded(variables: currentVariables, loading: false));
    }
  }

  Future<void> _variableDelete(
    VariableDelete event,
    Emitter<VariableState> emit,
  ) async {
    if (state is! VariableLoaded) return;

    final currentVariables = (state as VariableLoaded).variables;
    emit(VariableLoaded(variables: currentVariables, loading: true));

    try {
      AppLogger().d(
        'Deleting variable: projectId=${event.projectId}, environmentId=${event.environmentId}',
      );
      final projectApi = event.api.getProjectApi();
      final response = await projectApi
          .projectProjectIdEnvironmentEnvironmentIdDelete(
            projectId: event.projectId,
            environmentId: event.environmentId,
          );

      AppLogger().d('Delete response: ${response.statusCode}');

      // Reload variables after deletion
      add(VariableLoad(event.api, event.projectId));
    } catch (e) {
      AppLogger().e('Failed to delete variable', e);
      emit(VariableLoaded(variables: currentVariables, loading: false));
    }
  }
}
