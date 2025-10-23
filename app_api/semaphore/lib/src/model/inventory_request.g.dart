// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InventoryRequestTypeEnum _$inventoryRequestTypeEnum_static_ =
    const InventoryRequestTypeEnum._('static_');
const InventoryRequestTypeEnum _$inventoryRequestTypeEnum_staticYaml =
    const InventoryRequestTypeEnum._('staticYaml');
const InventoryRequestTypeEnum _$inventoryRequestTypeEnum_file =
    const InventoryRequestTypeEnum._('file');
const InventoryRequestTypeEnum _$inventoryRequestTypeEnum_terraformWorkspace =
    const InventoryRequestTypeEnum._('terraformWorkspace');

InventoryRequestTypeEnum _$inventoryRequestTypeEnumValueOf(String name) {
  switch (name) {
    case 'static_':
      return _$inventoryRequestTypeEnum_static_;
    case 'staticYaml':
      return _$inventoryRequestTypeEnum_staticYaml;
    case 'file':
      return _$inventoryRequestTypeEnum_file;
    case 'terraformWorkspace':
      return _$inventoryRequestTypeEnum_terraformWorkspace;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InventoryRequestTypeEnum> _$inventoryRequestTypeEnumValues =
    BuiltSet<InventoryRequestTypeEnum>(const <InventoryRequestTypeEnum>[
  _$inventoryRequestTypeEnum_static_,
  _$inventoryRequestTypeEnum_staticYaml,
  _$inventoryRequestTypeEnum_file,
  _$inventoryRequestTypeEnum_terraformWorkspace,
]);

Serializer<InventoryRequestTypeEnum> _$inventoryRequestTypeEnumSerializer =
    _$InventoryRequestTypeEnumSerializer();

class _$InventoryRequestTypeEnumSerializer
    implements PrimitiveSerializer<InventoryRequestTypeEnum> {
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
  final Iterable<Type> types = const <Type>[InventoryRequestTypeEnum];
  @override
  final String wireName = 'InventoryRequestTypeEnum';

  @override
  Object serialize(Serializers serializers, InventoryRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InventoryRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InventoryRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InventoryRequest extends InventoryRequest {
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
  final InventoryRequestTypeEnum? type;

  factory _$InventoryRequest(
          [void Function(InventoryRequestBuilder)? updates]) =>
      (InventoryRequestBuilder()..update(updates))._build();

  _$InventoryRequest._(
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
  InventoryRequest rebuild(void Function(InventoryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventoryRequestBuilder toBuilder() =>
      InventoryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventoryRequest &&
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
    return (newBuiltValueToStringHelper(r'InventoryRequest')
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

class InventoryRequestBuilder
    implements Builder<InventoryRequest, InventoryRequestBuilder> {
  _$InventoryRequest? _$v;

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

  InventoryRequestTypeEnum? _type;
  InventoryRequestTypeEnum? get type => _$this._type;
  set type(InventoryRequestTypeEnum? type) => _$this._type = type;

  InventoryRequestBuilder() {
    InventoryRequest._defaults(this);
  }

  InventoryRequestBuilder get _$this {
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
  void replace(InventoryRequest other) {
    _$v = other as _$InventoryRequest;
  }

  @override
  void update(void Function(InventoryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventoryRequest build() => _build();

  _$InventoryRequest _build() {
    final _$result = _$v ??
        _$InventoryRequest._(
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
