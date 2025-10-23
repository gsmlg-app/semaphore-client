// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_user_id_password_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersUserIdPasswordPostRequest extends UsersUserIdPasswordPostRequest {
  @override
  final String? password;

  factory _$UsersUserIdPasswordPostRequest(
          [void Function(UsersUserIdPasswordPostRequestBuilder)? updates]) =>
      (UsersUserIdPasswordPostRequestBuilder()..update(updates))._build();

  _$UsersUserIdPasswordPostRequest._({this.password}) : super._();
  @override
  UsersUserIdPasswordPostRequest rebuild(
          void Function(UsersUserIdPasswordPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersUserIdPasswordPostRequestBuilder toBuilder() =>
      UsersUserIdPasswordPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersUserIdPasswordPostRequest &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersUserIdPasswordPostRequest')
          ..add('password', password))
        .toString();
  }
}

class UsersUserIdPasswordPostRequestBuilder
    implements
        Builder<UsersUserIdPasswordPostRequest,
            UsersUserIdPasswordPostRequestBuilder> {
  _$UsersUserIdPasswordPostRequest? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  UsersUserIdPasswordPostRequestBuilder() {
    UsersUserIdPasswordPostRequest._defaults(this);
  }

  UsersUserIdPasswordPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersUserIdPasswordPostRequest other) {
    _$v = other as _$UsersUserIdPasswordPostRequest;
  }

  @override
  void update(void Function(UsersUserIdPasswordPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersUserIdPasswordPostRequest build() => _build();

  _$UsersUserIdPasswordPostRequest _build() {
    final _$result = _$v ??
        _$UsersUserIdPasswordPostRequest._(
          password: password,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
