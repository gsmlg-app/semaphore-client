//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import '../model/environment_secret.dart';
import 'package:json_annotation/json_annotation.dart';

part 'environment.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Environment {
  /// Returns a new [Environment] instance.
  Environment({

     this.id,

     this.name,

     this.projectId,

     this.password,

     this.json,

     this.env,

     this.secrets,
  });

          // minimum: 1
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



          // minimum: 1
  @JsonKey(
    
    name: r'project_id',
    required: false,
    includeIfNull: false
  )


  final int? projectId;



  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false
  )


  final String? password;



  @JsonKey(
    
    name: r'json',
    required: false,
    includeIfNull: false
  )


  final String? json;



  @JsonKey(
    
    name: r'env',
    required: false,
    includeIfNull: false
  )


  final String? env;



  @JsonKey(
    
    name: r'secrets',
    required: false,
    includeIfNull: false
  )


  final List<EnvironmentSecret>? secrets;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Environment &&
     other.id == id &&
     other.name == name &&
     other.projectId == projectId &&
     other.password == password &&
     other.json == json &&
     other.env == env &&
     other.secrets == secrets;

  @override
  int get hashCode =>
    id.hashCode +
    name.hashCode +
    projectId.hashCode +
    password.hashCode +
    json.hashCode +
    env.hashCode +
    secrets.hashCode;

  factory Environment.fromJson(Map<String, dynamic> json) => _$EnvironmentFromJson(json);

  Map<String, dynamic> toJson() => _$EnvironmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

