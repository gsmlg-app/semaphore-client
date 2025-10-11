//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_backup_meta.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectBackupMeta {
  /// Returns a new [ProjectBackupMeta] instance.
  ProjectBackupMeta({this.name, this.alert, this.maxParallelTasks});

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'alert', required: false, includeIfNull: false)
  final bool? alert;

  // minimum: 0
  @JsonKey(name: r'max_parallel_tasks', required: false, includeIfNull: false)
  final int? maxParallelTasks;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectBackupMeta &&
          other.name == name &&
          other.alert == alert &&
          other.maxParallelTasks == maxParallelTasks;

  @override
  int get hashCode =>
      name.hashCode + alert.hashCode + maxParallelTasks.hashCode;

  factory ProjectBackupMeta.fromJson(Map<String, dynamic> json) =>
      _$ProjectBackupMetaFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectBackupMetaToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
