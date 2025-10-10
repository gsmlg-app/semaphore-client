//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_backup_environments_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectBackupEnvironmentsInner {
  /// Returns a new [ProjectBackupEnvironmentsInner] instance.
  ProjectBackupEnvironmentsInner({

     this.name,

     this.json,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'json',
    required: false,
    includeIfNull: false
  )


  final String? json;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectBackupEnvironmentsInner &&
     other.name == name &&
     other.json == json;

  @override
  int get hashCode =>
    name.hashCode +
    json.hashCode;

  factory ProjectBackupEnvironmentsInner.fromJson(Map<String, dynamic> json) => _$ProjectBackupEnvironmentsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectBackupEnvironmentsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

