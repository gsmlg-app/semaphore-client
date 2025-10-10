// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Task',
  json,
  ($checkedConvert) {
    final val = Task(
      id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
      templateId: $checkedConvert('template_id', (v) => (v as num?)?.toInt()),
      projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
      status: $checkedConvert('status', (v) => v as String?),
      debug: $checkedConvert('debug', (v) => v as bool?),
      playbook: $checkedConvert('playbook', (v) => v as String?),
      environment: $checkedConvert('environment', (v) => v as String?),
      secret: $checkedConvert('secret', (v) => v as String?),
      limit: $checkedConvert('limit', (v) => v as String?),
      message: $checkedConvert('message', (v) => v as String?),
      created: $checkedConvert(
        'created',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      started: $checkedConvert(
        'started',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      end: $checkedConvert(
        'end',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      tplPlaybook: $checkedConvert('tpl_playbook', (v) => v as String?),
      tplAlias: $checkedConvert('tpl_alias', (v) => v as String?),
      tplApp: $checkedConvert('tpl_app', (v) => v as String?),
      userName: $checkedConvert('user_name', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'templateId': 'template_id',
    'projectId': 'project_id',
    'tplPlaybook': 'tpl_playbook',
    'tplAlias': 'tpl_alias',
    'tplApp': 'tpl_app',
    'userName': 'user_name',
  },
);

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.templateId case final value?) 'template_id': value,
  if (instance.projectId case final value?) 'project_id': value,
  if (instance.status case final value?) 'status': value,
  if (instance.debug case final value?) 'debug': value,
  if (instance.playbook case final value?) 'playbook': value,
  if (instance.environment case final value?) 'environment': value,
  if (instance.secret case final value?) 'secret': value,
  if (instance.limit case final value?) 'limit': value,
  if (instance.message case final value?) 'message': value,
  if (instance.created?.toIso8601String() case final value?) 'created': value,
  if (instance.started?.toIso8601String() case final value?) 'started': value,
  if (instance.end?.toIso8601String() case final value?) 'end': value,
  if (instance.tplPlaybook case final value?) 'tpl_playbook': value,
  if (instance.tplAlias case final value?) 'tpl_alias': value,
  if (instance.tplApp case final value?) 'tpl_app': value,
  if (instance.userName case final value?) 'user_name': value,
};
