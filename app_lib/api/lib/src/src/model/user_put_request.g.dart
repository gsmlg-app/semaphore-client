// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_put_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPutRequest _$UserPutRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserPutRequest', json, ($checkedConvert) {
      final val = UserPutRequest(
        name: $checkedConvert('name', (v) => v as String?),
        username: $checkedConvert('username', (v) => v as String?),
        email: $checkedConvert('email', (v) => v as String?),
        alert: $checkedConvert('alert', (v) => v as bool?),
        admin: $checkedConvert('admin', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$UserPutRequestToJson(UserPutRequest instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.username case final value?) 'username': value,
      if (instance.email case final value?) 'email': value,
      if (instance.alert case final value?) 'alert': value,
      if (instance.admin case final value?) 'admin': value,
    };
