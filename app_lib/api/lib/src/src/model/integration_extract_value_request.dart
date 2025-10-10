//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'integration_extract_value_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IntegrationExtractValueRequest {
  /// Returns a new [IntegrationExtractValueRequest] instance.
  IntegrationExtractValueRequest({

     this.name,

     this.valueSource,

     this.bodyDataType,

     this.key,

     this.variable,

     this.variableType,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'value_source',
    required: false,
    includeIfNull: false
  )


  final IntegrationExtractValueRequestValueSourceEnum? valueSource;



  @JsonKey(
    
    name: r'body_data_type',
    required: false,
    includeIfNull: false
  )


  final IntegrationExtractValueRequestBodyDataTypeEnum? bodyDataType;



  @JsonKey(
    
    name: r'key',
    required: false,
    includeIfNull: false
  )


  final String? key;



  @JsonKey(
    
    name: r'variable',
    required: false,
    includeIfNull: false
  )


  final String? variable;



  @JsonKey(
    
    name: r'variable_type',
    required: false,
    includeIfNull: false
  )


  final IntegrationExtractValueRequestVariableTypeEnum? variableType;



  @override
  bool operator ==(Object other) => identical(this, other) || other is IntegrationExtractValueRequest &&
     other.name == name &&
     other.valueSource == valueSource &&
     other.bodyDataType == bodyDataType &&
     other.key == key &&
     other.variable == variable &&
     other.variableType == variableType;

  @override
  int get hashCode =>
    name.hashCode +
    valueSource.hashCode +
    bodyDataType.hashCode +
    key.hashCode +
    variable.hashCode +
    variableType.hashCode;

  factory IntegrationExtractValueRequest.fromJson(Map<String, dynamic> json) => _$IntegrationExtractValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$IntegrationExtractValueRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum IntegrationExtractValueRequestValueSourceEnum {
  @JsonValue(r'body')
  body,
  @JsonValue(r'header')
  header,
}



enum IntegrationExtractValueRequestBodyDataTypeEnum {
  @JsonValue(r'json')
  json,
  @JsonValue(r'xml')
  xml,
  @JsonValue(r'string')
  string,
}



enum IntegrationExtractValueRequestVariableTypeEnum {
  @JsonValue(r'environment')
  environment,
  @JsonValue(r'task')
  task,
}


