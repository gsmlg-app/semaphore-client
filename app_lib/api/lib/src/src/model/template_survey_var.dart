//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import '../model/template_survey_var_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'template_survey_var.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TemplateSurveyVar {
  /// Returns a new [TemplateSurveyVar] instance.
  TemplateSurveyVar({

     this.name,

     this.title,

     this.description,

     this.type,

     this.required_,

     this.values,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false
  )


  final String? title;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false
  )


  final String? description;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final TemplateSurveyVarTypeEnum? type;



  @JsonKey(
    
    name: r'required',
    required: false,
    includeIfNull: false
  )


  final bool? required_;



  @JsonKey(
    
    name: r'values',
    required: false,
    includeIfNull: false
  )


  final List<TemplateSurveyVarValue>? values;



  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateSurveyVar &&
     other.name == name &&
     other.title == title &&
     other.description == description &&
     other.type == type &&
     other.required_ == required_ &&
     other.values == values;

  @override
  int get hashCode =>
    name.hashCode +
    title.hashCode +
    description.hashCode +
    type.hashCode +
    required_.hashCode +
    values.hashCode;

  factory TemplateSurveyVar.fromJson(Map<String, dynamic> json) => _$TemplateSurveyVarFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateSurveyVarToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum TemplateSurveyVarTypeEnum {
  @JsonValue(r'')
  empty,
  @JsonValue(r'int')
  int_,
  @JsonValue(r'enum')
  enum_,
  @JsonValue(r'secret')
  secret,
}


