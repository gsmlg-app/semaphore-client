//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'schedule_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ScheduleRequest {
  /// Returns a new [ScheduleRequest] instance.
  ScheduleRequest({

     this.id,

     this.cronFormat,

     this.projectId,

     this.templateId,

     this.name,

     this.active,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



  @JsonKey(
    
    name: r'cron_format',
    required: false,
    includeIfNull: false
  )


  final String? cronFormat;



  @JsonKey(
    
    name: r'project_id',
    required: false,
    includeIfNull: false
  )


  final int? projectId;



  @JsonKey(
    
    name: r'template_id',
    required: false,
    includeIfNull: false
  )


  final int? templateId;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'active',
    required: false,
    includeIfNull: false
  )


  final bool? active;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ScheduleRequest &&
     other.id == id &&
     other.cronFormat == cronFormat &&
     other.projectId == projectId &&
     other.templateId == templateId &&
     other.name == name &&
     other.active == active;

  @override
  int get hashCode =>
    id.hashCode +
    cronFormat.hashCode +
    projectId.hashCode +
    templateId.hashCode +
    name.hashCode +
    active.hashCode;

  factory ScheduleRequest.fromJson(Map<String, dynamic> json) => _$ScheduleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

