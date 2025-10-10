// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) =>
    $checkedCreate('User', json, ($checkedConvert) {
      final val = User(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        username: $checkedConvert('username', (v) => v as String?),
        email: $checkedConvert('email', (v) => v as String?),
        created: $checkedConvert('created', (v) => v as String?),
        alert: $checkedConvert('alert', (v) => v as bool?),
        admin: $checkedConvert('admin', (v) => v as bool?),
        external_: $checkedConvert('external', (v) => v as bool?),
      );
      return val;
    }, fieldKeyMap: const {'external_': 'external'});

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.name case final value?) 'name': value,
  if (instance.username case final value?) 'username': value,
  if (instance.email case final value?) 'email': value,
  if (instance.created case final value?) 'created': value,
  if (instance.alert case final value?) 'alert': value,
  if (instance.admin case final value?) 'admin': value,
  if (instance.external_ case final value?) 'external': value,
};
