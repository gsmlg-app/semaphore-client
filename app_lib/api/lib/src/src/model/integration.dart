//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'integration.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Integration {
  /// Returns a new [Integration] instance.
  Integration({this.id, this.name, this.projectId, this.templateId});

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  // minimum: 1
  @JsonKey(name: r'project_id', required: false, includeIfNull: false)
  final int? projectId;

  // minimum: 1
  @JsonKey(name: r'template_id', required: false, includeIfNull: false)
  final int? templateId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Integration &&
          other.id == id &&
          other.name == name &&
          other.projectId == projectId &&
          other.templateId == templateId;

  @override
  int get hashCode =>
      id.hashCode + name.hashCode + projectId.hashCode + templateId.hashCode;

  factory Integration.fromJson(Map<String, dynamic> json) =>
      _$IntegrationFromJson(json);

  Map<String, dynamic> toJson() => _$IntegrationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
