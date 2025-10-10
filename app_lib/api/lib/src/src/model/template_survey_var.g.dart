// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_survey_var.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemplateSurveyVar _$TemplateSurveyVarFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TemplateSurveyVar', json, ($checkedConvert) {
      final val = TemplateSurveyVar(
        name: $checkedConvert('name', (v) => v as String?),
        title: $checkedConvert('title', (v) => v as String?),
        description: $checkedConvert('description', (v) => v as String?),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$TemplateSurveyVarTypeEnumEnumMap, v),
        ),
        required_: $checkedConvert('required', (v) => v as bool?),
        values: $checkedConvert(
          'values',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) =>
                    TemplateSurveyVarValue.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'required_': 'required'});

Map<String, dynamic> _$TemplateSurveyVarToJson(TemplateSurveyVar instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      if (_$TemplateSurveyVarTypeEnumEnumMap[instance.type] case final value?)
        'type': value,
      if (instance.required_ case final value?) 'required': value,
      if (instance.values?.map((e) => e.toJson()).toList() case final value?)
        'values': value,
    };

const _$TemplateSurveyVarTypeEnumEnumMap = {
  TemplateSurveyVarTypeEnum.empty: '',
  TemplateSurveyVarTypeEnum.int_: 'int',
  TemplateSurveyVarTypeEnum.enum_: 'enum',
  TemplateSurveyVarTypeEnum.secret: 'secret',
};
