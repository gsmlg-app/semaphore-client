// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_keys_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectBackupKeysInner _$ProjectBackupKeysInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProjectBackupKeysInner', json, ($checkedConvert) {
  final val = ProjectBackupKeysInner(
    name: $checkedConvert('name', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$ProjectBackupKeysInnerTypeEnumEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProjectBackupKeysInnerToJson(
  ProjectBackupKeysInner instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (_$ProjectBackupKeysInnerTypeEnumEnumMap[instance.type] case final value?)
    'type': value,
};

const _$ProjectBackupKeysInnerTypeEnumEnumMap = {
  ProjectBackupKeysInnerTypeEnum.ssh: 'ssh',
  ProjectBackupKeysInnerTypeEnum.loginPassword: 'login_password',
  ProjectBackupKeysInnerTypeEnum.none: 'none',
};
