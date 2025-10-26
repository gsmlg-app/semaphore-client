import 'package:app_logging/app_logging.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:semaphore_api/semaphore_api.dart';

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
      final keyStoreApi = event.api.getKeyStoreApi();
      final resp = await keyStoreApi.projectProjectIdKeysGet(
        projectId: event.projectId,
        sort: 'name',
        order: 'asc',
      );

      AppLogger().d('Key store response: ${resp.data}');
      emit(KeyStoreLoaded(accessKeys: resp.data?.toList() ?? [], loading: false));
    } catch (e) {
      AppLogger().e('Failed to load key store', e);
      emit(KeyStoreError(e));
    }
  }
}
