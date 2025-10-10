// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment_secret.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnvironmentSecret _$EnvironmentSecretFromJson(Map<String, dynamic> json) =>
    $checkedCreate('EnvironmentSecret', json, ($checkedConvert) {
      final val = EnvironmentSecret(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$EnvironmentSecretTypeEnumEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$EnvironmentSecretToJson(EnvironmentSecret instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (_$EnvironmentSecretTypeEnumEnumMap[instance.type] case final value?)
        'type': value,
    };

const _$EnvironmentSecretTypeEnumEnumMap = {
  EnvironmentSecretTypeEnum.env: 'env',
  EnvironmentSecretTypeEnum.var_: 'var',
};
