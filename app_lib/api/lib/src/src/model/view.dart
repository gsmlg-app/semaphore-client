//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'view.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class View {
  /// Returns a new [View] instance.
  View({

     this.id,

     this.title,

     this.projectId,

     this.position,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false
  )


  final String? title;



  @JsonKey(
    
    name: r'project_id',
    required: false,
    includeIfNull: false
  )


  final int? projectId;



  @JsonKey(
    
    name: r'position',
    required: false,
    includeIfNull: false
  )


  final int? position;



  @override
  bool operator ==(Object other) => identical(this, other) || other is View &&
     other.id == id &&
     other.title == title &&
     other.projectId == projectId &&
     other.position == position;

  @override
  int get hashCode =>
    id.hashCode +
    title.hashCode +
    projectId.hashCode +
    position.hashCode;

  factory View.fromJson(Map<String, dynamic> json) => _$ViewFromJson(json);

  Map<String, dynamic> toJson() => _$ViewToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

