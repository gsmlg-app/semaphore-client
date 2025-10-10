// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_templates_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectBackupTemplatesInner _$ProjectBackupTemplatesInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProjectBackupTemplatesInner',
  json,
  ($checkedConvert) {
    final val = ProjectBackupTemplatesInner(
      inventory: $checkedConvert('inventory', (v) => v as String?),
      repository: $checkedConvert('repository', (v) => v as String?),
      environment: $checkedConvert('environment', (v) => v as String?),
      view: $checkedConvert('view', (v) => v as String?),
      name: $checkedConvert('name', (v) => v as String?),
      playbook: $checkedConvert('playbook', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      allowOverrideArgsInTask: $checkedConvert(
        'allow_override_args_in_task',
        (v) => v as bool?,
      ),
      suppressSuccessAlerts: $checkedConvert(
        'suppress_success_alerts',
        (v) => v as bool?,
      ),
      autorun: $checkedConvert('autorun', (v) => v as bool?),
      type: $checkedConvert('type', (v) => v as String?),
      allowOverrideBranchInTask: $checkedConvert(
        'allow_override_branch_in_task',
        (v) => v as bool?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'allowOverrideArgsInTask': 'allow_override_args_in_task',
    'suppressSuccessAlerts': 'suppress_success_alerts',
    'allowOverrideBranchInTask': 'allow_override_branch_in_task',
  },
);

Map<String, dynamic> _$ProjectBackupTemplatesInnerToJson(
  ProjectBackupTemplatesInner instance,
) => <String, dynamic>{
  if (instance.inventory case final value?) 'inventory': value,
  if (instance.repository case final value?) 'repository': value,
  if (instance.environment case final value?) 'environment': value,
  if (instance.view case final value?) 'view': value,
  if (instance.name case final value?) 'name': value,
  if (instance.playbook case final value?) 'playbook': value,
  if (instance.description case final value?) 'description': value,
  if (instance.allowOverrideArgsInTask case final value?)
    'allow_override_args_in_task': value,
  if (instance.suppressSuccessAlerts case final value?)
    'suppress_success_alerts': value,
  if (instance.autorun case final value?) 'autorun': value,
  if (instance.type case final value?) 'type': value,
  if (instance.allowOverrideBranchInTask case final value?)
    'allow_override_branch_in_task': value,
};
