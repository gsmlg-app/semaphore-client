//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Event {
  /// Returns a new [Event] instance.
  Event({

     this.projectId,

     this.userId,

     this.description,
  });

  @JsonKey(
    
    name: r'project_id',
    required: false,
    includeIfNull: false
  )


  final int? projectId;



  @JsonKey(
    
    name: r'user_id',
    required: false,
    includeIfNull: false
  )


  final int? userId;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false
  )


  final String? description;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Event &&
     other.projectId == projectId &&
     other.userId == userId &&
     other.description == description;

  @override
  int get hashCode =>
    projectId.hashCode +
    userId.hashCode +
    description.hashCode;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

