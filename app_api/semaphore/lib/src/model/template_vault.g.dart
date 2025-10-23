// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_vault.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TemplateVaultTypeEnum _$templateVaultTypeEnum_password =
    const TemplateVaultTypeEnum._('password');
const TemplateVaultTypeEnum _$templateVaultTypeEnum_script =
    const TemplateVaultTypeEnum._('script');

TemplateVaultTypeEnum _$templateVaultTypeEnumValueOf(String name) {
  switch (name) {
    case 'password':
      return _$templateVaultTypeEnum_password;
    case 'script':
      return _$templateVaultTypeEnum_script;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TemplateVaultTypeEnum> _$templateVaultTypeEnumValues =
    BuiltSet<TemplateVaultTypeEnum>(const <TemplateVaultTypeEnum>[
  _$templateVaultTypeEnum_password,
  _$templateVaultTypeEnum_script,
]);

Serializer<TemplateVaultTypeEnum> _$templateVaultTypeEnumSerializer =
    _$TemplateVaultTypeEnumSerializer();

class _$TemplateVaultTypeEnumSerializer
    implements PrimitiveSerializer<TemplateVaultTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'password': 'password',
    'script': 'script',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'password': 'password',
    'script': 'script',
  };

  @override
  final Iterable<Type> types = const <Type>[TemplateVaultTypeEnum];
  @override
  final String wireName = 'TemplateVaultTypeEnum';

  @override
  Object serialize(Serializers serializers, TemplateVaultTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TemplateVaultTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TemplateVaultTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TemplateVault extends TemplateVault {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final TemplateVaultTypeEnum? type;
  @override
  final int? vaultKeyId;
  @override
  final String? script;

  factory _$TemplateVault([void Function(TemplateVaultBuilder)? updates]) =>
      (TemplateVaultBuilder()..update(updates))._build();

  _$TemplateVault._(
      {this.id, this.name, this.type, this.vaultKeyId, this.script})
      : super._();
  @override
  TemplateVault rebuild(void Function(TemplateVaultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateVaultBuilder toBuilder() => TemplateVaultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplateVault &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        vaultKeyId == other.vaultKeyId &&
        script == other.script;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, vaultKeyId.hashCode);
    _$hash = $jc(_$hash, script.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemplateVault')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('vaultKeyId', vaultKeyId)
          ..add('script', script))
        .toString();
  }
}

class TemplateVaultBuilder
    implements Builder<TemplateVault, TemplateVaultBuilder> {
  _$TemplateVault? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TemplateVaultTypeEnum? _type;
  TemplateVaultTypeEnum? get type => _$this._type;
  set type(TemplateVaultTypeEnum? type) => _$this._type = type;

  int? _vaultKeyId;
  int? get vaultKeyId => _$this._vaultKeyId;
  set vaultKeyId(int? vaultKeyId) => _$this._vaultKeyId = vaultKeyId;

  String? _script;
  String? get script => _$this._script;
  set script(String? script) => _$this._script = script;

  TemplateVaultBuilder() {
    TemplateVault._defaults(this);
  }

  TemplateVaultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _vaultKeyId = $v.vaultKeyId;
      _script = $v.script;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplateVault other) {
    _$v = other as _$TemplateVault;
  }

  @override
  void update(void Function(TemplateVaultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplateVault build() => _build();

  _$TemplateVault _build() {
    final _$result = _$v ??
        _$TemplateVault._(
          id: id,
          name: name,
          type: type,
          vaultKeyId: vaultKeyId,
          script: script,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
