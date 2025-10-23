// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_invite_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptInviteRequest extends AcceptInviteRequest {
  @override
  final String token;

  factory _$AcceptInviteRequest(
          [void Function(AcceptInviteRequestBuilder)? updates]) =>
      (AcceptInviteRequestBuilder()..update(updates))._build();

  _$AcceptInviteRequest._({required this.token}) : super._();
  @override
  AcceptInviteRequest rebuild(
          void Function(AcceptInviteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptInviteRequestBuilder toBuilder() =>
      AcceptInviteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptInviteRequest && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AcceptInviteRequest')
          ..add('token', token))
        .toString();
  }
}

class AcceptInviteRequestBuilder
    implements Builder<AcceptInviteRequest, AcceptInviteRequestBuilder> {
  _$AcceptInviteRequest? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  AcceptInviteRequestBuilder() {
    AcceptInviteRequest._defaults(this);
  }

  AcceptInviteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptInviteRequest other) {
    _$v = other as _$AcceptInviteRequest;
  }

  @override
  void update(void Function(AcceptInviteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptInviteRequest build() => _build();

  _$AcceptInviteRequest _build() {
    final _$result = _$v ??
        _$AcceptInviteRequest._(
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'AcceptInviteRequest', 'token'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
