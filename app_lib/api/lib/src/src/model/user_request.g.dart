// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserRequest', json, ($checkedConvert) {
      final val = UserRequest(
        name: $checkedConvert('name', (v) => v as String?),
        username: $checkedConvert('username', (v) => v as String?),
        email: $checkedConvert('email', (v) => v as String?),
        password: $checkedConvert('password', (v) => v as String?),
        alert: $checkedConvert('alert', (v) => v as bool?),
        admin: $checkedConvert('admin', (v) => v as bool?),
        external_: $checkedConvert('external', (v) => v as bool?),
      );
      return val;
    }, fieldKeyMap: const {'external_': 'external'});

Map<String, dynamic> _$UserRequestToJson(UserRequest instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.username case final value?) 'username': value,
      if (instance.email case final value?) 'email': value,
      if (instance.password case final value?) 'password': value,
      if (instance.alert case final value?) 'alert': value,
      if (instance.admin case final value?) 'admin': value,
      if (instance.external_ case final value?) 'external': value,
    };
