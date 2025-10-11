//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_backup_templates_inner.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectBackupTemplatesInner {
  /// Returns a new [ProjectBackupTemplatesInner] instance.
  ProjectBackupTemplatesInner({
    this.inventory,

    this.repository,

    this.environment,

    this.view,

    this.name,

    this.playbook,

    this.description,

    this.allowOverrideArgsInTask,

    this.suppressSuccessAlerts,

    this.autorun,

    this.type,

    this.allowOverrideBranchInTask,
  });

  @JsonKey(name: r'inventory', required: false, includeIfNull: false)
  final String? inventory;

  @JsonKey(name: r'repository', required: false, includeIfNull: false)
  final String? repository;

  @JsonKey(name: r'environment', required: false, includeIfNull: false)
  final String? environment;

  @JsonKey(name: r'view', required: false, includeIfNull: false)
  final String? view;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'playbook', required: false, includeIfNull: false)
  final String? playbook;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(
    name: r'allow_override_args_in_task',
    required: false,
    includeIfNull: false,
  )
  final bool? allowOverrideArgsInTask;

  @JsonKey(
    name: r'suppress_success_alerts',
    required: false,
    includeIfNull: false,
  )
  final bool? suppressSuccessAlerts;

  @JsonKey(name: r'autorun', required: false, includeIfNull: false)
  final bool? autorun;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final String? type;

  @JsonKey(
    name: r'allow_override_branch_in_task',
    required: false,
    includeIfNull: false,
  )
  final bool? allowOverrideBranchInTask;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectBackupTemplatesInner &&
          other.inventory == inventory &&
          other.repository == repository &&
          other.environment == environment &&
          other.view == view &&
          other.name == name &&
          other.playbook == playbook &&
          other.description == description &&
          other.allowOverrideArgsInTask == allowOverrideArgsInTask &&
          other.suppressSuccessAlerts == suppressSuccessAlerts &&
          other.autorun == autorun &&
          other.type == type &&
          other.allowOverrideBranchInTask == allowOverrideBranchInTask;

  @override
  int get hashCode =>
      inventory.hashCode +
      repository.hashCode +
      environment.hashCode +
      view.hashCode +
      name.hashCode +
      playbook.hashCode +
      description.hashCode +
      allowOverrideArgsInTask.hashCode +
      suppressSuccessAlerts.hashCode +
      autorun.hashCode +
      type.hashCode +
      allowOverrideBranchInTask.hashCode;

  factory ProjectBackupTemplatesInner.fromJson(Map<String, dynamic> json) =>
      _$ProjectBackupTemplatesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectBackupTemplatesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
