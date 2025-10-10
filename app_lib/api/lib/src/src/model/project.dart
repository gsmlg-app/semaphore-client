//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Project {
  /// Returns a new [Project] instance.
  Project({

     this.id,

     this.name,

     this.created,

     this.alert,

     this.maxParallelTasks,
  });

          // minimum: 1
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @JsonKey(
    
    name: r'created',
    required: false,
    includeIfNull: false
  )


  final String? created;



  @JsonKey(
    
    name: r'alert',
    required: false,
    includeIfNull: false
  )


  final bool? alert;



          // minimum: 0
  @JsonKey(
    
    name: r'max_parallel_tasks',
    required: false,
    includeIfNull: false
  )


  final int? maxParallelTasks;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Project &&
     other.id == id &&
     other.name == name &&
     other.created == created &&
     other.alert == alert &&
     other.maxParallelTasks == maxParallelTasks;

  @override
  int get hashCode =>
    id.hashCode +
    name.hashCode +
    created.hashCode +
    alert.hashCode +
    maxParallelTasks.hashCode;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

