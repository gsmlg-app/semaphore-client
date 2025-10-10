// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

View _$ViewFromJson(Map<String, dynamic> json) =>
    $checkedCreate('View', json, ($checkedConvert) {
      final val = View(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        title: $checkedConvert('title', (v) => v as String?),
        projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
        position: $checkedConvert('position', (v) => (v as num?)?.toInt()),
      );
      return val;
    }, fieldKeyMap: const {'projectId': 'project_id'});

Map<String, dynamic> _$ViewToJson(View instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.title case final value?) 'title': value,
  if (instance.projectId case final value?) 'project_id': value,
  if (instance.position case final value?) 'position': value,
};
