// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_matcher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntegrationMatcher _$IntegrationMatcherFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'IntegrationMatcher',
  json,
  ($checkedConvert) {
    final val = IntegrationMatcher(
      id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
      integrationId: $checkedConvert(
        'integration_id',
        (v) => (v as num?)?.toInt(),
      ),
      name: $checkedConvert('name', (v) => v as String?),
      matchType: $checkedConvert(
        'match_type',
        (v) => $enumDecodeNullable(_$IntegrationMatcherMatchTypeEnumEnumMap, v),
      ),
      method: $checkedConvert(
        'method',
        (v) => $enumDecodeNullable(_$IntegrationMatcherMethodEnumEnumMap, v),
      ),
      bodyDataType: $checkedConvert(
        'body_data_type',
        (v) =>
            $enumDecodeNullable(_$IntegrationMatcherBodyDataTypeEnumEnumMap, v),
      ),
      key: $checkedConvert('key', (v) => v as String?),
      value: $checkedConvert('value', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'integrationId': 'integration_id',
    'matchType': 'match_type',
    'bodyDataType': 'body_data_type',
  },
);

Map<String, dynamic> _$IntegrationMatcherToJson(
  IntegrationMatcher instance,
) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.integrationId case final value?) 'integration_id': value,
  if (instance.name case final value?) 'name': value,
  if (_$IntegrationMatcherMatchTypeEnumEnumMap[instance.matchType]
      case final value?)
    'match_type': value,
  if (_$IntegrationMatcherMethodEnumEnumMap[instance.method] case final value?)
    'method': value,
  if (_$IntegrationMatcherBodyDataTypeEnumEnumMap[instance.bodyDataType]
      case final value?)
    'body_data_type': value,
  if (instance.key case final value?) 'key': value,
  if (instance.value case final value?) 'value': value,
};

const _$IntegrationMatcherMatchTypeEnumEnumMap = {
  IntegrationMatcherMatchTypeEnum.body: 'body',
  IntegrationMatcherMatchTypeEnum.header: 'header',
};

const _$IntegrationMatcherMethodEnumEnumMap = {
  IntegrationMatcherMethodEnum.equals: 'equals',
  IntegrationMatcherMethodEnum.unequals: 'unequals',
  IntegrationMatcherMethodEnum.contains: 'contains',
};

const _$IntegrationMatcherBodyDataTypeEnumEnumMap = {
  IntegrationMatcherBodyDataTypeEnum.json: 'json',
  IntegrationMatcherBodyDataTypeEnum.xml: 'xml',
  IntegrationMatcherBodyDataTypeEnum.string: 'string',
};
