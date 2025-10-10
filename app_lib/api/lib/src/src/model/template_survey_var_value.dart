//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'template_survey_var_value.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TemplateSurveyVarValue {
  /// Returns a new [TemplateSurveyVarValue] instance.
  TemplateSurveyVarValue({

     this.name,

     this.value,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false
  )


  final String? value;



  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateSurveyVarValue &&
     other.name == name &&
     other.value == value;

  @override
  int get hashCode =>
    name.hashCode +
    value.hashCode;

  factory TemplateSurveyVarValue.fromJson(Map<String, dynamic> json) => _$TemplateSurveyVarValueFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateSurveyVarValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

