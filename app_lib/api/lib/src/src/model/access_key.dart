//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'access_key.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccessKey {
  /// Returns a new [AccessKey] instance.
  AccessKey({this.id, this.name, this.type, this.projectId});

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final AccessKeyTypeEnum? type;

  @JsonKey(name: r'project_id', required: false, includeIfNull: false)
  final int? projectId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccessKey &&
          other.id == id &&
          other.name == name &&
          other.type == type &&
          other.projectId == projectId;

  @override
  int get hashCode =>
      id.hashCode + name.hashCode + type.hashCode + projectId.hashCode;

  factory AccessKey.fromJson(Map<String, dynamic> json) =>
      _$AccessKeyFromJson(json);

  Map<String, dynamic> toJson() => _$AccessKeyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum AccessKeyTypeEnum {
  @JsonValue(r'none')
  none,
  @JsonValue(r'ssh')
  ssh,
  @JsonValue(r'login_password')
  loginPassword,
}
