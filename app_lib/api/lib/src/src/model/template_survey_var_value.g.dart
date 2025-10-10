// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_survey_var_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemplateSurveyVarValue _$TemplateSurveyVarValueFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TemplateSurveyVarValue', json, ($checkedConvert) {
  final val = TemplateSurveyVarValue(
    name: $checkedConvert('name', (v) => v as String?),
    value: $checkedConvert('value', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$TemplateSurveyVarValueToJson(
  TemplateSurveyVarValue instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.value case final value?) 'value': value,
};
