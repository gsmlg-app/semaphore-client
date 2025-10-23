// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ansible_task_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class AnsibleTaskParamsBuilder {
  void replace(AnsibleTaskParams other);
  void update(void Function(AnsibleTaskParamsBuilder) updates);
  bool? get debug;
  set debug(bool? debug);

  bool? get dryRun;
  set dryRun(bool? dryRun);

  bool? get diff;
  set diff(bool? diff);

  ListBuilder<String> get limit;
  set limit(ListBuilder<String>? limit);

  ListBuilder<String> get tags;
  set tags(ListBuilder<String>? tags);

  ListBuilder<String> get skipTags;
  set skipTags(ListBuilder<String>? skipTags);
}

class _$$AnsibleTaskParams extends $AnsibleTaskParams {
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

  factory _$$AnsibleTaskParams(
          [void Function($AnsibleTaskParamsBuilder)? updates]) =>
      ($AnsibleTaskParamsBuilder()..update(updates))._build();

  _$$AnsibleTaskParams._(
      {this.debug,
      this.dryRun,
      this.diff,
      this.limit,
      this.tags,
      this.skipTags})
      : super._();
  @override
  $AnsibleTaskParams rebuild(
          void Function($AnsibleTaskParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $AnsibleTaskParamsBuilder toBuilder() =>
      $AnsibleTaskParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $AnsibleTaskParams &&
        debug == other.debug &&
        dryRun == other.dryRun &&
        diff == other.diff &&
        limit == other.limit &&
        tags == other.tags &&
        skipTags == other.skipTags;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$AnsibleTaskParams')
          ..add('debug', debug)
          ..add('dryRun', dryRun)
          ..add('diff', diff)
          ..add('limit', limit)
          ..add('tags', tags)
          ..add('skipTags', skipTags))
        .toString();
  }
}

class $AnsibleTaskParamsBuilder
    implements
        Builder<$AnsibleTaskParams, $AnsibleTaskParamsBuilder>,
        AnsibleTaskParamsBuilder {
  _$$AnsibleTaskParams? _$v;

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

  $AnsibleTaskParamsBuilder() {
    $AnsibleTaskParams._defaults(this);
  }

  $AnsibleTaskParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _debug = $v.debug;
      _dryRun = $v.dryRun;
      _diff = $v.diff;
      _limit = $v.limit?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _skipTags = $v.skipTags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $AnsibleTaskParams other) {
    _$v = other as _$$AnsibleTaskParams;
  }

  @override
  void update(void Function($AnsibleTaskParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AnsibleTaskParams build() => _build();

  _$$AnsibleTaskParams _build() {
    _$$AnsibleTaskParams _$result;
    try {
      _$result = _$v ??
          _$$AnsibleTaskParams._(
            debug: debug,
            dryRun: dryRun,
            diff: diff,
            limit: _limit?.build(),
            tags: _tags?.build(),
            skipTags: _skipTags?.build(),
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
            r'$AnsibleTaskParams', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
