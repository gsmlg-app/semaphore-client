// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectBackupMeta _$ProjectBackupMetaFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProjectBackupMeta',
      json,
      ($checkedConvert) {
        final val = ProjectBackupMeta(
          name: $checkedConvert('name', (v) => v as String?),
          alert: $checkedConvert('alert', (v) => v as bool?),
          maxParallelTasks: $checkedConvert(
            'max_parallel_tasks',
            (v) => (v as num?)?.toInt(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'maxParallelTasks': 'max_parallel_tasks'},
    );

Map<String, dynamic> _$ProjectBackupMetaToJson(
  ProjectBackupMeta instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.alert case final value?) 'alert': value,
  if (instance.maxParallelTasks case final value?) 'max_parallel_tasks': value,
};
