// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_users_user_id_put_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectProjectIdUsersUserIdPutRequest
_$ProjectProjectIdUsersUserIdPutRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProjectProjectIdUsersUserIdPutRequest', json, (
      $checkedConvert,
    ) {
      final val = ProjectProjectIdUsersUserIdPutRequest(
        role: $checkedConvert(
          'role',
          (v) => $enumDecodeNullable(
            _$ProjectProjectIdUsersUserIdPutRequestRoleEnumEnumMap,
            v,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProjectProjectIdUsersUserIdPutRequestToJson(
  ProjectProjectIdUsersUserIdPutRequest instance,
) => <String, dynamic>{
  if (_$ProjectProjectIdUsersUserIdPutRequestRoleEnumEnumMap[instance.role]
      case final value?)
    'role': value,
};

const _$ProjectProjectIdUsersUserIdPutRequestRoleEnumEnumMap = {
  ProjectProjectIdUsersUserIdPutRequestRoleEnum.owner: 'owner',
  ProjectProjectIdUsersUserIdPutRequestRoleEnum.manager: 'manager',
  ProjectProjectIdUsersUserIdPutRequestRoleEnum.taskRunner: 'task_runner',
  ProjectProjectIdUsersUserIdPutRequestRoleEnum.guest: 'guest',
};
