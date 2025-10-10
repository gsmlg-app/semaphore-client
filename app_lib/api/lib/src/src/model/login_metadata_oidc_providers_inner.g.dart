// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_metadata_oidc_providers_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginMetadataOidcProvidersInner _$LoginMetadataOidcProvidersInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LoginMetadataOidcProvidersInner', json, ($checkedConvert) {
  final val = LoginMetadataOidcProvidersInner(
    id: $checkedConvert('id', (v) => v as String?),
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$LoginMetadataOidcProvidersInnerToJson(
  LoginMetadataOidcProvidersInner instance,
) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.name case final value?) 'name': value,
};
