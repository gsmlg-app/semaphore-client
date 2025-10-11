//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'info_type_update.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InfoTypeUpdate {
  /// Returns a new [InfoTypeUpdate] instance.
  InfoTypeUpdate({this.tagName});

  @JsonKey(name: r'tag_name', required: false, includeIfNull: false)
  final String? tagName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InfoTypeUpdate && other.tagName == tagName;

  @override
  int get hashCode => tagName.hashCode;

  factory InfoTypeUpdate.fromJson(Map<String, dynamic> json) =>
      _$InfoTypeUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$InfoTypeUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
