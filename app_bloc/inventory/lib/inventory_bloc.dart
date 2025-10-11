import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:app_api/app_api.dart';
import 'package:app_logging/app_logging.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';

class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  InventoryBloc() : super(InventoryInitial()) {
    on<InventoryLoad>(_inventoryLoad);
    on<InventoryAdd>(_inventoryAdd);
    on<InventoryRemove>(_inventoryRemove);
  }

  void _inventoryLoad(InventoryLoad event, Emitter<InventoryState> emit) async {
    if (state is InventoryLoaded) {
      emit(
        InventoryLoaded(
          inventorys: (state as InventoryLoaded).inventorys,
          loading: true,
        ),
      );
    } else {
      emit(InventoryLoading());
    }
    try {
      final projectApi = event.api.getProjectApi();
      final resp = await projectApi.projectProjectIdInventoryGet(
        projectId: event.projectId,
        sort: 'name',
        order: 'asc',
      );
      AppLogger().d('Inventory data: ${resp.data}');
      emit(InventoryLoaded(inventorys: resp.data ?? [], loading: false));
    } catch (e) {
      AppLogger().e('Failed to load inventory', error: e);
      emit(InventoryError(e));
    }
  }

  void _inventoryAdd(InventoryAdd event, Emitter<InventoryState> emit) async {
    if (state is InventoryLoaded) {
      try {
        final currentState = state as InventoryLoaded;
        final projectApi = event.api.getProjectApi();
        final request = InventoryRequest(
          name: event.inventory.name,
          inventory: event.inventory.inventory,
          sshKeyId: event.inventory.sshKeyId,
          becomeKeyId: event.inventory.becomeKeyId,
          repositoryId: event.inventory.repositoryId,
          type: InventoryRequestTypeEnum.values.firstWhere(
            (e) => e.name == event.inventory.type?.name,
          ),
        );
        final resp = await projectApi.projectProjectIdInventoryPost(
          projectId: event.projectId,
          inventory: request,
        );

        emit(
          InventoryLoaded(
            inventorys: [...currentState.inventorys, resp.data!],
            loading: false,
          ),
        );
      } catch (e) {
        AppLogger().e('Failed to add inventory', error: e);
        emit(InventoryError(e));
      }
    } else {
      emit(InventoryError('Cannot add inventory when not loaded'));
    }
  }

  void _inventoryRemove(
    InventoryRemove event,
    Emitter<InventoryState> emit,
  ) async {
    if (state is InventoryLoaded) {
      try {
        final currentState = state as InventoryLoaded;
        final projectApi = event.api.getProjectApi();
        await projectApi.projectProjectIdInventoryInventoryIdDelete(
          projectId: event.projectId,
          inventoryId: event.inventory.id!,
        );

        emit(
          InventoryLoaded(
            inventorys: currentState.inventorys
                .where((i) => i.id != event.inventory.id)
                .toList(),
            loading: false,
          ),
        );
      } catch (e) {
        AppLogger().e('Failed to remove inventory', error: e);
        emit(InventoryError(e));
      }
    } else {
      emit(InventoryError('Cannot remove inventory when not loaded'));
    }
  }
}
