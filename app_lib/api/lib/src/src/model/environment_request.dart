//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import '../model/environment_secret_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'environment_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EnvironmentRequest {
  /// Returns a new [EnvironmentRequest] instance.
  EnvironmentRequest({
    this.id,

    this.name,

    this.projectId,

    this.password,

    this.json,

    this.env,

    this.secrets,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  // minimum: 1
  @JsonKey(name: r'project_id', required: false, includeIfNull: false)
  final int? projectId;

  @JsonKey(name: r'password', required: false, includeIfNull: false)
  final String? password;

  @JsonKey(name: r'json', required: false, includeIfNull: false)
  final String? json;

  @JsonKey(name: r'env', required: false, includeIfNull: false)
  final String? env;

  @JsonKey(name: r'secrets', required: false, includeIfNull: false)
  final List<EnvironmentSecretRequest>? secrets;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EnvironmentRequest &&
          other.id == id &&
          other.name == name &&
          other.projectId == projectId &&
          other.password == password &&
          other.json == json &&
          other.env == env &&
          other.secrets == secrets;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      projectId.hashCode +
      password.hashCode +
      json.hashCode +
      env.hashCode +
      secrets.hashCode;

  factory EnvironmentRequest.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$EnvironmentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
