// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskOutput extends TaskOutput {
  @override
  final int? taskId;
  @override
  final DateTime? time;
  @override
  final String? output;

  factory _$TaskOutput([void Function(TaskOutputBuilder)? updates]) =>
      (TaskOutputBuilder()..update(updates))._build();

  _$TaskOutput._({this.taskId, this.time, this.output}) : super._();
  @override
  TaskOutput rebuild(void Function(TaskOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskOutputBuilder toBuilder() => TaskOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskOutput &&
        taskId == other.taskId &&
        time == other.time &&
        output == other.output;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, taskId.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskOutput')
          ..add('taskId', taskId)
          ..add('time', time)
          ..add('output', output))
        .toString();
  }
}

class TaskOutputBuilder implements Builder<TaskOutput, TaskOutputBuilder> {
  _$TaskOutput? _$v;

  int? _taskId;
  int? get taskId => _$this._taskId;
  set taskId(int? taskId) => _$this._taskId = taskId;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _output;
  String? get output => _$this._output;
  set output(String? output) => _$this._output = output;

  TaskOutputBuilder() {
    TaskOutput._defaults(this);
  }

  TaskOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _taskId = $v.taskId;
      _time = $v.time;
      _output = $v.output;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskOutput other) {
    _$v = other as _$TaskOutput;
  }

  @override
  void update(void Function(TaskOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskOutput build() => _build();

  _$TaskOutput _build() {
    final _$result = _$v ??
        _$TaskOutput._(
          taskId: taskId,
          time: time,
          output: output,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
