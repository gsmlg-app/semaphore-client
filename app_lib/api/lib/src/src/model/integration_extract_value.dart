//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'integration_extract_value.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IntegrationExtractValue {
  /// Returns a new [IntegrationExtractValue] instance.
  IntegrationExtractValue({

     this.id,

     this.name,

     this.valueSource,

     this.bodyDataType,

     this.key,

     this.variable,

     this.variableType,

     this.integrationId,
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
    
    name: r'value_source',
    required: false,
    includeIfNull: false
  )


  final IntegrationExtractValueValueSourceEnum? valueSource;



  @JsonKey(
    
    name: r'body_data_type',
    required: false,
    includeIfNull: false
  )


  final IntegrationExtractValueBodyDataTypeEnum? bodyDataType;



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


  final IntegrationExtractValueVariableTypeEnum? variableType;



  @JsonKey(
    
    name: r'integration_id',
    required: false,
    includeIfNull: false
  )


  final int? integrationId;



  @override
  bool operator ==(Object other) => identical(this, other) || other is IntegrationExtractValue &&
     other.id == id &&
     other.name == name &&
     other.valueSource == valueSource &&
     other.bodyDataType == bodyDataType &&
     other.key == key &&
     other.variable == variable &&
     other.variableType == variableType &&
     other.integrationId == integrationId;

  @override
  int get hashCode =>
    id.hashCode +
    name.hashCode +
    valueSource.hashCode +
    bodyDataType.hashCode +
    key.hashCode +
    variable.hashCode +
    variableType.hashCode +
    integrationId.hashCode;

  factory IntegrationExtractValue.fromJson(Map<String, dynamic> json) => _$IntegrationExtractValueFromJson(json);

  Map<String, dynamic> toJson() => _$IntegrationExtractValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum IntegrationExtractValueValueSourceEnum {
  @JsonValue(r'body')
  body,
  @JsonValue(r'header')
  header,
}



enum IntegrationExtractValueBodyDataTypeEnum {
  @JsonValue(r'json')
  json,
  @JsonValue(r'xml')
  xml,
  @JsonValue(r'string')
  string,
}



enum IntegrationExtractValueVariableTypeEnum {
  @JsonValue(r'environment')
  environment,
  @JsonValue(r'task')
  task,
}


