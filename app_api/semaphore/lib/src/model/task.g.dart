// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Task extends Task {
  @override
  final int? id;
  @override
  final int? templateId;
  @override
  final String? status;
  @override
  final String? playbook;
  @override
  final String? environment;
  @override
  final String? secret;
  @override
  final String? arguments;
  @override
  final String? gitBranch;
  @override
  final String? message;
  @override
  final int? inventoryId;
  @override
  final TaskParams? params;
  @override
  final String? limit;

  factory _$Task([void Function(TaskBuilder)? updates]) =>
      (TaskBuilder()..update(updates))._build();

  _$Task._(
      {this.id,
      this.templateId,
      this.status,
      this.playbook,
      this.environment,
      this.secret,
      this.arguments,
      this.gitBranch,
      this.message,
      this.inventoryId,
      this.params,
      this.limit})
      : super._();
  @override
  Task rebuild(void Function(TaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskBuilder toBuilder() => TaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Task &&
        id == other.id &&
        templateId == other.templateId &&
        status == other.status &&
        playbook == other.playbook &&
        environment == other.environment &&
        secret == other.secret &&
        arguments == other.arguments &&
        gitBranch == other.gitBranch &&
        message == other.message &&
        inventoryId == other.inventoryId &&
        params == other.params &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, playbook.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, secret.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, gitBranch.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, inventoryId.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Task')
          ..add('id', id)
          ..add('templateId', templateId)
          ..add('status', status)
          ..add('playbook', playbook)
          ..add('environment', environment)
          ..add('secret', secret)
          ..add('arguments', arguments)
          ..add('gitBranch', gitBranch)
          ..add('message', message)
          ..add('inventoryId', inventoryId)
          ..add('params', params)
          ..add('limit', limit))
        .toString();
  }
}

class TaskBuilder implements Builder<Task, TaskBuilder> {
  _$Task? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _templateId;
  int? get templateId => _$this._templateId;
  set templateId(int? templateId) => _$this._templateId = templateId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _playbook;
  String? get playbook => _$this._playbook;
  set playbook(String? playbook) => _$this._playbook = playbook;

  String? _environment;
  String? get environment => _$this._environment;
  set environment(String? environment) => _$this._environment = environment;

  String? _secret;
  String? get secret => _$this._secret;
  set secret(String? secret) => _$this._secret = secret;

  String? _arguments;
  String? get arguments => _$this._arguments;
  set arguments(String? arguments) => _$this._arguments = arguments;

  String? _gitBranch;
  String? get gitBranch => _$this._gitBranch;
  set gitBranch(String? gitBranch) => _$this._gitBranch = gitBranch;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _inventoryId;
  int? get inventoryId => _$this._inventoryId;
  set inventoryId(int? inventoryId) => _$this._inventoryId = inventoryId;

  TaskParamsBuilder? _params;
  TaskParamsBuilder get params => _$this._params ??= TaskParamsBuilder();
  set params(TaskParamsBuilder? params) => _$this._params = params;

  String? _limit;
  String? get limit => _$this._limit;
  set limit(String? limit) => _$this._limit = limit;

  TaskBuilder() {
    Task._defaults(this);
  }

  TaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _templateId = $v.templateId;
      _status = $v.status;
      _playbook = $v.playbook;
      _environment = $v.environment;
      _secret = $v.secret;
      _arguments = $v.arguments;
      _gitBranch = $v.gitBranch;
      _message = $v.message;
      _inventoryId = $v.inventoryId;
      _params = $v.params?.toBuilder();
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Task other) {
    _$v = other as _$Task;
  }

  @override
  void update(void Function(TaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Task build() => _build();

  _$Task _build() {
    _$Task _$result;
    try {
      _$result = _$v ??
          _$Task._(
            id: id,
            templateId: templateId,
            status: status,
            playbook: playbook,
            environment: environment,
            secret: secret,
            arguments: arguments,
            gitBranch: gitBranch,
            message: message,
            inventoryId: inventoryId,
            params: _params?.build(),
            limit: limit,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Task', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
