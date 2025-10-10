// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Schedule',
  json,
  ($checkedConvert) {
    final val = Schedule(
      id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
      cronFormat: $checkedConvert('cron_format', (v) => v as String?),
      projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
      templateId: $checkedConvert('template_id', (v) => (v as num?)?.toInt()),
      name: $checkedConvert('name', (v) => v as String?),
      active: $checkedConvert('active', (v) => v as bool?),
      tplName: $checkedConvert('tpl_name', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'cronFormat': 'cron_format',
    'projectId': 'project_id',
    'templateId': 'template_id',
    'tplName': 'tpl_name',
  },
);

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.cronFormat case final value?) 'cron_format': value,
  if (instance.projectId case final value?) 'project_id': value,
  if (instance.templateId case final value?) 'template_id': value,
  if (instance.name case final value?) 'name': value,
  if (instance.active case final value?) 'active': value,
  if (instance.tplName case final value?) 'tpl_name': value,
};
