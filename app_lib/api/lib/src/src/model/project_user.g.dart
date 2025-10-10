// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectUser _$ProjectUserFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProjectUser', json, ($checkedConvert) {
      final val = ProjectUser(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        username: $checkedConvert('username', (v) => v as String?),
        role: $checkedConvert(
          'role',
          (v) => $enumDecodeNullable(_$ProjectUserRoleEnumEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProjectUserToJson(ProjectUser instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.username case final value?) 'username': value,
      if (_$ProjectUserRoleEnumEnumMap[instance.role] case final value?)
        'role': value,
    };

const _$ProjectUserRoleEnumEnumMap = {
  ProjectUserRoleEnum.owner: 'owner',
  ProjectUserRoleEnum.manager: 'manager',
  ProjectUserRoleEnum.taskRunner: 'task_runner',
  ProjectUserRoleEnum.guest: 'guest',
};
