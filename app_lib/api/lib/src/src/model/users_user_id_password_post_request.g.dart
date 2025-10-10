// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_user_id_password_post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersUserIdPasswordPostRequest _$UsersUserIdPasswordPostRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UsersUserIdPasswordPostRequest', json, ($checkedConvert) {
  final val = UsersUserIdPasswordPostRequest(
    password: $checkedConvert('password', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$UsersUserIdPasswordPostRequestToJson(
  UsersUserIdPasswordPostRequest instance,
) => <String, dynamic>{
  if (instance.password case final value?) 'password': value,
};
