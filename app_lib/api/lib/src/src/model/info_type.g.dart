// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoType _$InfoTypeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InfoType', json, ($checkedConvert) {
      final val = InfoType(
        version: $checkedConvert('version', (v) => v as String?),
        updateBody: $checkedConvert('updateBody', (v) => v as String?),
        update: $checkedConvert(
          'update',
          (v) => v == null
              ? null
              : InfoTypeUpdate.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$InfoTypeToJson(InfoType instance) => <String, dynamic>{
  if (instance.version case final value?) 'version': value,
  if (instance.updateBody case final value?) 'updateBody': value,
  if (instance.update?.toJson() case final value?) 'update': value,
};
