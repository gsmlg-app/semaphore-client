// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_inventories_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectBackupInventoriesInner _$ProjectBackupInventoriesInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProjectBackupInventoriesInner', json, ($checkedConvert) {
  final val = ProjectBackupInventoriesInner(
    name: $checkedConvert('name', (v) => v as String?),
    inventory: $checkedConvert('inventory', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(
        _$ProjectBackupInventoriesInnerTypeEnumEnumMap,
        v,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProjectBackupInventoriesInnerToJson(
  ProjectBackupInventoriesInner instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.inventory case final value?) 'inventory': value,
  if (_$ProjectBackupInventoriesInnerTypeEnumEnumMap[instance.type]
      case final value?)
    'type': value,
};

const _$ProjectBackupInventoriesInnerTypeEnumEnumMap = {
  ProjectBackupInventoriesInnerTypeEnum.static_: 'static',
  ProjectBackupInventoriesInnerTypeEnum.staticYaml: 'static-yaml',
  ProjectBackupInventoriesInnerTypeEnum.file: 'file',
};
