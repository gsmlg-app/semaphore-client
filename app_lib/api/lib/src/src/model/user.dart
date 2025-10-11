//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class User {
  /// Returns a new [User] instance.
  User({
    this.id,

    this.name,

    this.username,

    this.email,

    this.created,

    this.alert,

    this.admin,

    this.external_,
  });

  // minimum: 1
  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'username', required: false, includeIfNull: false)
  final String? username;

  @JsonKey(name: r'email', required: false, includeIfNull: false)
  final String? email;

  @JsonKey(name: r'created', required: false, includeIfNull: false)
  final String? created;

  @JsonKey(name: r'alert', required: false, includeIfNull: false)
  final bool? alert;

  @JsonKey(name: r'admin', required: false, includeIfNull: false)
  final bool? admin;

  @JsonKey(name: r'external', required: false, includeIfNull: false)
  final bool? external_;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          other.id == id &&
          other.name == name &&
          other.username == username &&
          other.email == email &&
          other.created == created &&
          other.alert == alert &&
          other.admin == admin &&
          other.external_ == external_;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      username.hashCode +
      email.hashCode +
      created.hashCode +
      alert.hashCode +
      admin.hashCode +
      external_.hashCode;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
