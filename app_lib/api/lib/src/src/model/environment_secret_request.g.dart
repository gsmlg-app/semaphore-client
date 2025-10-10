// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment_secret_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnvironmentSecretRequest _$EnvironmentSecretRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EnvironmentSecretRequest', json, ($checkedConvert) {
  final val = EnvironmentSecretRequest(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
    secret: $checkedConvert('secret', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$EnvironmentSecretRequestTypeEnumEnumMap, v),
    ),
    operation: $checkedConvert(
      'operation',
      (v) => $enumDecodeNullable(
        _$EnvironmentSecretRequestOperationEnumEnumMap,
        v,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$EnvironmentSecretRequestToJson(
  EnvironmentSecretRequest instance,
) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.name case final value?) 'name': value,
  if (instance.secret case final value?) 'secret': value,
  if (_$EnvironmentSecretRequestTypeEnumEnumMap[instance.type]
      case final value?)
    'type': value,
  if (_$EnvironmentSecretRequestOperationEnumEnumMap[instance.operation]
      case final value?)
    'operation': value,
};

const _$EnvironmentSecretRequestTypeEnumEnumMap = {
  EnvironmentSecretRequestTypeEnum.env: 'env',
  EnvironmentSecretRequestTypeEnum.var_: 'var',
};

const _$EnvironmentSecretRequestOperationEnumEnumMap = {
  EnvironmentSecretRequestOperationEnum.create: 'create',
  EnvironmentSecretRequestOperationEnum.update: 'update',
  EnvironmentSecretRequestOperationEnum.delete: 'delete',
};
