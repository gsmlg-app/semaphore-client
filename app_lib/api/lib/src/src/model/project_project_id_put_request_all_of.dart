//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_project_id_put_request_all_of.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectProjectIdPutRequestAllOf {
  /// Returns a new [ProjectProjectIdPutRequestAllOf] instance.
  ProjectProjectIdPutRequestAllOf({

     this.id,
  });

          // minimum: 1
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final int? id;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectProjectIdPutRequestAllOf &&
     other.id == id;

  @override
  int get hashCode =>
    id.hashCode;

  factory ProjectProjectIdPutRequestAllOf.fromJson(Map<String, dynamic> json) => _$ProjectProjectIdPutRequestAllOfFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectProjectIdPutRequestAllOfToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

