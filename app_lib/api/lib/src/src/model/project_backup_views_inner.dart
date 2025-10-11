//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_backup_views_inner.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectBackupViewsInner {
  /// Returns a new [ProjectBackupViewsInner] instance.
  ProjectBackupViewsInner({this.name, this.position});

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  // minimum: 0
  @JsonKey(name: r'position', required: false, includeIfNull: false)
  final int? position;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectBackupViewsInner &&
          other.name == name &&
          other.position == position;

  @override
  int get hashCode => name.hashCode + position.hashCode;

  factory ProjectBackupViewsInner.fromJson(Map<String, dynamic> json) =>
      _$ProjectBackupViewsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectBackupViewsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
