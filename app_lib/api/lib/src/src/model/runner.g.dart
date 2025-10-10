// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Runner _$RunnerFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Runner', json, ($checkedConvert) {
      final val = Runner(token: $checkedConvert('token', (v) => v as String?));
      return val;
    });

Map<String, dynamic> _$RunnerToJson(Runner instance) => <String, dynamic>{
  if (instance.token case final value?) 'token': value,
};
