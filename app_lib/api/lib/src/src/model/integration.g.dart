// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Integration _$IntegrationFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Integration',
  json,
  ($checkedConvert) {
    final val = Integration(
      id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
      name: $checkedConvert('name', (v) => v as String?),
      projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
      templateId: $checkedConvert('template_id', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {'projectId': 'project_id', 'templateId': 'template_id'},
);

Map<String, dynamic> _$IntegrationToJson(Integration instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.projectId case final value?) 'project_id': value,
      if (instance.templateId case final value?) 'template_id': value,
    };
