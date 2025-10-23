// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$APIToken extends APIToken {
  @override
  final String? id;
  @override
  final String? created;
  @override
  final bool? expired;
  @override
  final int? userId;

  factory _$APIToken([void Function(APITokenBuilder)? updates]) =>
      (APITokenBuilder()..update(updates))._build();

  _$APIToken._({this.id, this.created, this.expired, this.userId}) : super._();
  @override
  APIToken rebuild(void Function(APITokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  APITokenBuilder toBuilder() => APITokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is APIToken &&
        id == other.id &&
        created == other.created &&
        expired == other.expired &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, expired.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'APIToken')
          ..add('id', id)
          ..add('created', created)
          ..add('expired', expired)
          ..add('userId', userId))
        .toString();
  }
}

class APITokenBuilder implements Builder<APIToken, APITokenBuilder> {
  _$APIToken? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _created;
  String? get created => _$this._created;
  set created(String? created) => _$this._created = created;

  bool? _expired;
  bool? get expired => _$this._expired;
  set expired(bool? expired) => _$this._expired = expired;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  APITokenBuilder() {
    APIToken._defaults(this);
  }

  APITokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _created = $v.created;
      _expired = $v.expired;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIToken other) {
    _$v = other as _$APIToken;
  }

  @override
  void update(void Function(APITokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  APIToken build() => _build();

  _$APIToken _build() {
    final _$result = _$v ??
        _$APIToken._(
          id: id,
          created: created,
          expired: expired,
          userId: userId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
