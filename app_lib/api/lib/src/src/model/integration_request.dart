//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'integration_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IntegrationRequest {
  /// Returns a new [IntegrationRequest] instance.
  IntegrationRequest({this.name, this.projectId, this.templateId});

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'project_id', required: false, includeIfNull: false)
  final int? projectId;

  @JsonKey(name: r'template_id', required: false, includeIfNull: false)
  final int? templateId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IntegrationRequest &&
          other.name == name &&
          other.projectId == projectId &&
          other.templateId == templateId;

  @override
  int get hashCode => name.hashCode + projectId.hashCode + templateId.hashCode;

  factory IntegrationRequest.fromJson(Map<String, dynamic> json) =>
      _$IntegrationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$IntegrationRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
