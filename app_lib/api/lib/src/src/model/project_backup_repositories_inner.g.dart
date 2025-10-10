// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_repositories_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectBackupRepositoriesInner _$ProjectBackupRepositoriesInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProjectBackupRepositoriesInner',
  json,
  ($checkedConvert) {
    final val = ProjectBackupRepositoriesInner(
      name: $checkedConvert('name', (v) => v as String?),
      gitUrl: $checkedConvert('git_url', (v) => v as String?),
      gitBranch: $checkedConvert('git_branch', (v) => v as String?),
      sshKey: $checkedConvert('ssh_key', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'gitUrl': 'git_url',
    'gitBranch': 'git_branch',
    'sshKey': 'ssh_key',
  },
);

Map<String, dynamic> _$ProjectBackupRepositoriesInnerToJson(
  ProjectBackupRepositoriesInner instance,
) => <String, dynamic>{
  if (instance.name case final value?) 'name': value,
  if (instance.gitUrl case final value?) 'git_url': value,
  if (instance.gitBranch case final value?) 'git_branch': value,
  if (instance.sshKey case final value?) 'ssh_key': value,
};
