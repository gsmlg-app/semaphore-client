// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? created;
  @override
  final bool? alert;
  @override
  final bool? admin;
  @override
  final bool? external_;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (UserBuilder()..update(updates))._build();

  _$User._(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.created,
      this.alert,
      this.admin,
      this.external_})
      : super._();
  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        name == other.name &&
        username == other.username &&
        email == other.email &&
        created == other.created &&
        alert == other.alert &&
        admin == other.admin &&
        external_ == other.external_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, alert.hashCode);
    _$hash = $jc(_$hash, admin.hashCode);
    _$hash = $jc(_$hash, external_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('name', name)
          ..add('username', username)
          ..add('email', email)
          ..add('created', created)
          ..add('alert', alert)
          ..add('admin', admin)
          ..add('external_', external_))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _created;
  String? get created => _$this._created;
  set created(String? created) => _$this._created = created;

  bool? _alert;
  bool? get alert => _$this._alert;
  set alert(bool? alert) => _$this._alert = alert;

  bool? _admin;
  bool? get admin => _$this._admin;
  set admin(bool? admin) => _$this._admin = admin;

  bool? _external_;
  bool? get external_ => _$this._external_;
  set external_(bool? external_) => _$this._external_ = external_;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _username = $v.username;
      _email = $v.email;
      _created = $v.created;
      _alert = $v.alert;
      _admin = $v.admin;
      _external_ = $v.external_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    final _$result = _$v ??
        _$User._(
          id: id,
          name: name,
          username: username,
          email: email,
          created: created,
          alert: alert,
          admin: admin,
          external_: external_,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
