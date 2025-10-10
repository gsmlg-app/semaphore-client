//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectRequest {
  /// Returns a new [ProjectRequest] instance.
  ProjectRequest({

     this.name,

     this.alert,

     this.maxParallelTasks,

     this.demo,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



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



      /// Create Demo project resources?
  @JsonKey(
    
    name: r'demo',
    required: false,
    includeIfNull: false
  )


  final bool? demo;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectRequest &&
     other.name == name &&
     other.alert == alert &&
     other.maxParallelTasks == maxParallelTasks &&
     other.demo == demo;

  @override
  int get hashCode =>
    name.hashCode +
    alert.hashCode +
    maxParallelTasks.hashCode +
    demo.hashCode;

  factory ProjectRequest.fromJson(Map<String, dynamic> json) => _$ProjectRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

