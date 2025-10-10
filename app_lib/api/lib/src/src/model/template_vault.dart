//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'template_vault.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TemplateVault {
  /// Returns a new [TemplateVault] instance.
  TemplateVault({

     this.id,

     this.name,

     this.type,
  });

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
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final TemplateVaultTypeEnum? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateVault &&
     other.id == id &&
     other.name == name &&
     other.type == type;

  @override
  int get hashCode =>
    id.hashCode +
    name.hashCode +
    type.hashCode;

  factory TemplateVault.fromJson(Map<String, dynamic> json) => _$TemplateVaultFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateVaultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum TemplateVaultTypeEnum {
  @JsonValue(r'password')
  password,
  @JsonValue(r'script')
  script,
}


