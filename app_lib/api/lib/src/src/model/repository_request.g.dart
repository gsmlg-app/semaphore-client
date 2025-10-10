// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryRequest _$RepositoryRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RepositoryRequest',
      json,
      ($checkedConvert) {
        final val = RepositoryRequest(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
          gitUrl: $checkedConvert('git_url', (v) => v as String?),
          gitBranch: $checkedConvert('git_branch', (v) => v as String?),
          sshKeyId: $checkedConvert('ssh_key_id', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'projectId': 'project_id',
        'gitUrl': 'git_url',
        'gitBranch': 'git_branch',
        'sshKeyId': 'ssh_key_id',
      },
    );

Map<String, dynamic> _$RepositoryRequestToJson(RepositoryRequest instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.projectId case final value?) 'project_id': value,
      if (instance.gitUrl case final value?) 'git_url': value,
      if (instance.gitBranch case final value?) 'git_branch': value,
      if (instance.sshKeyId case final value?) 'ssh_key_id': value,
    };
