//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_project_id_users_post_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectProjectIdUsersPostRequest {
  /// Returns a new [ProjectProjectIdUsersPostRequest] instance.
  ProjectProjectIdUsersPostRequest({this.userId, this.role});

  // minimum: 2
  @JsonKey(name: r'user_id', required: false, includeIfNull: false)
  final int? userId;

  @JsonKey(name: r'role', required: false, includeIfNull: false)
  final ProjectProjectIdUsersPostRequestRoleEnum? role;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectProjectIdUsersPostRequest &&
          other.userId == userId &&
          other.role == role;

  @override
  int get hashCode => userId.hashCode + role.hashCode;

  factory ProjectProjectIdUsersPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$ProjectProjectIdUsersPostRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProjectProjectIdUsersPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum ProjectProjectIdUsersPostRequestRoleEnum {
  @JsonValue(r'owner')
  owner,
  @JsonValue(r'manager')
  manager,
  @JsonValue(r'task_runner')
  taskRunner,
  @JsonValue(r'guest')
  guest,
}
