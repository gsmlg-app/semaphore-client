//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_project_id_put_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectProjectIdPutRequest {
  /// Returns a new [ProjectProjectIdPutRequest] instance.
  ProjectProjectIdPutRequest({
    this.name,

    this.alert,

    this.maxParallelTasks,

    this.demo,

    this.id,
  });

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'alert', required: false, includeIfNull: false)
  final bool? alert;

  // minimum: 0
  @JsonKey(name: r'max_parallel_tasks', required: false, includeIfNull: false)
  final int? maxParallelTasks;

  /// Create Demo project resources?
  @JsonKey(name: r'demo', required: false, includeIfNull: false)
  final bool? demo;

  // minimum: 1
  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectProjectIdPutRequest &&
          other.name == name &&
          other.alert == alert &&
          other.maxParallelTasks == maxParallelTasks &&
          other.demo == demo &&
          other.id == id;

  @override
  int get hashCode =>
      name.hashCode +
      alert.hashCode +
      maxParallelTasks.hashCode +
      demo.hashCode +
      id.hashCode;

  factory ProjectProjectIdPutRequest.fromJson(Map<String, dynamic> json) =>
      _$ProjectProjectIdPutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectProjectIdPutRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
