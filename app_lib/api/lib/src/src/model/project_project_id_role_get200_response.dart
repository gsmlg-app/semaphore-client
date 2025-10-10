//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_project_id_role_get200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectProjectIdRoleGet200Response {
  /// Returns a new [ProjectProjectIdRoleGet200Response] instance.
  ProjectProjectIdRoleGet200Response({

     this.role,

     this.permissions,
  });

  @JsonKey(
    
    name: r'role',
    required: false,
    includeIfNull: false
  )


  final String? role;



  @JsonKey(
    
    name: r'permissions',
    required: false,
    includeIfNull: false
  )


  final num? permissions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectProjectIdRoleGet200Response &&
     other.role == role &&
     other.permissions == permissions;

  @override
  int get hashCode =>
    role.hashCode +
    permissions.hashCode;

  factory ProjectProjectIdRoleGet200Response.fromJson(Map<String, dynamic> json) => _$ProjectProjectIdRoleGet200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectProjectIdRoleGet200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

