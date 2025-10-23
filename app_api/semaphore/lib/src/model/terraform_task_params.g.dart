// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terraform_task_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class TerraformTaskParamsBuilder {
  void replace(TerraformTaskParams other);
  void update(void Function(TerraformTaskParamsBuilder) updates);
  bool? get plan;
  set plan(bool? plan);

  bool? get destroy;
  set destroy(bool? destroy);

  bool? get autoApprove;
  set autoApprove(bool? autoApprove);

  bool? get upgrade;
  set upgrade(bool? upgrade);
}

class _$$TerraformTaskParams extends $TerraformTaskParams {
  @override
  final bool? plan;
  @override
  final bool? destroy;
  @override
  final bool? autoApprove;
  @override
  final bool? upgrade;

  factory _$$TerraformTaskParams(
          [void Function($TerraformTaskParamsBuilder)? updates]) =>
      ($TerraformTaskParamsBuilder()..update(updates))._build();

  _$$TerraformTaskParams._(
      {this.plan, this.destroy, this.autoApprove, this.upgrade})
      : super._();
  @override
  $TerraformTaskParams rebuild(
          void Function($TerraformTaskParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TerraformTaskParamsBuilder toBuilder() =>
      $TerraformTaskParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TerraformTaskParams &&
        plan == other.plan &&
        destroy == other.destroy &&
        autoApprove == other.autoApprove &&
        upgrade == other.upgrade;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, plan.hashCode);
    _$hash = $jc(_$hash, destroy.hashCode);
    _$hash = $jc(_$hash, autoApprove.hashCode);
    _$hash = $jc(_$hash, upgrade.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$TerraformTaskParams')
          ..add('plan', plan)
          ..add('destroy', destroy)
          ..add('autoApprove', autoApprove)
          ..add('upgrade', upgrade))
        .toString();
  }
}

class $TerraformTaskParamsBuilder
    implements
        Builder<$TerraformTaskParams, $TerraformTaskParamsBuilder>,
        TerraformTaskParamsBuilder {
  _$$TerraformTaskParams? _$v;

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

  $TerraformTaskParamsBuilder() {
    $TerraformTaskParams._defaults(this);
  }

  $TerraformTaskParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plan = $v.plan;
      _destroy = $v.destroy;
      _autoApprove = $v.autoApprove;
      _upgrade = $v.upgrade;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TerraformTaskParams other) {
    _$v = other as _$$TerraformTaskParams;
  }

  @override
  void update(void Function($TerraformTaskParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TerraformTaskParams build() => _build();

  _$$TerraformTaskParams _build() {
    final _$result = _$v ??
        _$$TerraformTaskParams._(
          plan: plan,
          destroy: destroy,
          autoApprove: autoApprove,
          upgrade: upgrade,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
