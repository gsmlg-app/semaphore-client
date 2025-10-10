// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_extract_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntegrationExtractValue _$IntegrationExtractValueFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'IntegrationExtractValue',
  json,
  ($checkedConvert) {
    final val = IntegrationExtractValue(
      id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
      name: $checkedConvert('name', (v) => v as String?),
      valueSource: $checkedConvert(
        'value_source',
        (v) => $enumDecodeNullable(
          _$IntegrationExtractValueValueSourceEnumEnumMap,
          v,
        ),
      ),
      bodyDataType: $checkedConvert(
        'body_data_type',
        (v) => $enumDecodeNullable(
          _$IntegrationExtractValueBodyDataTypeEnumEnumMap,
          v,
        ),
      ),
      key: $checkedConvert('key', (v) => v as String?),
      variable: $checkedConvert('variable', (v) => v as String?),
      variableType: $checkedConvert(
        'variable_type',
        (v) => $enumDecodeNullable(
          _$IntegrationExtractValueVariableTypeEnumEnumMap,
          v,
        ),
      ),
      integrationId: $checkedConvert(
        'integration_id',
        (v) => (v as num?)?.toInt(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'valueSource': 'value_source',
    'bodyDataType': 'body_data_type',
    'variableType': 'variable_type',
    'integrationId': 'integration_id',
  },
);

Map<String, dynamic> _$IntegrationExtractValueToJson(
  IntegrationExtractValue instance,
) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.name case final value?) 'name': value,
  if (_$IntegrationExtractValueValueSourceEnumEnumMap[instance.valueSource]
      case final value?)
    'value_source': value,
  if (_$IntegrationExtractValueBodyDataTypeEnumEnumMap[instance.bodyDataType]
      case final value?)
    'body_data_type': value,
  if (instance.key case final value?) 'key': value,
  if (instance.variable case final value?) 'variable': value,
  if (_$IntegrationExtractValueVariableTypeEnumEnumMap[instance.variableType]
      case final value?)
    'variable_type': value,
  if (instance.integrationId case final value?) 'integration_id': value,
};

const _$IntegrationExtractValueValueSourceEnumEnumMap = {
  IntegrationExtractValueValueSourceEnum.body: 'body',
  IntegrationExtractValueValueSourceEnum.header: 'header',
};

const _$IntegrationExtractValueBodyDataTypeEnumEnumMap = {
  IntegrationExtractValueBodyDataTypeEnum.json: 'json',
  IntegrationExtractValueBodyDataTypeEnum.xml: 'xml',
  IntegrationExtractValueBodyDataTypeEnum.string: 'string',
};

const _$IntegrationExtractValueVariableTypeEnumEnumMap = {
  IntegrationExtractValueVariableTypeEnum.environment: 'environment',
  IntegrationExtractValueVariableTypeEnum.task: 'task',
};
