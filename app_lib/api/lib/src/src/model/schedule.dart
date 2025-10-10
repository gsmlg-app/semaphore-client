//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'schedule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Schedule {
  /// Returns a new [Schedule] instance.
  Schedule({

     this.id,

     this.cronFormat,

     this.projectId,

     this.templateId,

     this.name,

     this.active,

     this.tplName,
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



  @JsonKey(
    
    name: r'tpl_name',
    required: false,
    includeIfNull: false
  )


  final String? tplName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Schedule &&
     other.id == id &&
     other.cronFormat == cronFormat &&
     other.projectId == projectId &&
     other.templateId == templateId &&
     other.name == name &&
     other.active == active &&
     other.tplName == tplName;

  @override
  int get hashCode =>
    id.hashCode +
    cronFormat.hashCode +
    projectId.hashCode +
    templateId.hashCode +
    name.hashCode +
    active.hashCode +
    tplName.hashCode;

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

