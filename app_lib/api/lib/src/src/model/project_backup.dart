//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import '../model/project_backup_inventories_inner.dart';
import '../model/project_backup_meta.dart';
import '../model/project_backup_templates_inner.dart';
import '../model/project_backup_keys_inner.dart';
import '../model/project_backup_repositories_inner.dart';
import '../model/project_backup_environments_inner.dart';
import '../model/project_backup_views_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project_backup.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectBackup {
  /// Returns a new [ProjectBackup] instance.
  ProjectBackup({
    this.meta,

    this.templates,

    this.repositories,

    this.keys,

    this.views,

    this.inventories,

    this.environments,
  });

  @JsonKey(name: r'meta', required: false, includeIfNull: false)
  final ProjectBackupMeta? meta;

  @JsonKey(name: r'templates', required: false, includeIfNull: false)
  final List<ProjectBackupTemplatesInner>? templates;

  @JsonKey(name: r'repositories', required: false, includeIfNull: false)
  final List<ProjectBackupRepositoriesInner>? repositories;

  @JsonKey(name: r'keys', required: false, includeIfNull: false)
  final List<ProjectBackupKeysInner>? keys;

  @JsonKey(name: r'views', required: false, includeIfNull: false)
  final List<ProjectBackupViewsInner>? views;

  @JsonKey(name: r'inventories', required: false, includeIfNull: false)
  final List<ProjectBackupInventoriesInner>? inventories;

  @JsonKey(name: r'environments', required: false, includeIfNull: false)
  final List<ProjectBackupEnvironmentsInner>? environments;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectBackup &&
          other.meta == meta &&
          other.templates == templates &&
          other.repositories == repositories &&
          other.keys == keys &&
          other.views == views &&
          other.inventories == inventories &&
          other.environments == environments;

  @override
  int get hashCode =>
      meta.hashCode +
      templates.hashCode +
      repositories.hashCode +
      keys.hashCode +
      views.hashCode +
      inventories.hashCode +
      environments.hashCode;

  factory ProjectBackup.fromJson(Map<String, dynamic> json) =>
      _$ProjectBackupFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectBackupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
