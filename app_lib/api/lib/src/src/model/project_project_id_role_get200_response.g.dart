// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_role_get200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectProjectIdRoleGet200Response _$ProjectProjectIdRoleGet200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProjectProjectIdRoleGet200Response', json, (
  $checkedConvert,
) {
  final val = ProjectProjectIdRoleGet200Response(
    role: $checkedConvert('role', (v) => v as String?),
    permissions: $checkedConvert('permissions', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$ProjectProjectIdRoleGet200ResponseToJson(
  ProjectProjectIdRoleGet200Response instance,
) => <String, dynamic>{
  if (instance.role case final value?) 'role': value,
  if (instance.permissions case final value?) 'permissions': value,
};
