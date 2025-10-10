// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Event', json, ($checkedConvert) {
      final val = Event(
        projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
        userId: $checkedConvert('user_id', (v) => (v as num?)?.toInt()),
        description: $checkedConvert('description', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'projectId': 'project_id', 'userId': 'user_id'});

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
  if (instance.projectId case final value?) 'project_id': value,
  if (instance.userId case final value?) 'user_id': value,
  if (instance.description case final value?) 'description': value,
};
