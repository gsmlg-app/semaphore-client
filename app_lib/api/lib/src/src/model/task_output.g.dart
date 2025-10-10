// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskOutput _$TaskOutputFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TaskOutput', json, ($checkedConvert) {
      final val = TaskOutput(
        taskId: $checkedConvert('task_id', (v) => (v as num?)?.toInt()),
        time: $checkedConvert(
          'time',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        output: $checkedConvert('output', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'taskId': 'task_id'});

Map<String, dynamic> _$TaskOutputToJson(TaskOutput instance) =>
    <String, dynamic>{
      if (instance.taskId case final value?) 'task_id': value,
      if (instance.time?.toIso8601String() case final value?) 'time': value,
      if (instance.output case final value?) 'output': value,
    };
