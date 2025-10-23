// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Runner extends Runner {
  @override
  final String? token;

  factory _$Runner([void Function(RunnerBuilder)? updates]) =>
      (RunnerBuilder()..update(updates))._build();

  _$Runner._({this.token}) : super._();
  @override
  Runner rebuild(void Function(RunnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunnerBuilder toBuilder() => RunnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Runner && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Runner')..add('token', token))
        .toString();
  }
}

class RunnerBuilder implements Builder<Runner, RunnerBuilder> {
  _$Runner? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  RunnerBuilder() {
    Runner._defaults(this);
  }

  RunnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Runner other) {
    _$v = other as _$Runner;
  }

  @override
  void update(void Function(RunnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Runner build() => _build();

  _$Runner _build() {
    final _$result = _$v ??
        _$Runner._(
          token: token,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
