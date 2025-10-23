// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_inventories_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectBackupInventoriesInnerTypeEnum
    _$projectBackupInventoriesInnerTypeEnum_static_ =
    const ProjectBackupInventoriesInnerTypeEnum._('static_');
const ProjectBackupInventoriesInnerTypeEnum
    _$projectBackupInventoriesInnerTypeEnum_staticYaml =
    const ProjectBackupInventoriesInnerTypeEnum._('staticYaml');
const ProjectBackupInventoriesInnerTypeEnum
    _$projectBackupInventoriesInnerTypeEnum_file =
    const ProjectBackupInventoriesInnerTypeEnum._('file');

ProjectBackupInventoriesInnerTypeEnum
    _$projectBackupInventoriesInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'static_':
      return _$projectBackupInventoriesInnerTypeEnum_static_;
    case 'staticYaml':
      return _$projectBackupInventoriesInnerTypeEnum_staticYaml;
    case 'file':
      return _$projectBackupInventoriesInnerTypeEnum_file;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectBackupInventoriesInnerTypeEnum>
    _$projectBackupInventoriesInnerTypeEnumValues = BuiltSet<
        ProjectBackupInventoriesInnerTypeEnum>(const <ProjectBackupInventoriesInnerTypeEnum>[
  _$projectBackupInventoriesInnerTypeEnum_static_,
  _$projectBackupInventoriesInnerTypeEnum_staticYaml,
  _$projectBackupInventoriesInnerTypeEnum_file,
]);

Serializer<ProjectBackupInventoriesInnerTypeEnum>
    _$projectBackupInventoriesInnerTypeEnumSerializer =
    _$ProjectBackupInventoriesInnerTypeEnumSerializer();

class _$ProjectBackupInventoriesInnerTypeEnumSerializer
    implements PrimitiveSerializer<ProjectBackupInventoriesInnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'static_': 'static',
    'staticYaml': 'static-yaml',
    'file': 'file',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'static': 'static_',
    'static-yaml': 'staticYaml',
    'file': 'file',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProjectBackupInventoriesInnerTypeEnum
  ];
  @override
  final String wireName = 'ProjectBackupInventoriesInnerTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ProjectBackupInventoriesInnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectBackupInventoriesInnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectBackupInventoriesInnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectBackupInventoriesInner extends ProjectBackupInventoriesInner {
  @override
  final String? name;
  @override
  final String? inventory;
  @override
  final String? sshKey;
  @override
  final String? becomeKey;
  @override
  final ProjectBackupInventoriesInnerTypeEnum? type;

  factory _$ProjectBackupInventoriesInner(
          [void Function(ProjectBackupInventoriesInnerBuilder)? updates]) =>
      (ProjectBackupInventoriesInnerBuilder()..update(updates))._build();

  _$ProjectBackupInventoriesInner._(
      {this.name, this.inventory, this.sshKey, this.becomeKey, this.type})
      : super._();
  @override
  ProjectBackupInventoriesInner rebuild(
          void Function(ProjectBackupInventoriesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBackupInventoriesInnerBuilder toBuilder() =>
      ProjectBackupInventoriesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectBackupInventoriesInner &&
        name == other.name &&
        inventory == other.inventory &&
        sshKey == other.sshKey &&
        becomeKey == other.becomeKey &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, inventory.hashCode);
    _$hash = $jc(_$hash, sshKey.hashCode);
    _$hash = $jc(_$hash, becomeKey.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectBackupInventoriesInner')
          ..add('name', name)
          ..add('inventory', inventory)
          ..add('sshKey', sshKey)
          ..add('becomeKey', becomeKey)
          ..add('type', type))
        .toString();
  }
}

class ProjectBackupInventoriesInnerBuilder
    implements
        Builder<ProjectBackupInventoriesInner,
            ProjectBackupInventoriesInnerBuilder> {
  _$ProjectBackupInventoriesInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _inventory;
  String? get inventory => _$this._inventory;
  set inventory(String? inventory) => _$this._inventory = inventory;

  String? _sshKey;
  String? get sshKey => _$this._sshKey;
  set sshKey(String? sshKey) => _$this._sshKey = sshKey;

  String? _becomeKey;
  String? get becomeKey => _$this._becomeKey;
  set becomeKey(String? becomeKey) => _$this._becomeKey = becomeKey;

  ProjectBackupInventoriesInnerTypeEnum? _type;
  ProjectBackupInventoriesInnerTypeEnum? get type => _$this._type;
  set type(ProjectBackupInventoriesInnerTypeEnum? type) => _$this._type = type;

  ProjectBackupInventoriesInnerBuilder() {
    ProjectBackupInventoriesInner._defaults(this);
  }

  ProjectBackupInventoriesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _inventory = $v.inventory;
      _sshKey = $v.sshKey;
      _becomeKey = $v.becomeKey;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectBackupInventoriesInner other) {
    _$v = other as _$ProjectBackupInventoriesInner;
  }

  @override
  void update(void Function(ProjectBackupInventoriesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectBackupInventoriesInner build() => _build();

  _$ProjectBackupInventoriesInner _build() {
    final _$result = _$v ??
        _$ProjectBackupInventoriesInner._(
          name: name,
          inventory: inventory,
          sshKey: sshKey,
          becomeKey: becomeKey,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
