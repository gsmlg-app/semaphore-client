//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'task_output.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TaskOutput {
  /// Returns a new [TaskOutput] instance.
  TaskOutput({this.taskId, this.time, this.output});

  @JsonKey(name: r'task_id', required: false, includeIfNull: false)
  final int? taskId;

  @JsonKey(name: r'time', required: false, includeIfNull: false)
  final DateTime? time;

  @JsonKey(name: r'output', required: false, includeIfNull: false)
  final String? output;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskOutput &&
          other.taskId == taskId &&
          other.time == time &&
          other.output == output;

  @override
  int get hashCode => taskId.hashCode + time.hashCode + output.hashCode;

  factory TaskOutput.fromJson(Map<String, dynamic> json) =>
      _$TaskOutputFromJson(json);

  Map<String, dynamic> toJson() => _$TaskOutputToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
