// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_type_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoTypeUpdate _$InfoTypeUpdateFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InfoTypeUpdate', json, ($checkedConvert) {
      final val = InfoTypeUpdate(
        tagName: $checkedConvert('tag_name', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'tagName': 'tag_name'});

Map<String, dynamic> _$InfoTypeUpdateToJson(InfoTypeUpdate instance) =>
    <String, dynamic>{
      if (instance.tagName case final value?) 'tag_name': value,
    };
