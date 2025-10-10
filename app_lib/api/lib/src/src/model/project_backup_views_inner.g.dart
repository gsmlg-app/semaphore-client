// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_views_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectBackupViewsInner _$ProjectBackupViewsInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProjectBackupViewsInner', json, ($checkedConvert) {
  final val = ProjectBackupViewsInner(
    name: $checkedConvert('name', (v) => v as String?),
    position: $checkedConvert('position', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ProjectBackupViewsInnerToJson(
  ProjectBackupViewsInner instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.position case final value?) 'position': value,
};
