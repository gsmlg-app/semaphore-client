//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'inventory_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InventoryRequest {
  /// Returns a new [InventoryRequest] instance.
  InventoryRequest({
    this.id,

    this.name,

    this.projectId,

    this.inventory,

    this.sshKeyId,

    this.becomeKeyId,

    this.repositoryId,

    this.type,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  // minimum: 1
  @JsonKey(name: r'project_id', required: false, includeIfNull: false)
  final int? projectId;

  @JsonKey(name: r'inventory', required: false, includeIfNull: false)
  final String? inventory;

  // minimum: 1
  @JsonKey(name: r'ssh_key_id', required: false, includeIfNull: false)
  final int? sshKeyId;

  // minimum: 1
  @JsonKey(name: r'become_key_id', required: false, includeIfNull: false)
  final int? becomeKeyId;

  // minimum: 1
  @JsonKey(name: r'repository_id', required: false, includeIfNull: false)
  final int? repositoryId;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final InventoryRequestTypeEnum? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryRequest &&
          other.id == id &&
          other.name == name &&
          other.projectId == projectId &&
          other.inventory == inventory &&
          other.sshKeyId == sshKeyId &&
          other.becomeKeyId == becomeKeyId &&
          other.repositoryId == repositoryId &&
          other.type == type;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      projectId.hashCode +
      inventory.hashCode +
      sshKeyId.hashCode +
      becomeKeyId.hashCode +
      repositoryId.hashCode +
      type.hashCode;

  factory InventoryRequest.fromJson(Map<String, dynamic> json) =>
      _$InventoryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum InventoryRequestTypeEnum {
  @JsonValue(r'static')
  static_,
  @JsonValue(r'static-yaml')
  staticYaml,
  @JsonValue(r'file')
  file,
  @JsonValue(r'terraform-workspace')
  terraformWorkspace,
}
