// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_put_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectProjectIdPutRequest _$ProjectProjectIdPutRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProjectProjectIdPutRequest',
  json,
  ($checkedConvert) {
    final val = ProjectProjectIdPutRequest(
      name: $checkedConvert('name', (v) => v as String?),
      alert: $checkedConvert('alert', (v) => v as bool?),
      maxParallelTasks: $checkedConvert(
        'max_parallel_tasks',
        (v) => (v as num?)?.toInt(),
      ),
      demo: $checkedConvert('demo', (v) => v as bool?),
      id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {'maxParallelTasks': 'max_parallel_tasks'},
);

Map<String, dynamic> _$ProjectProjectIdPutRequestToJson(
  ProjectProjectIdPutRequest instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.alert case final value?) 'alert': value,
  if (instance.maxParallelTasks case final value?) 'max_parallel_tasks': value,
  if (instance.demo case final value?) 'demo': value,
  if (instance.id case final value?) 'id': value,
};
