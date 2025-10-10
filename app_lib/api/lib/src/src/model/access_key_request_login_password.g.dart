// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_key_request_login_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessKeyRequestLoginPassword _$AccessKeyRequestLoginPasswordFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AccessKeyRequestLoginPassword', json, ($checkedConvert) {
  final val = AccessKeyRequestLoginPassword(
    password: $checkedConvert('password', (v) => v as String?),
    login: $checkedConvert('login', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$AccessKeyRequestLoginPasswordToJson(
  AccessKeyRequestLoginPassword instance,
) => <String, dynamic>{
  if (instance.password case final value?) 'password': value,
  if (instance.login case final value?) 'login': value,
};
