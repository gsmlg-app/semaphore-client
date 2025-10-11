//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'environment_secret.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EnvironmentSecret {
  /// Returns a new [EnvironmentSecret] instance.
  EnvironmentSecret({this.id, this.name, this.type});

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final EnvironmentSecretTypeEnum? type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EnvironmentSecret &&
          other.id == id &&
          other.name == name &&
          other.type == type;

  @override
  int get hashCode => id.hashCode + name.hashCode + type.hashCode;

  factory EnvironmentSecret.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentSecretFromJson(json);

  Map<String, dynamic> toJson() => _$EnvironmentSecretToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum EnvironmentSecretTypeEnum {
  @JsonValue(r'env')
  env,
  @JsonValue(r'var')
  var_,
}
