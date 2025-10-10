// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_key_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessKeyRequest _$AccessKeyRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AccessKeyRequest',
      json,
      ($checkedConvert) {
        final val = AccessKeyRequest(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          type: $checkedConvert(
            'type',
            (v) => $enumDecodeNullable(_$AccessKeyRequestTypeEnumEnumMap, v),
          ),
          projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
          overrideSecret: $checkedConvert('override_secret', (v) => v as bool?),
          loginPassword: $checkedConvert(
            'login_password',
            (v) => v == null
                ? null
                : AccessKeyRequestLoginPassword.fromJson(
                    v as Map<String, dynamic>,
                  ),
          ),
          ssh: $checkedConvert(
            'ssh',
            (v) => v == null
                ? null
                : AccessKeyRequestSsh.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'projectId': 'project_id',
        'overrideSecret': 'override_secret',
        'loginPassword': 'login_password',
      },
    );

Map<String, dynamic> _$AccessKeyRequestToJson(AccessKeyRequest instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (_$AccessKeyRequestTypeEnumEnumMap[instance.type] case final value?)
        'type': value,
      if (instance.projectId case final value?) 'project_id': value,
      if (instance.overrideSecret case final value?) 'override_secret': value,
      if (instance.loginPassword?.toJson() case final value?)
        'login_password': value,
      if (instance.ssh?.toJson() case final value?) 'ssh': value,
    };

const _$AccessKeyRequestTypeEnumEnumMap = {
  AccessKeyRequestTypeEnum.none: 'none',
  AccessKeyRequestTypeEnum.ssh: 'ssh',
  AccessKeyRequestTypeEnum.loginPassword: 'login_password',
};
