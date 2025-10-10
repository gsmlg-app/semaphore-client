// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_put_request_all_of.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectProjectIdPutRequestAllOf _$ProjectProjectIdPutRequestAllOfFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProjectProjectIdPutRequestAllOf', json, ($checkedConvert) {
  final val = ProjectProjectIdPutRequestAllOf(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ProjectProjectIdPutRequestAllOfToJson(
  ProjectProjectIdPutRequestAllOf instance,
) => <String, dynamic>{if (instance.id case final value?) 'id': value};
