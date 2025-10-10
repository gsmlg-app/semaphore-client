// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_environments_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectBackupEnvironmentsInner _$ProjectBackupEnvironmentsInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProjectBackupEnvironmentsInner', json, ($checkedConvert) {
  final val = ProjectBackupEnvironmentsInner(
    name: $checkedConvert('name', (v) => v as String?),
    json: $checkedConvert('json', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ProjectBackupEnvironmentsInnerToJson(
  ProjectBackupEnvironmentsInner instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.json case final value?) 'json': value,
};
