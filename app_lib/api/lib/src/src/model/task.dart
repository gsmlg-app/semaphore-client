//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Task {
  /// Returns a new [Task] instance.
  Task({
    this.id,

    this.templateId,

    this.projectId,

    this.status,

    this.debug,

    this.playbook,

    this.environment,

    this.secret,

    this.limit,

    this.message,

    this.created,

    this.started,

    this.end,

    this.tplPlaybook,

    this.tplAlias,

    this.tplApp,

    this.userName,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'template_id', required: false, includeIfNull: false)
  final int? templateId;

  // minimum: 1
  @JsonKey(name: r'project_id', required: false, includeIfNull: false)
  final int? projectId;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: r'debug', required: false, includeIfNull: false)
  final bool? debug;

  @JsonKey(name: r'playbook', required: false, includeIfNull: false)
  final String? playbook;

  @JsonKey(name: r'environment', required: false, includeIfNull: false)
  final String? environment;

  @JsonKey(name: r'secret', required: false, includeIfNull: false)
  final String? secret;

  @JsonKey(name: r'limit', required: false, includeIfNull: false)
  final String? limit;

  @JsonKey(name: r'message', required: false, includeIfNull: false)
  final String? message;

  @JsonKey(name: r'created', required: false, includeIfNull: false)
  final DateTime? created;

  @JsonKey(name: r'started', required: false, includeIfNull: false)
  final DateTime? started;

  @JsonKey(name: r'end', required: false, includeIfNull: false)
  final DateTime? end;

  @JsonKey(name: r'tpl_playbook', required: false, includeIfNull: false)
  final String? tplPlaybook;

  @JsonKey(name: r'tpl_alias', required: false, includeIfNull: false)
  final String? tplAlias;

  @JsonKey(name: r'tpl_app', required: false, includeIfNull: false)
  final String? tplApp;

  @JsonKey(name: r'user_name', required: false, includeIfNull: false)
  final String? userName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Task &&
          other.id == id &&
          other.templateId == templateId &&
          other.projectId == projectId &&
          other.status == status &&
          other.debug == debug &&
          other.playbook == playbook &&
          other.environment == environment &&
          other.secret == secret &&
          other.limit == limit &&
          other.message == message &&
          other.created == created &&
          other.started == started &&
          other.end == end &&
          other.tplPlaybook == tplPlaybook &&
          other.tplAlias == tplAlias &&
          other.tplApp == tplApp &&
          other.userName == userName;

  @override
  int get hashCode =>
      id.hashCode +
      templateId.hashCode +
      projectId.hashCode +
      status.hashCode +
      debug.hashCode +
      playbook.hashCode +
      environment.hashCode +
      secret.hashCode +
      limit.hashCode +
      message.hashCode +
      created.hashCode +
      started.hashCode +
      end.hashCode +
      tplPlaybook.hashCode +
      tplAlias.hashCode +
      tplApp.hashCode +
      userName.hashCode;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
