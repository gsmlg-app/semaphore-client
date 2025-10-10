// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIToken _$APITokenFromJson(Map<String, dynamic> json) =>
    $checkedCreate('APIToken', json, ($checkedConvert) {
      final val = APIToken(
        id: $checkedConvert('id', (v) => v as String?),
        created: $checkedConvert('created', (v) => v as String?),
        expired: $checkedConvert('expired', (v) => v as bool?),
        userId: $checkedConvert('user_id', (v) => (v as num?)?.toInt()),
      );
      return val;
    }, fieldKeyMap: const {'userId': 'user_id'});

Map<String, dynamic> _$APITokenToJson(APIToken instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.created case final value?) 'created': value,
  if (instance.expired case final value?) 'expired': value,
  if (instance.userId case final value?) 'user_id': value,
};
