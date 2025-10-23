// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Login extends Login {
  @override
  final String? auth;
  @override
  final String? password;

  factory _$Login([void Function(LoginBuilder)? updates]) =>
      (LoginBuilder()..update(updates))._build();

  _$Login._({this.auth, this.password}) : super._();
  @override
  Login rebuild(void Function(LoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginBuilder toBuilder() => LoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Login && auth == other.auth && password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Login')
          ..add('auth', auth)
          ..add('password', password))
        .toString();
  }
}

class LoginBuilder implements Builder<Login, LoginBuilder> {
  _$Login? _$v;

  String? _auth;
  String? get auth => _$this._auth;
  set auth(String? auth) => _$this._auth = auth;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  LoginBuilder() {
    Login._defaults(this);
  }

  LoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auth = $v.auth;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login other) {
    _$v = other as _$Login;
  }

  @override
  void update(void Function(LoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Login build() => _build();

  _$Login _build() {
    final _$result = _$v ??
        _$Login._(
          auth: auth,
          password: password,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
