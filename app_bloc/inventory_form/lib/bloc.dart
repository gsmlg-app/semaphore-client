import 'package:dio/dio.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:semaphore_api/semaphore_api.dart';

class InventoryFormBloc extends FormBloc<String, String> {
  late SemaphoreApi api;
  int projectId = 1;
  Inventory? editData;

  final name = TextFieldBloc<String>(
    validators: [FieldBlocValidators.required],
  );

  final sshKeyId = SelectFieldBloc<AccessKey, dynamic>(
    validators: [FieldBlocValidators.required],
  );

  final becomeKeyId = SelectFieldBloc<AccessKey, dynamic>(validators: []);

  final type = SelectFieldBloc<InventoryTypeEnum, dynamic>(
    validators: [FieldBlocValidators.required],
    items: InventoryTypeEnum.values.toList(),
  );

  final inventory = TextFieldBloc<String>(validators: []);

  final repositoryId = SelectFieldBloc<Repository, dynamic>(validators: []);

  InventoryFormBloc() {
    addFieldBlocs(
      fieldBlocs: [name, sshKeyId, becomeKeyId, type, inventory, repositoryId],
    );
  }

  void init({
    required SemaphoreApi api,
    required int projectId,
    Inventory? inventory,
  }) async {
    emitLoading();
    try {
      editData = inventory;
      this.api = api;
      this.projectId = projectId;
      final keyStoreApi = api.getKeyStoreApi();
      final accessKeys = await keyStoreApi.projectProjectIdKeysGet(
        projectId: projectId,
        sort: 'name',
        order: 'asc',
      );
      sshKeyId.updateItems(accessKeys.data?.toList() ?? []);
      becomeKeyId.updateItems(accessKeys.data?.toList() ?? []);
      final repositoryApi = api.getRepositoryApi();
      final repositories = await repositoryApi.projectProjectIdRepositoriesGet(
        projectId: projectId,
        sort: 'name',
        order: 'asc',
      );
      repositoryId.updateItems(repositories.data?.toList() ?? []);
      if (inventory != null) {
        _setValues(inventory, accessKeys.data?.toList() ?? [], repositories.data?.toList() ?? []);
      }
      emitLoaded();
    } catch (e) {
      emitLoadFailed(failureResponse: e.toString());
    }
  }

  @override
  void onSubmitting() async {
    try {
      final inventoryApi = api.getInventoryApi();
      if (editData == null) {
        final request = InventoryRequest((b) => b
          ..projectId = projectId
          ..name = name.value
          ..sshKeyId = sshKeyId.value?.id
          ..becomeKeyId = becomeKeyId.value?.id
          ..type = InventoryRequestTypeEnum.values.firstWhere(
            (e) => e.name == type.value?.name,
          )
          ..inventory = inventory.value
          ..repositoryId = repositoryId.value?.id);
        await inventoryApi.projectProjectIdInventoryPost(
          projectId: projectId,
          inventory: request,
        );
        emitSuccess(successResponse: 'Inventory has been created');
      } else {
        final request = InventoryRequest((b) => b
          ..id = editData!.id!
          ..projectId = projectId
          ..name = name.value
          ..sshKeyId = sshKeyId.value?.id
          ..becomeKeyId = becomeKeyId.value?.id
          ..type = InventoryRequestTypeEnum.values.firstWhere(
            (e) => e.name == type.value?.name,
          )
          ..inventory = inventory.value
          ..repositoryId = repositoryId.value?.id);
        await inventoryApi.projectProjectIdInventoryInventoryIdPut(
          projectId: projectId,
          inventoryId: editData!.id!,
          inventory: request,
        );
        emitSuccess(successResponse: 'Inventory has been updated');
      }
    } on DioException catch (e) {
      emitFailure(failureResponse: e.response.toString());
    } catch (e) {
      emitFailure(failureResponse: e.toString());
    }
  }

  void _setValues(
    Inventory item,
    List<AccessKey> keys,
    List<Repository> repos,
  ) {
    clear();
    name.updateValue(item.name ?? '');
    sshKeyId.updateValue(keys.where((k) => k.id == item.sshKeyId).firstOrNull);
    becomeKeyId.updateValue(
      keys.where((k) => k.id == item.becomeKeyId).firstOrNull,
    );
    type.updateValue(item.type);
    inventory.updateValue(item.inventory ?? '');
    repositoryId.updateValue(
      repos.where((r) => r.id == item.repositoryId).firstOrNull,
    );
  }
}
