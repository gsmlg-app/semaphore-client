// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskParams extends TaskParams {
  @override
  final bool? debug;
  @override
  final bool? dryRun;
  @override
  final bool? diff;
  @override
  final BuiltList<String>? limit;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? skipTags;
  @override
  final bool? plan;
  @override
  final bool? destroy;
  @override
  final bool? autoApprove;
  @override
  final bool? upgrade;

  factory _$TaskParams([void Function(TaskParamsBuilder)? updates]) =>
      (TaskParamsBuilder()..update(updates))._build();

  _$TaskParams._(
      {this.debug,
      this.dryRun,
      this.diff,
      this.limit,
      this.tags,
      this.skipTags,
      this.plan,
      this.destroy,
      this.autoApprove,
      this.upgrade})
      : super._();
  @override
  TaskParams rebuild(void Function(TaskParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskParamsBuilder toBuilder() => TaskParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskParams &&
        debug == other.debug &&
        dryRun == other.dryRun &&
        diff == other.diff &&
        limit == other.limit &&
        tags == other.tags &&
        skipTags == other.skipTags &&
        plan == other.plan &&
        destroy == other.destroy &&
        autoApprove == other.autoApprove &&
        upgrade == other.upgrade;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, debug.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, diff.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, skipTags.hashCode);
    _$hash = $jc(_$hash, plan.hashCode);
    _$hash = $jc(_$hash, destroy.hashCode);
    _$hash = $jc(_$hash, autoApprove.hashCode);
    _$hash = $jc(_$hash, upgrade.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskParams')
          ..add('debug', debug)
          ..add('dryRun', dryRun)
          ..add('diff', diff)
          ..add('limit', limit)
          ..add('tags', tags)
          ..add('skipTags', skipTags)
          ..add('plan', plan)
          ..add('destroy', destroy)
          ..add('autoApprove', autoApprove)
          ..add('upgrade', upgrade))
        .toString();
  }
}

class TaskParamsBuilder
    implements
        Builder<TaskParams, TaskParamsBuilder>,
        AnsibleTaskParamsBuilder,
        TerraformTaskParamsBuilder {
  _$TaskParams? _$v;

  bool? _debug;
  bool? get debug => _$this._debug;
  set debug(covariant bool? debug) => _$this._debug = debug;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(covariant bool? dryRun) => _$this._dryRun = dryRun;

  bool? _diff;
  bool? get diff => _$this._diff;
  set diff(covariant bool? diff) => _$this._diff = diff;

  ListBuilder<String>? _limit;
  ListBuilder<String> get limit => _$this._limit ??= ListBuilder<String>();
  set limit(covariant ListBuilder<String>? limit) => _$this._limit = limit;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(covariant ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _skipTags;
  ListBuilder<String> get skipTags =>
      _$this._skipTags ??= ListBuilder<String>();
  set skipTags(covariant ListBuilder<String>? skipTags) =>
      _$this._skipTags = skipTags;

  bool? _plan;
  bool? get plan => _$this._plan;
  set plan(covariant bool? plan) => _$this._plan = plan;

  bool? _destroy;
  bool? get destroy => _$this._destroy;
  set destroy(covariant bool? destroy) => _$this._destroy = destroy;

  bool? _autoApprove;
  bool? get autoApprove => _$this._autoApprove;
  set autoApprove(covariant bool? autoApprove) =>
      _$this._autoApprove = autoApprove;

  bool? _upgrade;
  bool? get upgrade => _$this._upgrade;
  set upgrade(covariant bool? upgrade) => _$this._upgrade = upgrade;

  TaskParamsBuilder() {
    TaskParams._defaults(this);
  }

  TaskParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _debug = $v.debug;
      _dryRun = $v.dryRun;
      _diff = $v.diff;
      _limit = $v.limit?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _skipTags = $v.skipTags?.toBuilder();
      _plan = $v.plan;
      _destroy = $v.destroy;
      _autoApprove = $v.autoApprove;
      _upgrade = $v.upgrade;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
  void replace(covariant TaskParams other) {
    _$v = other as _$TaskParams;
  }

  @override
  void update(void Function(TaskParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskParams build() => _build();

  _$TaskParams _build() {
    _$TaskParams _$result;
    try {
      _$result = _$v ??
          _$TaskParams._(
            debug: debug,
            dryRun: dryRun,
            diff: diff,
            limit: _limit?.build(),
            tags: _tags?.build(),
            skipTags: _skipTags?.build(),
            plan: plan,
            destroy: destroy,
            autoApprove: autoApprove,
            upgrade: upgrade,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'limit';
        _limit?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'skipTags';
        _skipTags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TaskParams', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
