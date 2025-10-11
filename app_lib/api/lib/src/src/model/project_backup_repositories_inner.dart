//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_backup_repositories_inner.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectBackupRepositoriesInner {
  /// Returns a new [ProjectBackupRepositoriesInner] instance.
  ProjectBackupRepositoriesInner({
    this.name,

    this.gitUrl,

    this.gitBranch,

    this.sshKey,
  });

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'git_url', required: false, includeIfNull: false)
  final String? gitUrl;

  @JsonKey(name: r'git_branch', required: false, includeIfNull: false)
  final String? gitBranch;

  @JsonKey(name: r'ssh_key', required: false, includeIfNull: false)
  final String? sshKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectBackupRepositoriesInner &&
          other.name == name &&
          other.gitUrl == gitUrl &&
          other.gitBranch == gitBranch &&
          other.sshKey == sshKey;

  @override
  int get hashCode =>
      name.hashCode + gitUrl.hashCode + gitBranch.hashCode + sshKey.hashCode;

  factory ProjectBackupRepositoriesInner.fromJson(Map<String, dynamic> json) =>
      _$ProjectBackupRepositoriesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectBackupRepositoriesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
