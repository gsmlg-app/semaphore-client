// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_users_post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectProjectIdUsersPostRequest _$ProjectProjectIdUsersPostRequestFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('ProjectProjectIdUsersPostRequest', json, ($checkedConvert) {
      final val = ProjectProjectIdUsersPostRequest(
        userId: $checkedConvert('user_id', (v) => (v as num?)?.toInt()),
        role: $checkedConvert(
          'role',
          (v) => $enumDecodeNullable(
            _$ProjectProjectIdUsersPostRequestRoleEnumEnumMap,
            v,
          ),
        ),
      );
      return val;
    }, fieldKeyMap: const {'userId': 'user_id'});

Map<String, dynamic> _$ProjectProjectIdUsersPostRequestToJson(
  ProjectProjectIdUsersPostRequest instance,
) => <String, dynamic>{
  if (instance.userId case final value?) 'user_id': value,
  if (_$ProjectProjectIdUsersPostRequestRoleEnumEnumMap[instance.role]
      case final value?)
    'role': value,
};

const _$ProjectProjectIdUsersPostRequestRoleEnumEnumMap = {
  ProjectProjectIdUsersPostRequestRoleEnum.owner: 'owner',
  ProjectProjectIdUsersPostRequestRoleEnum.manager: 'manager',
  ProjectProjectIdUsersPostRequestRoleEnum.taskRunner: 'task_runner',
  ProjectProjectIdUsersPostRequestRoleEnum.guest: 'guest',
};
