// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_key_request_ssh.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessKeyRequestSsh _$AccessKeyRequestSshFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AccessKeyRequestSsh', json, ($checkedConvert) {
      final val = AccessKeyRequestSsh(
        login: $checkedConvert('login', (v) => v as String?),
        passphrase: $checkedConvert('passphrase', (v) => v as String?),
        privateKey: $checkedConvert('private_key', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'privateKey': 'private_key'});

Map<String, dynamic> _$AccessKeyRequestSshToJson(
  AccessKeyRequestSsh instance,
) => <String, dynamic>{
  if (instance.login case final value?) 'login': value,
  if (instance.passphrase case final value?) 'passphrase': value,
  if (instance.privateKey case final value?) 'private_key': value,
};
