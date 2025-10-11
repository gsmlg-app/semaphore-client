//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user_put_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserPutRequest {
  /// Returns a new [UserPutRequest] instance.
  UserPutRequest({
    this.name,

    this.username,

    this.email,

    this.alert,

    this.admin,
  });

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'username', required: false, includeIfNull: false)
  final String? username;

  @JsonKey(name: r'email', required: false, includeIfNull: false)
  final String? email;

  @JsonKey(name: r'alert', required: false, includeIfNull: false)
  final bool? alert;

  @JsonKey(name: r'admin', required: false, includeIfNull: false)
  final bool? admin;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserPutRequest &&
          other.name == name &&
          other.username == username &&
          other.email == email &&
          other.alert == alert &&
          other.admin == admin;

  @override
  int get hashCode =>
      name.hashCode +
      username.hashCode +
      email.hashCode +
      alert.hashCode +
      admin.hashCode;

  factory UserPutRequest.fromJson(Map<String, dynamic> json) =>
      _$UserPutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserPutRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
