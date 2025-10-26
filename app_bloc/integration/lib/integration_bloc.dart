import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:semaphore_api/semaphore_api.dart';
import 'package:app_logging/app_logging.dart';

part 'integration_event.dart';
part 'integration_state.dart';

class IntegrationBloc extends Bloc<IntegrationEvent, IntegrationState> {
  IntegrationBloc() : super(IntegrationInitial()) {
    on<IntegrationLoad>(_integrationLoad);
  }

  Future<void> _integrationLoad(
    IntegrationLoad event,
    Emitter<IntegrationState> emit,
  ) async {
    if (state is IntegrationLoaded) {
      emit(
        IntegrationLoaded(
          integrations: (state as IntegrationLoaded).integrations,
          loading: true,
        ),
      );
    } else {
      emit(IntegrationLoading());
    }
    try {
      final integrationApi = event.api.getIntegrationApi();
      final resp = await integrationApi.projectProjectIdIntegrationsGet(
        projectId: event.projectId,
      );

      AppLogger().d('Integration data: ${resp.data}');
      emit(IntegrationLoaded(integrations: resp.data?.toList() ?? [], loading: false));
    } catch (e) {
      AppLogger().e('Failed to load integrations', e);
      emit(IntegrationError(e));
    }
  }
}
