// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnvironmentRequest _$EnvironmentRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('EnvironmentRequest', json, ($checkedConvert) {
      final val = EnvironmentRequest(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        projectId: $checkedConvert('project_id', (v) => (v as num?)?.toInt()),
        password: $checkedConvert('password', (v) => v as String?),
        json: $checkedConvert('json', (v) => v as String?),
        env: $checkedConvert('env', (v) => v as String?),
        secrets: $checkedConvert(
          'secrets',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => EnvironmentSecretRequest.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'projectId': 'project_id'});

Map<String, dynamic> _$EnvironmentRequestToJson(EnvironmentRequest instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.projectId case final value?) 'project_id': value,
      if (instance.password case final value?) 'password': value,
      if (instance.json case final value?) 'json': value,
      if (instance.env case final value?) 'env': value,
      if (instance.secrets?.map((e) => e.toJson()).toList() case final value?)
        'secrets': value,
    };
