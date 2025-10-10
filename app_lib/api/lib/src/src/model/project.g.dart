// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Project', json, ($checkedConvert) {
      final val = Project(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        created: $checkedConvert('created', (v) => v as String?),
        alert: $checkedConvert('alert', (v) => v as bool?),
        maxParallelTasks: $checkedConvert(
          'max_parallel_tasks',
          (v) => (v as num?)?.toInt(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'maxParallelTasks': 'max_parallel_tasks'});

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.name case final value?) 'name': value,
  if (instance.created case final value?) 'created': value,
  if (instance.alert case final value?) 'alert': value,
  if (instance.maxParallelTasks case final value?) 'max_parallel_tasks': value,
};
