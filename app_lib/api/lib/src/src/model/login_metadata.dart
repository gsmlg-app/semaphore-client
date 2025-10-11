//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import '../model/login_metadata_oidc_providers_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_metadata.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginMetadata {
  /// Returns a new [LoginMetadata] instance.
  LoginMetadata({this.oidcProviders});

  /// List of OIDC providers
  @JsonKey(name: r'oidc_providers', required: false, includeIfNull: false)
  final List<LoginMetadataOidcProvidersInner>? oidcProviders;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginMetadata && other.oidcProviders == oidcProviders;

  @override
  int get hashCode => oidcProviders.hashCode;

  factory LoginMetadata.fromJson(Map<String, dynamic> json) =>
      _$LoginMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginMetadataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
