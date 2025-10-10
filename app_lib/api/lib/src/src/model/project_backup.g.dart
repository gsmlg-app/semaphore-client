// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectBackup _$ProjectBackupFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProjectBackup', json, ($checkedConvert) {
  final val = ProjectBackup(
    meta: $checkedConvert(
      'meta',
      (v) => v == null
          ? null
          : ProjectBackupMeta.fromJson(v as Map<String, dynamic>),
    ),
    templates: $checkedConvert(
      'templates',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                ProjectBackupTemplatesInner.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    repositories: $checkedConvert(
      'repositories',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ProjectBackupRepositoriesInner.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    keys: $checkedConvert(
      'keys',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ProjectBackupKeysInner.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    views: $checkedConvert(
      'views',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ProjectBackupViewsInner.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    inventories: $checkedConvert(
      'inventories',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ProjectBackupInventoriesInner.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    environments: $checkedConvert(
      'environments',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ProjectBackupEnvironmentsInner.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProjectBackupToJson(
  ProjectBackup instance,
) => <String, dynamic>{
  if (instance.meta?.toJson() case final value?) 'meta': value,
  if (instance.templates?.map((e) => e.toJson()).toList() case final value?)
    'templates': value,
  if (instance.repositories?.map((e) => e.toJson()).toList() case final value?)
    'repositories': value,
  if (instance.keys?.map((e) => e.toJson()).toList() case final value?)
    'keys': value,
  if (instance.views?.map((e) => e.toJson()).toList() case final value?)
    'views': value,
  if (instance.inventories?.map((e) => e.toJson()).toList() case final value?)
    'inventories': value,
  if (instance.environments?.map((e) => e.toJson()).toList() case final value?)
    'environments': value,
};
