// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntegrationRequest _$IntegrationRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'IntegrationRequest',
  json,
  ($checkedConvert) {
    final val = IntegrationRequest(
      name: $checkedConvert('name', (v) => v as String?),
      projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
      templateId: $checkedConvert('template_id', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {'projectId': 'project_id', 'templateId': 'template_id'},
);

Map<String, dynamic> _$IntegrationRequestToJson(IntegrationRequest instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.projectId case final value?) 'project_id': value,
      if (instance.templateId case final value?) 'template_id': value,
    };
