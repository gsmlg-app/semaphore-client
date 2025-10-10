// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Login', json, ($checkedConvert) {
      final val = Login(
        auth: $checkedConvert('auth', (v) => v as String?),
        password: $checkedConvert('password', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
  if (instance.auth case final value?) 'auth': value,
  if (instance.password case final value?) 'password': value,
};
