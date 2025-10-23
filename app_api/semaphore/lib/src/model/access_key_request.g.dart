// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_key_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccessKeyRequestTypeEnum _$accessKeyRequestTypeEnum_none =
    const AccessKeyRequestTypeEnum._('none');
const AccessKeyRequestTypeEnum _$accessKeyRequestTypeEnum_ssh =
    const AccessKeyRequestTypeEnum._('ssh');
const AccessKeyRequestTypeEnum _$accessKeyRequestTypeEnum_loginPassword =
    const AccessKeyRequestTypeEnum._('loginPassword');

AccessKeyRequestTypeEnum _$accessKeyRequestTypeEnumValueOf(String name) {
  switch (name) {
    case 'none':
      return _$accessKeyRequestTypeEnum_none;
    case 'ssh':
      return _$accessKeyRequestTypeEnum_ssh;
    case 'loginPassword':
      return _$accessKeyRequestTypeEnum_loginPassword;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AccessKeyRequestTypeEnum> _$accessKeyRequestTypeEnumValues =
    BuiltSet<AccessKeyRequestTypeEnum>(const <AccessKeyRequestTypeEnum>[
  _$accessKeyRequestTypeEnum_none,
  _$accessKeyRequestTypeEnum_ssh,
  _$accessKeyRequestTypeEnum_loginPassword,
]);

Serializer<AccessKeyRequestTypeEnum> _$accessKeyRequestTypeEnumSerializer =
    _$AccessKeyRequestTypeEnumSerializer();

class _$AccessKeyRequestTypeEnumSerializer
    implements PrimitiveSerializer<AccessKeyRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'ssh': 'ssh',
    'loginPassword': 'login_password',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'ssh': 'ssh',
    'login_password': 'loginPassword',
  };

  @override
  final Iterable<Type> types = const <Type>[AccessKeyRequestTypeEnum];
  @override
  final String wireName = 'AccessKeyRequestTypeEnum';

  @override
  Object serialize(Serializers serializers, AccessKeyRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccessKeyRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccessKeyRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccessKeyRequest extends AccessKeyRequest {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final AccessKeyRequestTypeEnum? type;
  @override
  final int? projectId;
  @override
  final bool? overrideSecret;
  @override
  final AccessKeyRequestLoginPassword? loginPassword;
  @override
  final AccessKeyRequestSsh? ssh;

  factory _$AccessKeyRequest(
          [void Function(AccessKeyRequestBuilder)? updates]) =>
      (AccessKeyRequestBuilder()..update(updates))._build();

  _$AccessKeyRequest._(
      {this.id,
      this.name,
      this.type,
      this.projectId,
      this.overrideSecret,
      this.loginPassword,
      this.ssh})
      : super._();
  @override
  AccessKeyRequest rebuild(void Function(AccessKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessKeyRequestBuilder toBuilder() =>
      AccessKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessKeyRequest &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        projectId == other.projectId &&
        overrideSecret == other.overrideSecret &&
        loginPassword == other.loginPassword &&
        ssh == other.ssh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, overrideSecret.hashCode);
    _$hash = $jc(_$hash, loginPassword.hashCode);
    _$hash = $jc(_$hash, ssh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessKeyRequest')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('projectId', projectId)
          ..add('overrideSecret', overrideSecret)
          ..add('loginPassword', loginPassword)
          ..add('ssh', ssh))
        .toString();
  }
}

class AccessKeyRequestBuilder
    implements Builder<AccessKeyRequest, AccessKeyRequestBuilder> {
  _$AccessKeyRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AccessKeyRequestTypeEnum? _type;
  AccessKeyRequestTypeEnum? get type => _$this._type;
  set type(AccessKeyRequestTypeEnum? type) => _$this._type = type;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  bool? _overrideSecret;
  bool? get overrideSecret => _$this._overrideSecret;
  set overrideSecret(bool? overrideSecret) =>
      _$this._overrideSecret = overrideSecret;

  AccessKeyRequestLoginPasswordBuilder? _loginPassword;
  AccessKeyRequestLoginPasswordBuilder get loginPassword =>
      _$this._loginPassword ??= AccessKeyRequestLoginPasswordBuilder();
  set loginPassword(AccessKeyRequestLoginPasswordBuilder? loginPassword) =>
      _$this._loginPassword = loginPassword;

  AccessKeyRequestSshBuilder? _ssh;
  AccessKeyRequestSshBuilder get ssh =>
      _$this._ssh ??= AccessKeyRequestSshBuilder();
  set ssh(AccessKeyRequestSshBuilder? ssh) => _$this._ssh = ssh;

  AccessKeyRequestBuilder() {
    AccessKeyRequest._defaults(this);
  }

  AccessKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _projectId = $v.projectId;
      _overrideSecret = $v.overrideSecret;
      _loginPassword = $v.loginPassword?.toBuilder();
      _ssh = $v.ssh?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessKeyRequest other) {
    _$v = other as _$AccessKeyRequest;
  }

  @override
  void update(void Function(AccessKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessKeyRequest build() => _build();

  _$AccessKeyRequest _build() {
    _$AccessKeyRequest _$result;
    try {
      _$result = _$v ??
          _$AccessKeyRequest._(
            id: id,
            name: name,
            type: type,
            projectId: projectId,
            overrideSecret: overrideSecret,
            loginPassword: _loginPassword?.build(),
            ssh: _ssh?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loginPassword';
        _loginPassword?.build();
        _$failedField = 'ssh';
        _ssh?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AccessKeyRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
