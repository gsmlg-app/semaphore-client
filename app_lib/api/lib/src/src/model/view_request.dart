//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'view_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ViewRequest {
  /// Returns a new [ViewRequest] instance.
  ViewRequest({this.title, this.projectId, this.position});

  @JsonKey(name: r'title', required: false, includeIfNull: false)
  final String? title;

  // minimum: 1
  @JsonKey(name: r'project_id', required: false, includeIfNull: false)
  final int? projectId;

  // minimum: 1
  @JsonKey(name: r'position', required: false, includeIfNull: false)
  final int? position;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ViewRequest &&
          other.title == title &&
          other.projectId == projectId &&
          other.position == position;

  @override
  int get hashCode => title.hashCode + projectId.hashCode + position.hashCode;

  factory ViewRequest.fromJson(Map<String, dynamic> json) =>
      _$ViewRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ViewRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
