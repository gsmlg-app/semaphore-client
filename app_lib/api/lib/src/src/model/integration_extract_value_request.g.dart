// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_extract_value_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntegrationExtractValueRequest _$IntegrationExtractValueRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'IntegrationExtractValueRequest',
  json,
  ($checkedConvert) {
    final val = IntegrationExtractValueRequest(
      name: $checkedConvert('name', (v) => v as String?),
      valueSource: $checkedConvert(
        'value_source',
        (v) => $enumDecodeNullable(
          _$IntegrationExtractValueRequestValueSourceEnumEnumMap,
          v,
        ),
      ),
      bodyDataType: $checkedConvert(
        'body_data_type',
        (v) => $enumDecodeNullable(
          _$IntegrationExtractValueRequestBodyDataTypeEnumEnumMap,
          v,
        ),
      ),
      key: $checkedConvert('key', (v) => v as String?),
      variable: $checkedConvert('variable', (v) => v as String?),
      variableType: $checkedConvert(
        'variable_type',
        (v) => $enumDecodeNullable(
          _$IntegrationExtractValueRequestVariableTypeEnumEnumMap,
          v,
        ),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'valueSource': 'value_source',
    'bodyDataType': 'body_data_type',
    'variableType': 'variable_type',
  },
);

Map<String, dynamic> _$IntegrationExtractValueRequestToJson(
  IntegrationExtractValueRequest instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (_$IntegrationExtractValueRequestValueSourceEnumEnumMap[instance
          .valueSource]
      case final value?)
    'value_source': value,
  if (_$IntegrationExtractValueRequestBodyDataTypeEnumEnumMap[instance
          .bodyDataType]
      case final value?)
    'body_data_type': value,
  if (instance.key case final value?) 'key': value,
  if (instance.variable case final value?) 'variable': value,
  if (_$IntegrationExtractValueRequestVariableTypeEnumEnumMap[instance
          .variableType]
      case final value?)
    'variable_type': value,
};

const _$IntegrationExtractValueRequestValueSourceEnumEnumMap = {
  IntegrationExtractValueRequestValueSourceEnum.body: 'body',
  IntegrationExtractValueRequestValueSourceEnum.header: 'header',
};

const _$IntegrationExtractValueRequestBodyDataTypeEnumEnumMap = {
  IntegrationExtractValueRequestBodyDataTypeEnum.json: 'json',
  IntegrationExtractValueRequestBodyDataTypeEnum.xml: 'xml',
  IntegrationExtractValueRequestBodyDataTypeEnum.string: 'string',
};

const _$IntegrationExtractValueRequestVariableTypeEnumEnumMap = {
  IntegrationExtractValueRequestVariableTypeEnum.environment: 'environment',
  IntegrationExtractValueRequestVariableTypeEnum.task: 'task',
};
