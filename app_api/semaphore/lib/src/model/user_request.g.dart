// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRequest extends UserRequest {
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final bool? alert;
  @override
  final bool? admin;
  @override
  final bool? external_;

  factory _$UserRequest([void Function(UserRequestBuilder)? updates]) =>
      (UserRequestBuilder()..update(updates))._build();

  _$UserRequest._(
      {this.name,
      this.username,
      this.email,
      this.password,
      this.alert,
      this.admin,
      this.external_})
      : super._();
  @override
  UserRequest rebuild(void Function(UserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRequestBuilder toBuilder() => UserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRequest &&
        name == other.name &&
        username == other.username &&
        email == other.email &&
        password == other.password &&
        alert == other.alert &&
        admin == other.admin &&
        external_ == other.external_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, alert.hashCode);
    _$hash = $jc(_$hash, admin.hashCode);
    _$hash = $jc(_$hash, external_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRequest')
          ..add('name', name)
          ..add('username', username)
          ..add('email', email)
          ..add('password', password)
          ..add('alert', alert)
          ..add('admin', admin)
          ..add('external_', external_))
        .toString();
  }
}

class UserRequestBuilder implements Builder<UserRequest, UserRequestBuilder> {
  _$UserRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _alert;
  bool? get alert => _$this._alert;
  set alert(bool? alert) => _$this._alert = alert;

  bool? _admin;
  bool? get admin => _$this._admin;
  set admin(bool? admin) => _$this._admin = admin;

  bool? _external_;
  bool? get external_ => _$this._external_;
  set external_(bool? external_) => _$this._external_ = external_;

  UserRequestBuilder() {
    UserRequest._defaults(this);
  }

  UserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _username = $v.username;
      _email = $v.email;
      _password = $v.password;
      _alert = $v.alert;
      _admin = $v.admin;
      _external_ = $v.external_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRequest other) {
    _$v = other as _$UserRequest;
  }

  @override
  void update(void Function(UserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRequest build() => _build();

  _$UserRequest _build() {
    final _$result = _$v ??
        _$UserRequest._(
          name: name,
          username: username,
          email: email,
          password: password,
          alert: alert,
          admin: admin,
          external_: external_,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
