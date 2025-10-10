//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_project_id_users_user_id_put_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectProjectIdUsersUserIdPutRequest {
  /// Returns a new [ProjectProjectIdUsersUserIdPutRequest] instance.
  ProjectProjectIdUsersUserIdPutRequest({

     this.role,
  });

  @JsonKey(
    
    name: r'role',
    required: false,
    includeIfNull: false
  )


  final ProjectProjectIdUsersUserIdPutRequestRoleEnum? role;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectProjectIdUsersUserIdPutRequest &&
     other.role == role;

  @override
  int get hashCode =>
    role.hashCode;

  factory ProjectProjectIdUsersUserIdPutRequest.fromJson(Map<String, dynamic> json) => _$ProjectProjectIdUsersUserIdPutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectProjectIdUsersUserIdPutRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ProjectProjectIdUsersUserIdPutRequestRoleEnum {
  @JsonValue(r'owner')
  owner,
  @JsonValue(r'manager')
  manager,
  @JsonValue(r'task_runner')
  taskRunner,
  @JsonValue(r'guest')
  guest,
}


