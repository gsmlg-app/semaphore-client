// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_matcher_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntegrationMatcherRequest _$IntegrationMatcherRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'IntegrationMatcherRequest',
  json,
  ($checkedConvert) {
    final val = IntegrationMatcherRequest(
      name: $checkedConvert('name', (v) => v as String?),
      matchType: $checkedConvert(
        'match_type',
        (v) => $enumDecodeNullable(
          _$IntegrationMatcherRequestMatchTypeEnumEnumMap,
          v,
        ),
      ),
      method: $checkedConvert(
        'method',
        (v) => $enumDecodeNullable(
          _$IntegrationMatcherRequestMethodEnumEnumMap,
          v,
        ),
      ),
      bodyDataType: $checkedConvert(
        'body_data_type',
        (v) => $enumDecodeNullable(
          _$IntegrationMatcherRequestBodyDataTypeEnumEnumMap,
          v,
        ),
      ),
      key: $checkedConvert('key', (v) => v as String?),
      value: $checkedConvert('value', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'matchType': 'match_type',
    'bodyDataType': 'body_data_type',
  },
);

Map<String, dynamic> _$IntegrationMatcherRequestToJson(
  IntegrationMatcherRequest instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (_$IntegrationMatcherRequestMatchTypeEnumEnumMap[instance.matchType]
      case final value?)
    'match_type': value,
  if (_$IntegrationMatcherRequestMethodEnumEnumMap[instance.method]
      case final value?)
    'method': value,
  if (_$IntegrationMatcherRequestBodyDataTypeEnumEnumMap[instance.bodyDataType]
      case final value?)
    'body_data_type': value,
  if (instance.key case final value?) 'key': value,
  if (instance.value case final value?) 'value': value,
};

const _$IntegrationMatcherRequestMatchTypeEnumEnumMap = {
  IntegrationMatcherRequestMatchTypeEnum.body: 'body',
  IntegrationMatcherRequestMatchTypeEnum.header: 'header',
};

const _$IntegrationMatcherRequestMethodEnumEnumMap = {
  IntegrationMatcherRequestMethodEnum.equals: 'equals',
  IntegrationMatcherRequestMethodEnum.unequals: 'unequals',
  IntegrationMatcherRequestMethodEnum.contains: 'contains',
};

const _$IntegrationMatcherRequestBodyDataTypeEnumEnumMap = {
  IntegrationMatcherRequestBodyDataTypeEnum.json: 'json',
  IntegrationMatcherRequestBodyDataTypeEnum.xml: 'xml',
  IntegrationMatcherRequestBodyDataTypeEnum.string: 'string',
};
