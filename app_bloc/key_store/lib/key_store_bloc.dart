import 'package:app_logging/app_logging.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:app_api/app_api.dart';

part 'key_store_event.dart';
part 'key_store_state.dart';

class KeyStoreBloc extends Bloc<KeyStoreEvent, KeyStoreState> {
  KeyStoreBloc() : super(KeyStoreInitial()) {
    on<KeyStoreLoad>(_key_storeLoad);
  }

  Future<void> _key_storeLoad(
    KeyStoreLoad event,
    Emitter<KeyStoreState> emit,
  ) async {
    if (state is KeyStoreLoaded) {
      emit(
        KeyStoreLoaded(
          accessKeys: (state as KeyStoreLoaded).accessKeys,
          loading: true,
        ),
      );
    } else {
      emit(KeyStoreLoading());
    }
    try {
      final projectApi = event.api.getProjectApi();
      final resp = await projectApi.projectProjectIdKeysGet(
        projectId: event.projectId,
        sort: 'name',
        order: 'asc',
      );

      AppLogger().d('Key store response: ${resp.data}');
      emit(KeyStoreLoaded(accessKeys: resp.data ?? [], loading: false));
    } catch (e) {
      AppLogger().e('Failed to load key store', error: e);
      emit(KeyStoreError(e));
    }
  }
}
