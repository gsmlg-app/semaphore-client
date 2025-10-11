//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'integration_matcher.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IntegrationMatcher {
  /// Returns a new [IntegrationMatcher] instance.
  IntegrationMatcher({
    this.id,

    this.integrationId,

    this.name,

    this.matchType,

    this.method,

    this.bodyDataType,

    this.key,

    this.value,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'integration_id', required: false, includeIfNull: false)
  final int? integrationId;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'match_type', required: false, includeIfNull: false)
  final IntegrationMatcherMatchTypeEnum? matchType;

  @JsonKey(name: r'method', required: false, includeIfNull: false)
  final IntegrationMatcherMethodEnum? method;

  @JsonKey(name: r'body_data_type', required: false, includeIfNull: false)
  final IntegrationMatcherBodyDataTypeEnum? bodyDataType;

  @JsonKey(name: r'key', required: false, includeIfNull: false)
  final String? key;

  @JsonKey(name: r'value', required: false, includeIfNull: false)
  final String? value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IntegrationMatcher &&
          other.id == id &&
          other.integrationId == integrationId &&
          other.name == name &&
          other.matchType == matchType &&
          other.method == method &&
          other.bodyDataType == bodyDataType &&
          other.key == key &&
          other.value == value;

  @override
  int get hashCode =>
      id.hashCode +
      integrationId.hashCode +
      name.hashCode +
      matchType.hashCode +
      method.hashCode +
      bodyDataType.hashCode +
      key.hashCode +
      value.hashCode;

  factory IntegrationMatcher.fromJson(Map<String, dynamic> json) =>
      _$IntegrationMatcherFromJson(json);

  Map<String, dynamic> toJson() => _$IntegrationMatcherToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum IntegrationMatcherMatchTypeEnum {
  @JsonValue(r'body')
  body,
  @JsonValue(r'header')
  header,
}

enum IntegrationMatcherMethodEnum {
  @JsonValue(r'equals')
  equals,
  @JsonValue(r'unequals')
  unequals,
  @JsonValue(r'contains')
  contains,
}

enum IntegrationMatcherBodyDataTypeEnum {
  @JsonValue(r'json')
  json,
  @JsonValue(r'xml')
  xml,
  @JsonValue(r'string')
  string,
}
