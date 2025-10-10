// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessKey _$AccessKeyFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AccessKey', json, ($checkedConvert) {
      final val = AccessKey(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$AccessKeyTypeEnumEnumMap, v),
        ),
        projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
      );
      return val;
    }, fieldKeyMap: const {'projectId': 'project_id'});

Map<String, dynamic> _$AccessKeyToJson(AccessKey instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.name case final value?) 'name': value,
  if (_$AccessKeyTypeEnumEnumMap[instance.type] case final value?)
    'type': value,
  if (instance.projectId case final value?) 'project_id': value,
};

const _$AccessKeyTypeEnumEnumMap = {
  AccessKeyTypeEnum.none: 'none',
  AccessKeyTypeEnum.ssh: 'ssh',
  AccessKeyTypeEnum.loginPassword: 'login_password',
};
