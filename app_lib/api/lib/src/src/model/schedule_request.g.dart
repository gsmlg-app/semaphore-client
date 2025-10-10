// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleRequest _$ScheduleRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ScheduleRequest',
      json,
      ($checkedConvert) {
        final val = ScheduleRequest(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          cronFormat: $checkedConvert('cron_format', (v) => v as String?),
          projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
          templateId: $checkedConvert(
            'template_id',
            (v) => (v as num?)?.toInt(),
          ),
          name: $checkedConvert('name', (v) => v as String?),
          active: $checkedConvert('active', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'cronFormat': 'cron_format',
        'projectId': 'project_id',
        'templateId': 'template_id',
      },
    );

Map<String, dynamic> _$ScheduleRequestToJson(ScheduleRequest instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.cronFormat case final value?) 'cron_format': value,
      if (instance.projectId case final value?) 'project_id': value,
      if (instance.templateId case final value?) 'template_id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.active case final value?) 'active': value,
    };
