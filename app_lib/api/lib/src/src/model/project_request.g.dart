// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectRequest _$ProjectRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProjectRequest',
      json,
      ($checkedConvert) {
        final val = ProjectRequest(
          name: $checkedConvert('name', (v) => v as String?),
          alert: $checkedConvert('alert', (v) => v as bool?),
          maxParallelTasks: $checkedConvert(
            'max_parallel_tasks',
            (v) => (v as num?)?.toInt(),
          ),
          demo: $checkedConvert('demo', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {'maxParallelTasks': 'max_parallel_tasks'},
    );

Map<String, dynamic> _$ProjectRequestToJson(
  ProjectRequest instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.alert case final value?) 'alert': value,
  if (instance.maxParallelTasks case final value?) 'max_parallel_tasks': value,
  if (instance.demo case final value?) 'demo': value,
};
