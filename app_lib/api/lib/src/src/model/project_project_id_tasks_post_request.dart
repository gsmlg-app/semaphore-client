//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import '../model/project_project_id_tasks_post_request_params.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project_project_id_tasks_post_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectProjectIdTasksPostRequest {
  /// Returns a new [ProjectProjectIdTasksPostRequest] instance.
  ProjectProjectIdTasksPostRequest({
    this.templateId,

    this.playbook,

    this.environment,

    this.gitBranch,

    this.message,

    this.limit,

    this.params,
  });

  @JsonKey(name: r'template_id', required: false, includeIfNull: false)
  final int? templateId;

  @JsonKey(name: r'playbook', required: false, includeIfNull: false)
  final String? playbook;

  @JsonKey(name: r'environment', required: false, includeIfNull: false)
  final String? environment;

  @JsonKey(name: r'git_branch', required: false, includeIfNull: false)
  final String? gitBranch;

  @JsonKey(name: r'message', required: false, includeIfNull: false)
  final String? message;

  @Deprecated('limit has been deprecated')
  @JsonKey(name: r'limit', required: false, includeIfNull: false)
  final String? limit;

  @JsonKey(name: r'params', required: false, includeIfNull: false)
  final ProjectProjectIdTasksPostRequestParams? params;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectProjectIdTasksPostRequest &&
          other.templateId == templateId &&
          other.playbook == playbook &&
          other.environment == environment &&
          other.gitBranch == gitBranch &&
          other.message == message &&
          other.limit == limit &&
          other.params == params;

  @override
  int get hashCode =>
      templateId.hashCode +
      playbook.hashCode +
      environment.hashCode +
      gitBranch.hashCode +
      message.hashCode +
      limit.hashCode +
      params.hashCode;

  factory ProjectProjectIdTasksPostRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$ProjectProjectIdTasksPostRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProjectProjectIdTasksPostRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
