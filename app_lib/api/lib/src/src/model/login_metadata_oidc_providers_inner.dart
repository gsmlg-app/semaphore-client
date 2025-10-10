//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'login_metadata_oidc_providers_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginMetadataOidcProvidersInner {
  /// Returns a new [LoginMetadataOidcProvidersInner] instance.
  LoginMetadataOidcProvidersInner({

     this.id,

     this.name,
  });

      /// ID of the provider, used in the login URL
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  final String? id;



      /// Text to show on the login button
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginMetadataOidcProvidersInner &&
     other.id == id &&
     other.name == name;

  @override
  int get hashCode =>
    id.hashCode +
    name.hashCode;

  factory LoginMetadataOidcProvidersInner.fromJson(Map<String, dynamic> json) => _$LoginMetadataOidcProvidersInnerFromJson(json);

  Map<String, dynamic> toJson() => _$LoginMetadataOidcProvidersInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

