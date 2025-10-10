// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_tasks_post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectProjectIdTasksPostRequest _$ProjectProjectIdTasksPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProjectProjectIdTasksPostRequest',
  json,
  ($checkedConvert) {
    final val = ProjectProjectIdTasksPostRequest(
      templateId: $checkedConvert('template_id', (v) => (v as num?)?.toInt()),
      playbook: $checkedConvert('playbook', (v) => v as String?),
      environment: $checkedConvert('environment', (v) => v as String?),
      gitBranch: $checkedConvert('git_branch', (v) => v as String?),
      message: $checkedConvert('message', (v) => v as String?),
      limit: $checkedConvert('limit', (v) => v as String?),
      params: $checkedConvert(
        'params',
        (v) => v == null
            ? null
            : ProjectProjectIdTasksPostRequestParams.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'templateId': 'template_id', 'gitBranch': 'git_branch'},
);

Map<String, dynamic> _$ProjectProjectIdTasksPostRequestToJson(
  ProjectProjectIdTasksPostRequest instance,
) => <String, dynamic>{
  if (instance.templateId case final value?) 'template_id': value,
  if (instance.playbook case final value?) 'playbook': value,
  if (instance.environment case final value?) 'environment': value,
  if (instance.gitBranch case final value?) 'git_branch': value,
  if (instance.message case final value?) 'message': value,
  if (instance.limit case final value?) 'limit': value,
  if (instance.params?.toJson() case final value?) 'params': value,
};
