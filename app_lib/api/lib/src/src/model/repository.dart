//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'repository.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Repository {
  /// Returns a new [Repository] instance.
  Repository({

     this.id,

     this.name,

     this.projectId,

     this.gitUrl,

     this.gitBranch,

     this.sshKeyId,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'project_id',
    required: false,
    includeIfNull: false
  )


  final int? projectId;



  @JsonKey(
    
    name: r'git_url',
    required: false,
    includeIfNull: false
  )


  final String? gitUrl;



  @JsonKey(
    
    name: r'git_branch',
    required: false,
    includeIfNull: false
  )


  final String? gitBranch;



  @JsonKey(
    
    name: r'ssh_key_id',
    required: false,
    includeIfNull: false
  )


  final int? sshKeyId;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Repository &&
     other.id == id &&
     other.name == name &&
     other.projectId == projectId &&
     other.gitUrl == gitUrl &&
     other.gitBranch == gitBranch &&
     other.sshKeyId == sshKeyId;

  @override
  int get hashCode =>
    id.hashCode +
    name.hashCode +
    projectId.hashCode +
    gitUrl.hashCode +
    gitBranch.hashCode +
    sshKeyId.hashCode;

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

