//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_backup_inventories_inner.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectBackupInventoriesInner {
  /// Returns a new [ProjectBackupInventoriesInner] instance.
  ProjectBackupInventoriesInner({this.name, this.inventory, this.type});

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'inventory', required: false, includeIfNull: false)
  final String? inventory;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final ProjectBackupInventoriesInnerTypeEnum? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectBackupInventoriesInner &&
          other.name == name &&
          other.inventory == inventory &&
          other.type == type;

  @override
  int get hashCode => name.hashCode + inventory.hashCode + type.hashCode;

  factory ProjectBackupInventoriesInner.fromJson(Map<String, dynamic> json) =>
      _$ProjectBackupInventoriesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectBackupInventoriesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum ProjectBackupInventoriesInnerTypeEnum {
  @JsonValue(r'static')
  static_,
  @JsonValue(r'static-yaml')
  staticYaml,
  @JsonValue(r'file')
  file,
}
