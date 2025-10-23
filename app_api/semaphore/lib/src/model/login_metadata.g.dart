// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginMetadata extends LoginMetadata {
  @override
  final BuiltList<LoginMetadataOidcProvidersInner>? oidcProviders;

  factory _$LoginMetadata([void Function(LoginMetadataBuilder)? updates]) =>
      (LoginMetadataBuilder()..update(updates))._build();

  _$LoginMetadata._({this.oidcProviders}) : super._();
  @override
  LoginMetadata rebuild(void Function(LoginMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginMetadataBuilder toBuilder() => LoginMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginMetadata && oidcProviders == other.oidcProviders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oidcProviders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginMetadata')
          ..add('oidcProviders', oidcProviders))
        .toString();
  }
}

class LoginMetadataBuilder
    implements Builder<LoginMetadata, LoginMetadataBuilder> {
  _$LoginMetadata? _$v;

  ListBuilder<LoginMetadataOidcProvidersInner>? _oidcProviders;
  ListBuilder<LoginMetadataOidcProvidersInner> get oidcProviders =>
      _$this._oidcProviders ??= ListBuilder<LoginMetadataOidcProvidersInner>();
  set oidcProviders(
          ListBuilder<LoginMetadataOidcProvidersInner>? oidcProviders) =>
      _$this._oidcProviders = oidcProviders;

  LoginMetadataBuilder() {
    LoginMetadata._defaults(this);
  }

  LoginMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oidcProviders = $v.oidcProviders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginMetadata other) {
    _$v = other as _$LoginMetadata;
  }

  @override
  void update(void Function(LoginMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginMetadata build() => _build();

  _$LoginMetadata _build() {
    _$LoginMetadata _$result;
    try {
      _$result = _$v ??
          _$LoginMetadata._(
            oidcProviders: _oidcProviders?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'oidcProviders';
        _oidcProviders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LoginMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
