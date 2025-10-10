// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewRequest _$ViewRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ViewRequest', json, ($checkedConvert) {
      final val = ViewRequest(
        title: $checkedConvert('title', (v) => v as String?),
        projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
        position: $checkedConvert('position', (v) => (v as num?)?.toInt()),
      );
      return val;
    }, fieldKeyMap: const {'projectId': 'project_id'});

Map<String, dynamic> _$ViewRequestToJson(ViewRequest instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.projectId case final value?) 'project_id': value,
      if (instance.position case final value?) 'position': value,
    };
