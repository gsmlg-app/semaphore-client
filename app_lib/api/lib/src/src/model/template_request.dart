//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import '../model/template_vault.dart';
import '../model/template_survey_var.dart';
import 'package:json_annotation/json_annotation.dart';

part 'template_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TemplateRequest {
  /// Returns a new [TemplateRequest] instance.
  TemplateRequest({
    this.id,

    this.projectId,

    this.inventoryId,

    this.repositoryId,

    this.environmentId,

    this.viewId,

    this.vaults,

    this.name,

    this.playbook,

    this.arguments,

    this.description,

    this.allowOverrideArgsInTask,

    this.limit,

    this.suppressSuccessAlerts,

    this.app,

    this.gitBranch,

    this.surveyVars,

    this.type,

    this.startVersion,

    this.buildTemplateId,

    this.autorun,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  // minimum: 1
  @JsonKey(name: r'project_id', required: false, includeIfNull: false)
  final int? projectId;

  // minimum: 1
  @JsonKey(name: r'inventory_id', required: false, includeIfNull: false)
  final int? inventoryId;

  // minimum: 1
  @JsonKey(name: r'repository_id', required: false, includeIfNull: false)
  final int? repositoryId;

  // minimum: 1
  @JsonKey(name: r'environment_id', required: false, includeIfNull: false)
  final int? environmentId;

  // minimum: 1
  @JsonKey(name: r'view_id', required: false, includeIfNull: false)
  final int? viewId;

  @JsonKey(name: r'vaults', required: false, includeIfNull: false)
  final List<TemplateVault>? vaults;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'playbook', required: false, includeIfNull: false)
  final String? playbook;

  @JsonKey(name: r'arguments', required: false, includeIfNull: false)
  final String? arguments;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(
    name: r'allow_override_args_in_task',
    required: false,
    includeIfNull: false,
  )
  final bool? allowOverrideArgsInTask;

  @JsonKey(name: r'limit', required: false, includeIfNull: false)
  final String? limit;

  @JsonKey(
    name: r'suppress_success_alerts',
    required: false,
    includeIfNull: false,
  )
  final bool? suppressSuccessAlerts;

  @JsonKey(name: r'app', required: false, includeIfNull: false)
  final String? app;

  @JsonKey(name: r'git_branch', required: false, includeIfNull: false)
  final String? gitBranch;

  @JsonKey(name: r'survey_vars', required: false, includeIfNull: false)
  final List<TemplateSurveyVar>? surveyVars;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final TemplateRequestTypeEnum? type;

  @JsonKey(name: r'start_version', required: false, includeIfNull: false)
  final String? startVersion;

  @JsonKey(name: r'build_template_id', required: false, includeIfNull: false)
  final int? buildTemplateId;

  @JsonKey(name: r'autorun', required: false, includeIfNull: false)
  final bool? autorun;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TemplateRequest &&
          other.id == id &&
          other.projectId == projectId &&
          other.inventoryId == inventoryId &&
          other.repositoryId == repositoryId &&
          other.environmentId == environmentId &&
          other.viewId == viewId &&
          other.vaults == vaults &&
          other.name == name &&
          other.playbook == playbook &&
          other.arguments == arguments &&
          other.description == description &&
          other.allowOverrideArgsInTask == allowOverrideArgsInTask &&
          other.limit == limit &&
          other.suppressSuccessAlerts == suppressSuccessAlerts &&
          other.app == app &&
          other.gitBranch == gitBranch &&
          other.surveyVars == surveyVars &&
          other.type == type &&
          other.startVersion == startVersion &&
          other.buildTemplateId == buildTemplateId &&
          other.autorun == autorun;

  @override
  int get hashCode =>
      id.hashCode +
      projectId.hashCode +
      inventoryId.hashCode +
      repositoryId.hashCode +
      environmentId.hashCode +
      viewId.hashCode +
      vaults.hashCode +
      name.hashCode +
      playbook.hashCode +
      arguments.hashCode +
      description.hashCode +
      allowOverrideArgsInTask.hashCode +
      limit.hashCode +
      suppressSuccessAlerts.hashCode +
      app.hashCode +
      gitBranch.hashCode +
      surveyVars.hashCode +
      type.hashCode +
      startVersion.hashCode +
      buildTemplateId.hashCode +
      autorun.hashCode;

  factory TemplateRequest.fromJson(Map<String, dynamic> json) =>
      _$TemplateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum TemplateRequestTypeEnum {
  @JsonValue(r'')
  empty,
  @JsonValue(r'build')
  build,
  @JsonValue(r'deploy')
  deploy,
}
