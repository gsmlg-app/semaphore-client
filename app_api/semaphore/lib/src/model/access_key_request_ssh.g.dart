// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_key_request_ssh.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessKeyRequestSsh extends AccessKeyRequestSsh {
  @override
  final String? login;
  @override
  final String? passphrase;
  @override
  final String? privateKey;

  factory _$AccessKeyRequestSsh(
          [void Function(AccessKeyRequestSshBuilder)? updates]) =>
      (AccessKeyRequestSshBuilder()..update(updates))._build();

  _$AccessKeyRequestSsh._({this.login, this.passphrase, this.privateKey})
      : super._();
  @override
  AccessKeyRequestSsh rebuild(
          void Function(AccessKeyRequestSshBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessKeyRequestSshBuilder toBuilder() =>
      AccessKeyRequestSshBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessKeyRequestSsh &&
        login == other.login &&
        passphrase == other.passphrase &&
        privateKey == other.privateKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, passphrase.hashCode);
    _$hash = $jc(_$hash, privateKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessKeyRequestSsh')
          ..add('login', login)
          ..add('passphrase', passphrase)
          ..add('privateKey', privateKey))
        .toString();
  }
}

class AccessKeyRequestSshBuilder
    implements Builder<AccessKeyRequestSsh, AccessKeyRequestSshBuilder> {
  _$AccessKeyRequestSsh? _$v;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _passphrase;
  String? get passphrase => _$this._passphrase;
  set passphrase(String? passphrase) => _$this._passphrase = passphrase;

  String? _privateKey;
  String? get privateKey => _$this._privateKey;
  set privateKey(String? privateKey) => _$this._privateKey = privateKey;

  AccessKeyRequestSshBuilder() {
    AccessKeyRequestSsh._defaults(this);
  }

  AccessKeyRequestSshBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _login = $v.login;
      _passphrase = $v.passphrase;
      _privateKey = $v.privateKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessKeyRequestSsh other) {
    _$v = other as _$AccessKeyRequestSsh;
  }

  @override
  void update(void Function(AccessKeyRequestSshBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessKeyRequestSsh build() => _build();

  _$AccessKeyRequestSsh _build() {
    final _$result = _$v ??
        _$AccessKeyRequestSsh._(
          login: login,
          passphrase: passphrase,
          privateKey: privateKey,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
