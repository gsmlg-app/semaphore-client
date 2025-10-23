// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Integration extends Integration {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? projectId;
  @override
  final int? templateId;
  @override
  final TaskPrams? taskParams;

  factory _$Integration([void Function(IntegrationBuilder)? updates]) =>
      (IntegrationBuilder()..update(updates))._build();

  _$Integration._(
      {this.id, this.name, this.projectId, this.templateId, this.taskParams})
      : super._();
  @override
  Integration rebuild(void Function(IntegrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationBuilder toBuilder() => IntegrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Integration &&
        id == other.id &&
        name == other.name &&
        projectId == other.projectId &&
        templateId == other.templateId &&
        taskParams == other.taskParams;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, taskParams.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Integration')
          ..add('id', id)
          ..add('name', name)
          ..add('projectId', projectId)
          ..add('templateId', templateId)
          ..add('taskParams', taskParams))
        .toString();
  }
}

class IntegrationBuilder implements Builder<Integration, IntegrationBuilder> {
  _$Integration? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  int? _templateId;
  int? get templateId => _$this._templateId;
  set templateId(int? templateId) => _$this._templateId = templateId;

  TaskPramsBuilder? _taskParams;
  TaskPramsBuilder get taskParams => _$this._taskParams ??= TaskPramsBuilder();
  set taskParams(TaskPramsBuilder? taskParams) =>
      _$this._taskParams = taskParams;

  IntegrationBuilder() {
    Integration._defaults(this);
  }

  IntegrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _projectId = $v.projectId;
      _templateId = $v.templateId;
      _taskParams = $v.taskParams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Integration other) {
    _$v = other as _$Integration;
  }

  @override
  void update(void Function(IntegrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Integration build() => _build();

  _$Integration _build() {
    _$Integration _$result;
    try {
      _$result = _$v ??
          _$Integration._(
            id: id,
            name: name,
            projectId: projectId,
            templateId: templateId,
            taskParams: _taskParams?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'taskParams';
        _taskParams?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Integration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
