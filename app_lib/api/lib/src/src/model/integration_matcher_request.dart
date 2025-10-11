//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'integration_matcher_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IntegrationMatcherRequest {
  /// Returns a new [IntegrationMatcherRequest] instance.
  IntegrationMatcherRequest({
    this.name,

    this.matchType,

    this.method,

    this.bodyDataType,

    this.key,

    this.value,
  });

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'match_type', required: false, includeIfNull: false)
  final IntegrationMatcherRequestMatchTypeEnum? matchType;

  @JsonKey(name: r'method', required: false, includeIfNull: false)
  final IntegrationMatcherRequestMethodEnum? method;

  @JsonKey(name: r'body_data_type', required: false, includeIfNull: false)
  final IntegrationMatcherRequestBodyDataTypeEnum? bodyDataType;

  @JsonKey(name: r'key', required: false, includeIfNull: false)
  final String? key;

  @JsonKey(name: r'value', required: false, includeIfNull: false)
  final String? value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IntegrationMatcherRequest &&
          other.name == name &&
          other.matchType == matchType &&
          other.method == method &&
          other.bodyDataType == bodyDataType &&
          other.key == key &&
          other.value == value;

  @override
  int get hashCode =>
      name.hashCode +
      matchType.hashCode +
      method.hashCode +
      bodyDataType.hashCode +
      key.hashCode +
      value.hashCode;

  factory IntegrationMatcherRequest.fromJson(Map<String, dynamic> json) =>
      _$IntegrationMatcherRequestFromJson(json);

  Map<String, dynamic> toJson() => _$IntegrationMatcherRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum IntegrationMatcherRequestMatchTypeEnum {
  @JsonValue(r'body')
  body,
  @JsonValue(r'header')
  header,
}

enum IntegrationMatcherRequestMethodEnum {
  @JsonValue(r'equals')
  equals,
  @JsonValue(r'unequals')
  unequals,
  @JsonValue(r'contains')
  contains,
}

enum IntegrationMatcherRequestBodyDataTypeEnum {
  @JsonValue(r'json')
  json,
  @JsonValue(r'xml')
  xml,
  @JsonValue(r'string')
  string,
}
