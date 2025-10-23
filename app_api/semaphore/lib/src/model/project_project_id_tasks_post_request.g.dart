// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_tasks_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectProjectIdTasksPostRequest
    extends ProjectProjectIdTasksPostRequest {
  @override
  final int? templateId;
  @override
  final bool? debug;
  @override
  final bool? dryRun;
  @override
  final bool? diff;
  @override
  final String? playbook;
  @override
  final String? environment;
  @override
  final String? limit;
  @override
  final String? gitBranch;
  @override
  final String? message;
  @override
  final String? arguments;
  @override
  final int? inventoryId;

  factory _$ProjectProjectIdTasksPostRequest(
          [void Function(ProjectProjectIdTasksPostRequestBuilder)? updates]) =>
      (ProjectProjectIdTasksPostRequestBuilder()..update(updates))._build();

  _$ProjectProjectIdTasksPostRequest._(
      {this.templateId,
      this.debug,
      this.dryRun,
      this.diff,
      this.playbook,
      this.environment,
      this.limit,
      this.gitBranch,
      this.message,
      this.arguments,
      this.inventoryId})
      : super._();
  @override
  ProjectProjectIdTasksPostRequest rebuild(
          void Function(ProjectProjectIdTasksPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectProjectIdTasksPostRequestBuilder toBuilder() =>
      ProjectProjectIdTasksPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectProjectIdTasksPostRequest &&
        templateId == other.templateId &&
        debug == other.debug &&
        dryRun == other.dryRun &&
        diff == other.diff &&
        playbook == other.playbook &&
        environment == other.environment &&
        limit == other.limit &&
        gitBranch == other.gitBranch &&
        message == other.message &&
        arguments == other.arguments &&
        inventoryId == other.inventoryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, debug.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, diff.hashCode);
    _$hash = $jc(_$hash, playbook.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, gitBranch.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, arguments.hashCode);
    _$hash = $jc(_$hash, inventoryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectProjectIdTasksPostRequest')
          ..add('templateId', templateId)
          ..add('debug', debug)
          ..add('dryRun', dryRun)
          ..add('diff', diff)
          ..add('playbook', playbook)
          ..add('environment', environment)
          ..add('limit', limit)
          ..add('gitBranch', gitBranch)
          ..add('message', message)
          ..add('arguments', arguments)
          ..add('inventoryId', inventoryId))
        .toString();
  }
}

class ProjectProjectIdTasksPostRequestBuilder
    implements
        Builder<ProjectProjectIdTasksPostRequest,
            ProjectProjectIdTasksPostRequestBuilder> {
  _$ProjectProjectIdTasksPostRequest? _$v;

  int? _templateId;
  int? get templateId => _$this._templateId;
  set templateId(int? templateId) => _$this._templateId = templateId;

  bool? _debug;
  bool? get debug => _$this._debug;
  set debug(bool? debug) => _$this._debug = debug;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _diff;
  bool? get diff => _$this._diff;
  set diff(bool? diff) => _$this._diff = diff;

  String? _playbook;
  String? get playbook => _$this._playbook;
  set playbook(String? playbook) => _$this._playbook = playbook;

  String? _environment;
  String? get environment => _$this._environment;
  set environment(String? environment) => _$this._environment = environment;

  String? _limit;
  String? get limit => _$this._limit;
  set limit(String? limit) => _$this._limit = limit;

  String? _gitBranch;
  String? get gitBranch => _$this._gitBranch;
  set gitBranch(String? gitBranch) => _$this._gitBranch = gitBranch;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _arguments;
  String? get arguments => _$this._arguments;
  set arguments(String? arguments) => _$this._arguments = arguments;

  int? _inventoryId;
  int? get inventoryId => _$this._inventoryId;
  set inventoryId(int? inventoryId) => _$this._inventoryId = inventoryId;

  ProjectProjectIdTasksPostRequestBuilder() {
    ProjectProjectIdTasksPostRequest._defaults(this);
  }

  ProjectProjectIdTasksPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateId = $v.templateId;
      _debug = $v.debug;
      _dryRun = $v.dryRun;
      _diff = $v.diff;
      _playbook = $v.playbook;
      _environment = $v.environment;
      _limit = $v.limit;
      _gitBranch = $v.gitBranch;
      _message = $v.message;
      _arguments = $v.arguments;
      _inventoryId = $v.inventoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectProjectIdTasksPostRequest other) {
    _$v = other as _$ProjectProjectIdTasksPostRequest;
  }

  @override
  void update(void Function(ProjectProjectIdTasksPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectProjectIdTasksPostRequest build() => _build();

  _$ProjectProjectIdTasksPostRequest _build() {
    final _$result = _$v ??
        _$ProjectProjectIdTasksPostRequest._(
          templateId: templateId,
          debug: debug,
          dryRun: dryRun,
          diff: diff,
          playbook: playbook,
          environment: environment,
          limit: limit,
          gitBranch: gitBranch,
          message: message,
          arguments: arguments,
          inventoryId: inventoryId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
