// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_tasks_post_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectProjectIdTasksPostRequestParams
_$ProjectProjectIdTasksPostRequestParamsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProjectProjectIdTasksPostRequestParams',
      json,
      ($checkedConvert) {
        final val = ProjectProjectIdTasksPostRequestParams(
          debug: $checkedConvert('debug', (v) => v as bool?),
          dryRun: $checkedConvert('dry_run', (v) => v as bool?),
          diff: $checkedConvert('diff', (v) => v as bool?),
          limit: $checkedConvert('limit', (v) => v as List<dynamic>?),
        );
        return val;
      },
      fieldKeyMap: const {'dryRun': 'dry_run'},
    );

Map<String, dynamic> _$ProjectProjectIdTasksPostRequestParamsToJson(
  ProjectProjectIdTasksPostRequestParams instance,
) => <String, dynamic>{
  if (instance.debug case final value?) 'debug': value,
  if (instance.dryRun case final value?) 'dry_run': value,
  if (instance.diff case final value?) 'diff': value,
  if (instance.limit case final value?) 'limit': value,
};
