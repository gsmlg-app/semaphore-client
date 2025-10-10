// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inventory _$InventoryFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Inventory',
  json,
  ($checkedConvert) {
    final val = Inventory(
      id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
      name: $checkedConvert('name', (v) => v as String?),
      projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
      inventory: $checkedConvert('inventory', (v) => v as String?),
      sshKeyId: $checkedConvert('ssh_key_id', (v) => (v as num?)?.toInt()),
      becomeKeyId: $checkedConvert(
        'become_key_id',
        (v) => (v as num?)?.toInt(),
      ),
      repositoryId: $checkedConvert(
        'repository_id',
        (v) => (v as num?)?.toInt(),
      ),
      type: $checkedConvert(
        'type',
        (v) => $enumDecodeNullable(_$InventoryTypeEnumEnumMap, v),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'projectId': 'project_id',
    'sshKeyId': 'ssh_key_id',
    'becomeKeyId': 'become_key_id',
    'repositoryId': 'repository_id',
  },
);

Map<String, dynamic> _$InventoryToJson(Inventory instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.name case final value?) 'name': value,
  if (instance.projectId case final value?) 'project_id': value,
  if (instance.inventory case final value?) 'inventory': value,
  if (instance.sshKeyId case final value?) 'ssh_key_id': value,
  if (instance.becomeKeyId case final value?) 'become_key_id': value,
  if (instance.repositoryId case final value?) 'repository_id': value,
  if (_$InventoryTypeEnumEnumMap[instance.type] case final value?)
    'type': value,
};

const _$InventoryTypeEnumEnumMap = {
  InventoryTypeEnum.static_: 'static',
  InventoryTypeEnum.staticYaml: 'static-yaml',
  InventoryTypeEnum.file: 'file',
  InventoryTypeEnum.terraformWorkspace: 'terraform-workspace',
};
