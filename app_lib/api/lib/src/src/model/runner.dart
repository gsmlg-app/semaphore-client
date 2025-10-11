//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'runner.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Runner {
  /// Returns a new [Runner] instance.
  Runner({this.token});

  @JsonKey(name: r'token', required: false, includeIfNull: false)
  final String? token;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Runner && other.token == token;

  @override
  int get hashCode => token.hashCode;

  factory Runner.fromJson(Map<String, dynamic> json) => _$RunnerFromJson(json);

  Map<String, dynamic> toJson() => _$RunnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
