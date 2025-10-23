// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_keys_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectBackupKeysInnerTypeEnum _$projectBackupKeysInnerTypeEnum_ssh =
    const ProjectBackupKeysInnerTypeEnum._('ssh');
const ProjectBackupKeysInnerTypeEnum
    _$projectBackupKeysInnerTypeEnum_loginPassword =
    const ProjectBackupKeysInnerTypeEnum._('loginPassword');
const ProjectBackupKeysInnerTypeEnum _$projectBackupKeysInnerTypeEnum_none =
    const ProjectBackupKeysInnerTypeEnum._('none');

ProjectBackupKeysInnerTypeEnum _$projectBackupKeysInnerTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'ssh':
      return _$projectBackupKeysInnerTypeEnum_ssh;
    case 'loginPassword':
      return _$projectBackupKeysInnerTypeEnum_loginPassword;
    case 'none':
      return _$projectBackupKeysInnerTypeEnum_none;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectBackupKeysInnerTypeEnum>
    _$projectBackupKeysInnerTypeEnumValues = BuiltSet<
        ProjectBackupKeysInnerTypeEnum>(const <ProjectBackupKeysInnerTypeEnum>[
  _$projectBackupKeysInnerTypeEnum_ssh,
  _$projectBackupKeysInnerTypeEnum_loginPassword,
  _$projectBackupKeysInnerTypeEnum_none,
]);

Serializer<ProjectBackupKeysInnerTypeEnum>
    _$projectBackupKeysInnerTypeEnumSerializer =
    _$ProjectBackupKeysInnerTypeEnumSerializer();

class _$ProjectBackupKeysInnerTypeEnumSerializer
    implements PrimitiveSerializer<ProjectBackupKeysInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ssh': 'ssh',
    'loginPassword': 'login_password',
    'none': 'none',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ssh': 'ssh',
    'login_password': 'loginPassword',
    'none': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[ProjectBackupKeysInnerTypeEnum];
  @override
  final String wireName = 'ProjectBackupKeysInnerTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ProjectBackupKeysInnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectBackupKeysInnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectBackupKeysInnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectBackupKeysInner extends ProjectBackupKeysInner {
  @override
  final String? name;
  @override
  final ProjectBackupKeysInnerTypeEnum? type;

  factory _$ProjectBackupKeysInner(
          [void Function(ProjectBackupKeysInnerBuilder)? updates]) =>
      (ProjectBackupKeysInnerBuilder()..update(updates))._build();

  _$ProjectBackupKeysInner._({this.name, this.type}) : super._();
  @override
  ProjectBackupKeysInner rebuild(
          void Function(ProjectBackupKeysInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBackupKeysInnerBuilder toBuilder() =>
      ProjectBackupKeysInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectBackupKeysInner &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectBackupKeysInner')
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class ProjectBackupKeysInnerBuilder
    implements Builder<ProjectBackupKeysInner, ProjectBackupKeysInnerBuilder> {
  _$ProjectBackupKeysInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ProjectBackupKeysInnerTypeEnum? _type;
  ProjectBackupKeysInnerTypeEnum? get type => _$this._type;
  set type(ProjectBackupKeysInnerTypeEnum? type) => _$this._type = type;

  ProjectBackupKeysInnerBuilder() {
    ProjectBackupKeysInner._defaults(this);
  }

  ProjectBackupKeysInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectBackupKeysInner other) {
    _$v = other as _$ProjectBackupKeysInner;
  }

  @override
  void update(void Function(ProjectBackupKeysInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectBackupKeysInner build() => _build();

  _$ProjectBackupKeysInner _build() {
    final _$result = _$v ??
        _$ProjectBackupKeysInner._(
          name: name,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
