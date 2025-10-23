// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduleRequest extends ScheduleRequest {
  @override
  final int? id;
  @override
  final String? cronFormat;
  @override
  final int? projectId;
  @override
  final int? templateId;
  @override
  final String? name;
  @override
  final bool? active;
  @override
  final TaskPrams? taskParams;

  factory _$ScheduleRequest([void Function(ScheduleRequestBuilder)? updates]) =>
      (ScheduleRequestBuilder()..update(updates))._build();

  _$ScheduleRequest._(
      {this.id,
      this.cronFormat,
      this.projectId,
      this.templateId,
      this.name,
      this.active,
      this.taskParams})
      : super._();
  @override
  ScheduleRequest rebuild(void Function(ScheduleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleRequestBuilder toBuilder() => ScheduleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleRequest &&
        id == other.id &&
        cronFormat == other.cronFormat &&
        projectId == other.projectId &&
        templateId == other.templateId &&
        name == other.name &&
        active == other.active &&
        taskParams == other.taskParams;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, cronFormat.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, taskParams.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduleRequest')
          ..add('id', id)
          ..add('cronFormat', cronFormat)
          ..add('projectId', projectId)
          ..add('templateId', templateId)
          ..add('name', name)
          ..add('active', active)
          ..add('taskParams', taskParams))
        .toString();
  }
}

class ScheduleRequestBuilder
    implements Builder<ScheduleRequest, ScheduleRequestBuilder> {
  _$ScheduleRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _cronFormat;
  String? get cronFormat => _$this._cronFormat;
  set cronFormat(String? cronFormat) => _$this._cronFormat = cronFormat;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  int? _templateId;
  int? get templateId => _$this._templateId;
  set templateId(int? templateId) => _$this._templateId = templateId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  TaskPramsBuilder? _taskParams;
  TaskPramsBuilder get taskParams => _$this._taskParams ??= TaskPramsBuilder();
  set taskParams(TaskPramsBuilder? taskParams) =>
      _$this._taskParams = taskParams;

  ScheduleRequestBuilder() {
    ScheduleRequest._defaults(this);
  }

  ScheduleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _cronFormat = $v.cronFormat;
      _projectId = $v.projectId;
      _templateId = $v.templateId;
      _name = $v.name;
      _active = $v.active;
      _taskParams = $v.taskParams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleRequest other) {
    _$v = other as _$ScheduleRequest;
  }

  @override
  void update(void Function(ScheduleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduleRequest build() => _build();

  _$ScheduleRequest _build() {
    _$ScheduleRequest _$result;
    try {
      _$result = _$v ??
          _$ScheduleRequest._(
            id: id,
            cronFormat: cronFormat,
            projectId: projectId,
            templateId: templateId,
            name: name,
            active: active,
            taskParams: _taskParams?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'taskParams';
        _taskParams?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ScheduleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
