//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_project_id_tasks_post_request_params.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectProjectIdTasksPostRequestParams {
  /// Returns a new [ProjectProjectIdTasksPostRequestParams] instance.
  ProjectProjectIdTasksPostRequestParams({
    this.debug,

    this.dryRun,

    this.diff,

    this.limit,
  });

  @JsonKey(name: r'debug', required: false, includeIfNull: false)
  final bool? debug;

  @JsonKey(name: r'dry_run', required: false, includeIfNull: false)
  final bool? dryRun;

  @JsonKey(name: r'diff', required: false, includeIfNull: false)
  final bool? diff;

  @JsonKey(name: r'limit', required: false, includeIfNull: false)
  final List? limit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectProjectIdTasksPostRequestParams &&
          other.debug == debug &&
          other.dryRun == dryRun &&
          other.diff == diff &&
          other.limit == limit;

  @override
  int get hashCode =>
      debug.hashCode + dryRun.hashCode + diff.hashCode + limit.hashCode;

  factory ProjectProjectIdTasksPostRequestParams.fromJson(
    Map<String, dynamic> json,
  ) => _$ProjectProjectIdTasksPostRequestParamsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProjectProjectIdTasksPostRequestParamsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
