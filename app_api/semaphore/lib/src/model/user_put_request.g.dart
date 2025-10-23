// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserPutRequest extends UserPutRequest {
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final bool? alert;
  @override
  final bool? admin;

  factory _$UserPutRequest([void Function(UserPutRequestBuilder)? updates]) =>
      (UserPutRequestBuilder()..update(updates))._build();

  _$UserPutRequest._(
      {this.name, this.username, this.email, this.alert, this.admin})
      : super._();
  @override
  UserPutRequest rebuild(void Function(UserPutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserPutRequestBuilder toBuilder() => UserPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserPutRequest &&
        name == other.name &&
        username == other.username &&
        email == other.email &&
        alert == other.alert &&
        admin == other.admin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, alert.hashCode);
    _$hash = $jc(_$hash, admin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserPutRequest')
          ..add('name', name)
          ..add('username', username)
          ..add('email', email)
          ..add('alert', alert)
          ..add('admin', admin))
        .toString();
  }
}

class UserPutRequestBuilder
    implements Builder<UserPutRequest, UserPutRequestBuilder> {
  _$UserPutRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _alert;
  bool? get alert => _$this._alert;
  set alert(bool? alert) => _$this._alert = alert;

  bool? _admin;
  bool? get admin => _$this._admin;
  set admin(bool? admin) => _$this._admin = admin;

  UserPutRequestBuilder() {
    UserPutRequest._defaults(this);
  }

  UserPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _username = $v.username;
      _email = $v.email;
      _alert = $v.alert;
      _admin = $v.admin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserPutRequest other) {
    _$v = other as _$UserPutRequest;
  }

  @override
  void update(void Function(UserPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserPutRequest build() => _build();

  _$UserPutRequest _build() {
    final _$result = _$v ??
        _$UserPutRequest._(
          name: name,
          username: username,
          email: email,
          alert: alert,
          admin: admin,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
