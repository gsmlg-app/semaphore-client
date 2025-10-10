//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import '../model/info_type_update.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_type.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InfoType {
  /// Returns a new [InfoType] instance.
  InfoType({

     this.version,

     this.updateBody,

     this.update,
  });

  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false
  )


  final String? version;



  @JsonKey(
    
    name: r'updateBody',
    required: false,
    includeIfNull: false
  )


  final String? updateBody;



  @JsonKey(
    
    name: r'update',
    required: false,
    includeIfNull: false
  )


  final InfoTypeUpdate? update;



  @override
  bool operator ==(Object other) => identical(this, other) || other is InfoType &&
     other.version == version &&
     other.updateBody == updateBody &&
     other.update == update;

  @override
  int get hashCode =>
    version.hashCode +
    updateBody.hashCode +
    update.hashCode;

  factory InfoType.fromJson(Map<String, dynamic> json) => _$InfoTypeFromJson(json);

  Map<String, dynamic> toJson() => _$InfoTypeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

