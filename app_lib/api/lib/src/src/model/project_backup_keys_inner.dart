//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_backup_keys_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectBackupKeysInner {
  /// Returns a new [ProjectBackupKeysInner] instance.
  ProjectBackupKeysInner({

     this.name,

     this.type,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final ProjectBackupKeysInnerTypeEnum? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectBackupKeysInner &&
     other.name == name &&
     other.type == type;

  @override
  int get hashCode =>
    name.hashCode +
    type.hashCode;

  factory ProjectBackupKeysInner.fromJson(Map<String, dynamic> json) => _$ProjectBackupKeysInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectBackupKeysInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ProjectBackupKeysInnerTypeEnum {
  @JsonValue(r'ssh')
  ssh,
  @JsonValue(r'login_password')
  loginPassword,
  @JsonValue(r'none')
  none,
}


