//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_user.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectUser {
  /// Returns a new [ProjectUser] instance.
  ProjectUser({

     this.id,

     this.name,

     this.username,

     this.role,
  });

          // minimum: 1
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'username',
    required: false,
    includeIfNull: false
  )


  final String? username;



  @JsonKey(
    
    name: r'role',
    required: false,
    includeIfNull: false
  )


  final ProjectUserRoleEnum? role;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectUser &&
     other.id == id &&
     other.name == name &&
     other.username == username &&
     other.role == role;

  @override
  int get hashCode =>
    id.hashCode +
    name.hashCode +
    username.hashCode +
    role.hashCode;

  factory ProjectUser.fromJson(Map<String, dynamic> json) => _$ProjectUserFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectUserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ProjectUserRoleEnum {
  @JsonValue(r'owner')
  owner,
  @JsonValue(r'manager')
  manager,
  @JsonValue(r'task_runner')
  taskRunner,
  @JsonValue(r'guest')
  guest,
}


