// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_metadata_oidc_providers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginMetadataOidcProvidersInner
    extends LoginMetadataOidcProvidersInner {
  @override
  final String? id;
  @override
  final String? name;

  factory _$LoginMetadataOidcProvidersInner(
          [void Function(LoginMetadataOidcProvidersInnerBuilder)? updates]) =>
      (LoginMetadataOidcProvidersInnerBuilder()..update(updates))._build();

  _$LoginMetadataOidcProvidersInner._({this.id, this.name}) : super._();
  @override
  LoginMetadataOidcProvidersInner rebuild(
          void Function(LoginMetadataOidcProvidersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginMetadataOidcProvidersInnerBuilder toBuilder() =>
      LoginMetadataOidcProvidersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginMetadataOidcProvidersInner &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginMetadataOidcProvidersInner')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class LoginMetadataOidcProvidersInnerBuilder
    implements
        Builder<LoginMetadataOidcProvidersInner,
            LoginMetadataOidcProvidersInnerBuilder> {
  _$LoginMetadataOidcProvidersInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LoginMetadataOidcProvidersInnerBuilder() {
    LoginMetadataOidcProvidersInner._defaults(this);
  }

  LoginMetadataOidcProvidersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginMetadataOidcProvidersInner other) {
    _$v = other as _$LoginMetadataOidcProvidersInner;
  }

  @override
  void update(void Function(LoginMetadataOidcProvidersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginMetadataOidcProvidersInner build() => _build();

  _$LoginMetadataOidcProvidersInner _build() {
    final _$result = _$v ??
        _$LoginMetadataOidcProvidersInner._(
          id: id,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
