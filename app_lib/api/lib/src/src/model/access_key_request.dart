//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import '../model/access_key_request_ssh.dart';
import '../model/access_key_request_login_password.dart';
import 'package:json_annotation/json_annotation.dart';

part 'access_key_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccessKeyRequest {
  /// Returns a new [AccessKeyRequest] instance.
  AccessKeyRequest({
    this.id,

    this.name,

    this.type,

    this.projectId,

    this.overrideSecret,

    this.loginPassword,

    this.ssh,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final AccessKeyRequestTypeEnum? type;

  // minimum: 1
  @JsonKey(name: r'project_id', required: false, includeIfNull: false)
  final int? projectId;

  @JsonKey(name: r'override_secret', required: false, includeIfNull: false)
  final bool? overrideSecret;

  @JsonKey(name: r'login_password', required: false, includeIfNull: false)
  final AccessKeyRequestLoginPassword? loginPassword;

  @JsonKey(name: r'ssh', required: false, includeIfNull: false)
  final AccessKeyRequestSsh? ssh;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccessKeyRequest &&
          other.id == id &&
          other.name == name &&
          other.type == type &&
          other.projectId == projectId &&
          other.overrideSecret == overrideSecret &&
          other.loginPassword == loginPassword &&
          other.ssh == ssh;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      type.hashCode +
      projectId.hashCode +
      overrideSecret.hashCode +
      loginPassword.hashCode +
      ssh.hashCode;

  factory AccessKeyRequest.fromJson(Map<String, dynamic> json) =>
      _$AccessKeyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccessKeyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum AccessKeyRequestTypeEnum {
  @JsonValue(r'none')
  none,
  @JsonValue(r'ssh')
  ssh,
  @JsonValue(r'login_password')
  loginPassword,
}
