// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginMetadata _$LoginMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LoginMetadata', json, ($checkedConvert) {
      final val = LoginMetadata(
        oidcProviders: $checkedConvert(
          'oidc_providers',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => LoginMetadataOidcProvidersInner.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'oidcProviders': 'oidc_providers'});

Map<String, dynamic> _$LoginMetadataToJson(
  LoginMetadata instance,
) => <String, dynamic>{
  if (instance.oidcProviders?.map((e) => e.toJson()).toList() case final value?)
    'oidc_providers': value,
};
