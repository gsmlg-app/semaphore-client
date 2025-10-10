// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemplateRequest _$TemplateRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TemplateRequest',
  json,
  ($checkedConvert) {
    final val = TemplateRequest(
      id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
      projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
      inventoryId: $checkedConvert('inventory_id', (v) => (v as num?)?.toInt()),
      repositoryId: $checkedConvert(
        'repository_id',
        (v) => (v as num?)?.toInt(),
      ),
      environmentId: $checkedConvert(
        'environment_id',
        (v) => (v as num?)?.toInt(),
      ),
      viewId: $checkedConvert('view_id', (v) => (v as num?)?.toInt()),
      vaults: $checkedConvert(
        'vaults',
        (v) => (v as List<dynamic>?)
            ?.map((e) => TemplateVault.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      name: $checkedConvert('name', (v) => v as String?),
      playbook: $checkedConvert('playbook', (v) => v as String?),
      arguments: $checkedConvert('arguments', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      allowOverrideArgsInTask: $checkedConvert(
        'allow_override_args_in_task',
        (v) => v as bool?,
      ),
      limit: $checkedConvert('limit', (v) => v as String?),
      suppressSuccessAlerts: $checkedConvert(
        'suppress_success_alerts',
        (v) => v as bool?,
      ),
      app: $checkedConvert('app', (v) => v as String?),
      gitBranch: $checkedConvert('git_branch', (v) => v as String?),
      surveyVars: $checkedConvert(
        'survey_vars',
        (v) => (v as List<dynamic>?)
            ?.map((e) => TemplateSurveyVar.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      type: $checkedConvert(
        'type',
        (v) => $enumDecodeNullable(_$TemplateRequestTypeEnumEnumMap, v),
      ),
      startVersion: $checkedConvert('start_version', (v) => v as String?),
      buildTemplateId: $checkedConvert(
        'build_template_id',
        (v) => (v as num?)?.toInt(),
      ),
      autorun: $checkedConvert('autorun', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'projectId': 'project_id',
    'inventoryId': 'inventory_id',
    'repositoryId': 'repository_id',
    'environmentId': 'environment_id',
    'viewId': 'view_id',
    'allowOverrideArgsInTask': 'allow_override_args_in_task',
    'suppressSuccessAlerts': 'suppress_success_alerts',
    'gitBranch': 'git_branch',
    'surveyVars': 'survey_vars',
    'startVersion': 'start_version',
    'buildTemplateId': 'build_template_id',
  },
);

Map<String, dynamic> _$TemplateRequestToJson(
  TemplateRequest instance,
) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.projectId case final value?) 'project_id': value,
  if (instance.inventoryId case final value?) 'inventory_id': value,
  if (instance.repositoryId case final value?) 'repository_id': value,
  if (instance.environmentId case final value?) 'environment_id': value,
  if (instance.viewId case final value?) 'view_id': value,
  if (instance.vaults?.map((e) => e.toJson()).toList() case final value?)
    'vaults': value,
  if (instance.name case final value?) 'name': value,
  if (instance.playbook case final value?) 'playbook': value,
  if (instance.arguments case final value?) 'arguments': value,
  if (instance.description case final value?) 'description': value,
  if (instance.allowOverrideArgsInTask case final value?)
    'allow_override_args_in_task': value,
  if (instance.limit case final value?) 'limit': value,
  if (instance.suppressSuccessAlerts case final value?)
    'suppress_success_alerts': value,
  if (instance.app case final value?) 'app': value,
  if (instance.gitBranch case final value?) 'git_branch': value,
  if (instance.surveyVars?.map((e) => e.toJson()).toList() case final value?)
    'survey_vars': value,
  if (_$TemplateRequestTypeEnumEnumMap[instance.type] case final value?)
    'type': value,
  if (instance.startVersion case final value?) 'start_version': value,
  if (instance.buildTemplateId case final value?) 'build_template_id': value,
  if (instance.autorun case final value?) 'autorun': value,
};

const _$TemplateRequestTypeEnumEnumMap = {
  TemplateRequestTypeEnum.empty: '',
  TemplateRequestTypeEnum.build: 'build',
  TemplateRequestTypeEnum.deploy: 'deploy',
};
