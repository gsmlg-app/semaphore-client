//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'environment_secret_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EnvironmentSecretRequest {
  /// Returns a new [EnvironmentSecretRequest] instance.
  EnvironmentSecretRequest({

     this.id,

     this.name,

     this.secret,

     this.type,

     this.operation,
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
    
    name: r'secret',
    required: false,
    includeIfNull: false
  )


  final String? secret;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final EnvironmentSecretRequestTypeEnum? type;



  @JsonKey(
    
    name: r'operation',
    required: false,
    includeIfNull: false
  )


  final EnvironmentSecretRequestOperationEnum? operation;



  @override
  bool operator ==(Object other) => identical(this, other) || other is EnvironmentSecretRequest &&
     other.id == id &&
     other.name == name &&
     other.secret == secret &&
     other.type == type &&
     other.operation == operation;

  @override
  int get hashCode =>
    id.hashCode +
    name.hashCode +
    secret.hashCode +
    type.hashCode +
    operation.hashCode;

  factory EnvironmentSecretRequest.fromJson(Map<String, dynamic> json) => _$EnvironmentSecretRequestFromJson(json);

  Map<String, dynamic> toJson() => _$EnvironmentSecretRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum EnvironmentSecretRequestTypeEnum {
  @JsonValue(r'env')
  env,
  @JsonValue(r'var')
  var_,
}



enum EnvironmentSecretRequestOperationEnum {
  @JsonValue(r'create')
  create,
  @JsonValue(r'update')
  update,
  @JsonValue(r'delete')
  delete,
}


