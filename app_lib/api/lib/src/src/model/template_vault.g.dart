// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_vault.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemplateVault _$TemplateVaultFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TemplateVault', json, ($checkedConvert) {
      final val = TemplateVault(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$TemplateVaultTypeEnumEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$TemplateVaultToJson(TemplateVault instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (_$TemplateVaultTypeEnumEnumMap[instance.type] case final value?)
        'type': value,
    };

const _$TemplateVaultTypeEnumEnumMap = {
  TemplateVaultTypeEnum.password: 'password',
  TemplateVaultTypeEnum.script: 'script',
};
