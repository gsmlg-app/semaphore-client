// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_prams.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskPrams extends TaskPrams {
  @override
  final String? environment;
  @override
  final String? gitBranch;
  @override
  final String? message;
  @override
  final int? inventoryId;
  @override
  final String? arguments;
  @override
  final TaskParams? params;

  factory _$TaskPrams([void Function(TaskPramsBuilder)? updates]) =>
      (TaskPramsBuilder()..update(updates))._build();

  _$TaskPrams._(
      {this.environment,
      this.gitBranch,
      this.message,
      this.inventoryId,
      this.arguments,
      this.params})
      : super._();
  @override
  TaskPrams rebuild(void Function(TaskPramsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskPramsBuilder toBuilder() => TaskPramsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskPrams &&
        environment == other.environment &&
        gitBranch == other.gitBranch &&
        message == other.message &&
        inventoryId == other.inventoryId &&
        arguments == other.arguments &&
        params == other.params;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, gitBranch.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, inventoryId.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskPrams')
          ..add('environment', environment)
          ..add('gitBranch', gitBranch)
          ..add('message', message)
          ..add('inventoryId', inventoryId)
          ..add('arguments', arguments)
          ..add('params', params))
        .toString();
  }
}

class TaskPramsBuilder implements Builder<TaskPrams, TaskPramsBuilder> {
  _$TaskPrams? _$v;

  String? _environment;
  String? get environment => _$this._environment;
  set environment(String? environment) => _$this._environment = environment;

  String? _gitBranch;
  String? get gitBranch => _$this._gitBranch;
  set gitBranch(String? gitBranch) => _$this._gitBranch = gitBranch;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _inventoryId;
  int? get inventoryId => _$this._inventoryId;
  set inventoryId(int? inventoryId) => _$this._inventoryId = inventoryId;

  String? _arguments;
  String? get arguments => _$this._arguments;
  set arguments(String? arguments) => _$this._arguments = arguments;

  TaskParamsBuilder? _params;
  TaskParamsBuilder get params => _$this._params ??= TaskParamsBuilder();
  set params(TaskParamsBuilder? params) => _$this._params = params;

  TaskPramsBuilder() {
    TaskPrams._defaults(this);
  }

  TaskPramsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _environment = $v.environment;
      _gitBranch = $v.gitBranch;
      _message = $v.message;
      _inventoryId = $v.inventoryId;
      _arguments = $v.arguments;
      _params = $v.params?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskPrams other) {
    _$v = other as _$TaskPrams;
  }

  @override
  void update(void Function(TaskPramsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskPrams build() => _build();

  _$TaskPrams _build() {
    _$TaskPrams _$result;
    try {
      _$result = _$v ??
          _$TaskPrams._(
            environment: environment,
            gitBranch: gitBranch,
            message: message,
            inventoryId: inventoryId,
            arguments: arguments,
            params: _params?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TaskPrams', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
