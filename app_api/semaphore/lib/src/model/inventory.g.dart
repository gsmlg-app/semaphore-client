// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InventoryTypeEnum _$inventoryTypeEnum_static_ =
    const InventoryTypeEnum._('static_');
const InventoryTypeEnum _$inventoryTypeEnum_staticYaml =
    const InventoryTypeEnum._('staticYaml');
const InventoryTypeEnum _$inventoryTypeEnum_file =
    const InventoryTypeEnum._('file');
const InventoryTypeEnum _$inventoryTypeEnum_terraformWorkspace =
    const InventoryTypeEnum._('terraformWorkspace');

InventoryTypeEnum _$inventoryTypeEnumValueOf(String name) {
  switch (name) {
    case 'static_':
      return _$inventoryTypeEnum_static_;
    case 'staticYaml':
      return _$inventoryTypeEnum_staticYaml;
    case 'file':
      return _$inventoryTypeEnum_file;
    case 'terraformWorkspace':
      return _$inventoryTypeEnum_terraformWorkspace;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InventoryTypeEnum> _$inventoryTypeEnumValues =
    BuiltSet<InventoryTypeEnum>(const <InventoryTypeEnum>[
  _$inventoryTypeEnum_static_,
  _$inventoryTypeEnum_staticYaml,
  _$inventoryTypeEnum_file,
  _$inventoryTypeEnum_terraformWorkspace,
]);

Serializer<InventoryTypeEnum> _$inventoryTypeEnumSerializer =
    _$InventoryTypeEnumSerializer();

class _$InventoryTypeEnumSerializer
    implements PrimitiveSerializer<InventoryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'static_': 'static',
    'staticYaml': 'static-yaml',
    'file': 'file',
    'terraformWorkspace': 'terraform-workspace',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'static': 'static_',
    'static-yaml': 'staticYaml',
    'file': 'file',
    'terraform-workspace': 'terraformWorkspace',
  };

  @override
  final Iterable<Type> types = const <Type>[InventoryTypeEnum];
  @override
  final String wireName = 'InventoryTypeEnum';

  @override
  Object serialize(Serializers serializers, InventoryTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InventoryTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InventoryTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Inventory extends Inventory {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? projectId;
  @override
  final String? inventory;
  @override
  final int? sshKeyId;
  @override
  final int? becomeKeyId;
  @override
  final int? repositoryId;
  @override
  final InventoryTypeEnum? type;

  factory _$Inventory([void Function(InventoryBuilder)? updates]) =>
      (InventoryBuilder()..update(updates))._build();

  _$Inventory._(
      {this.id,
      this.name,
      this.projectId,
      this.inventory,
      this.sshKeyId,
      this.becomeKeyId,
      this.repositoryId,
      this.type})
      : super._();
  @override
  Inventory rebuild(void Function(InventoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventoryBuilder toBuilder() => InventoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Inventory &&
        id == other.id &&
        name == other.name &&
        projectId == other.projectId &&
        inventory == other.inventory &&
        sshKeyId == other.sshKeyId &&
        becomeKeyId == other.becomeKeyId &&
        repositoryId == other.repositoryId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, inventory.hashCode);
    _$hash = $jc(_$hash, sshKeyId.hashCode);
    _$hash = $jc(_$hash, becomeKeyId.hashCode);
    _$hash = $jc(_$hash, repositoryId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Inventory')
          ..add('id', id)
          ..add('name', name)
          ..add('projectId', projectId)
          ..add('inventory', inventory)
          ..add('sshKeyId', sshKeyId)
          ..add('becomeKeyId', becomeKeyId)
          ..add('repositoryId', repositoryId)
          ..add('type', type))
        .toString();
  }
}

class InventoryBuilder implements Builder<Inventory, InventoryBuilder> {
  _$Inventory? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  String? _inventory;
  String? get inventory => _$this._inventory;
  set inventory(String? inventory) => _$this._inventory = inventory;

  int? _sshKeyId;
  int? get sshKeyId => _$this._sshKeyId;
  set sshKeyId(int? sshKeyId) => _$this._sshKeyId = sshKeyId;

  int? _becomeKeyId;
  int? get becomeKeyId => _$this._becomeKeyId;
  set becomeKeyId(int? becomeKeyId) => _$this._becomeKeyId = becomeKeyId;

  int? _repositoryId;
  int? get repositoryId => _$this._repositoryId;
  set repositoryId(int? repositoryId) => _$this._repositoryId = repositoryId;

  InventoryTypeEnum? _type;
  InventoryTypeEnum? get type => _$this._type;
  set type(InventoryTypeEnum? type) => _$this._type = type;

  InventoryBuilder() {
    Inventory._defaults(this);
  }

  InventoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _projectId = $v.projectId;
      _inventory = $v.inventory;
      _sshKeyId = $v.sshKeyId;
      _becomeKeyId = $v.becomeKeyId;
      _repositoryId = $v.repositoryId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Inventory other) {
    _$v = other as _$Inventory;
  }

  @override
  void update(void Function(InventoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Inventory build() => _build();

  _$Inventory _build() {
    final _$result = _$v ??
        _$Inventory._(
          id: id,
          name: name,
          projectId: projectId,
          inventory: inventory,
          sshKeyId: sshKeyId,
          becomeKeyId: becomeKeyId,
          repositoryId: repositoryId,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
