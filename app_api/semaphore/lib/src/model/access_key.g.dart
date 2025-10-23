// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccessKeyTypeEnum _$accessKeyTypeEnum_none =
    const AccessKeyTypeEnum._('none');
const AccessKeyTypeEnum _$accessKeyTypeEnum_ssh =
    const AccessKeyTypeEnum._('ssh');
const AccessKeyTypeEnum _$accessKeyTypeEnum_loginPassword =
    const AccessKeyTypeEnum._('loginPassword');

AccessKeyTypeEnum _$accessKeyTypeEnumValueOf(String name) {
  switch (name) {
    case 'none':
      return _$accessKeyTypeEnum_none;
    case 'ssh':
      return _$accessKeyTypeEnum_ssh;
    case 'loginPassword':
      return _$accessKeyTypeEnum_loginPassword;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AccessKeyTypeEnum> _$accessKeyTypeEnumValues =
    BuiltSet<AccessKeyTypeEnum>(const <AccessKeyTypeEnum>[
  _$accessKeyTypeEnum_none,
  _$accessKeyTypeEnum_ssh,
  _$accessKeyTypeEnum_loginPassword,
]);

Serializer<AccessKeyTypeEnum> _$accessKeyTypeEnumSerializer =
    _$AccessKeyTypeEnumSerializer();

class _$AccessKeyTypeEnumSerializer
    implements PrimitiveSerializer<AccessKeyTypeEnum> {
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
  final Iterable<Type> types = const <Type>[AccessKeyTypeEnum];
  @override
  final String wireName = 'AccessKeyTypeEnum';

  @override
  Object serialize(Serializers serializers, AccessKeyTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccessKeyTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccessKeyTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccessKey extends AccessKey {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final AccessKeyTypeEnum? type;
  @override
  final int? projectId;

  factory _$AccessKey([void Function(AccessKeyBuilder)? updates]) =>
      (AccessKeyBuilder()..update(updates))._build();

  _$AccessKey._({this.id, this.name, this.type, this.projectId}) : super._();
  @override
  AccessKey rebuild(void Function(AccessKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessKeyBuilder toBuilder() => AccessKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessKey &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        projectId == other.projectId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccessKey')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('projectId', projectId))
        .toString();
  }
}

class AccessKeyBuilder implements Builder<AccessKey, AccessKeyBuilder> {
  _$AccessKey? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AccessKeyTypeEnum? _type;
  AccessKeyTypeEnum? get type => _$this._type;
  set type(AccessKeyTypeEnum? type) => _$this._type = type;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  AccessKeyBuilder() {
    AccessKey._defaults(this);
  }

  AccessKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _projectId = $v.projectId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessKey other) {
    _$v = other as _$AccessKey;
  }

  @override
  void update(void Function(AccessKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessKey build() => _build();

  _$AccessKey _build() {
    final _$result = _$v ??
        _$AccessKey._(
          id: id,
          name: name,
          type: type,
          projectId: projectId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
