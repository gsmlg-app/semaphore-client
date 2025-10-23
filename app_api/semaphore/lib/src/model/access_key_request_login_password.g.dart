// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_key_request_login_password.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessKeyRequestLoginPassword extends AccessKeyRequestLoginPassword {
  @override
  final String? password;
  @override
  final String? login;

  factory _$AccessKeyRequestLoginPassword(
          [void Function(AccessKeyRequestLoginPasswordBuilder)? updates]) =>
      (AccessKeyRequestLoginPasswordBuilder()..update(updates))._build();

  _$AccessKeyRequestLoginPassword._({this.password, this.login}) : super._();
  @override
  AccessKeyRequestLoginPassword rebuild(
          void Function(AccessKeyRequestLoginPasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessKeyRequestLoginPasswordBuilder toBuilder() =>
      AccessKeyRequestLoginPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessKeyRequestLoginPassword &&
        password == other.password &&
        login == other.login;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessKeyRequestLoginPassword')
          ..add('password', password)
          ..add('login', login))
        .toString();
  }
}

class AccessKeyRequestLoginPasswordBuilder
    implements
        Builder<AccessKeyRequestLoginPassword,
            AccessKeyRequestLoginPasswordBuilder> {
  _$AccessKeyRequestLoginPassword? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  AccessKeyRequestLoginPasswordBuilder() {
    AccessKeyRequestLoginPassword._defaults(this);
  }

  AccessKeyRequestLoginPasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _login = $v.login;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessKeyRequestLoginPassword other) {
    _$v = other as _$AccessKeyRequestLoginPassword;
  }

  @override
  void update(void Function(AccessKeyRequestLoginPasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessKeyRequestLoginPassword build() => _build();

  _$AccessKeyRequestLoginPassword _build() {
    final _$result = _$v ??
        _$AccessKeyRequestLoginPassword._(
          password: password,
          login: login,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
