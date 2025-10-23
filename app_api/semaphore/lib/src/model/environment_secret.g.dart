// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment_secret.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EnvironmentSecretTypeEnum _$environmentSecretTypeEnum_env =
    const EnvironmentSecretTypeEnum._('env');
const EnvironmentSecretTypeEnum _$environmentSecretTypeEnum_var_ =
    const EnvironmentSecretTypeEnum._('var_');

EnvironmentSecretTypeEnum _$environmentSecretTypeEnumValueOf(String name) {
  switch (name) {
    case 'env':
      return _$environmentSecretTypeEnum_env;
    case 'var_':
      return _$environmentSecretTypeEnum_var_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EnvironmentSecretTypeEnum> _$environmentSecretTypeEnumValues =
    BuiltSet<EnvironmentSecretTypeEnum>(const <EnvironmentSecretTypeEnum>[
  _$environmentSecretTypeEnum_env,
  _$environmentSecretTypeEnum_var_,
]);

Serializer<EnvironmentSecretTypeEnum> _$environmentSecretTypeEnumSerializer =
    _$EnvironmentSecretTypeEnumSerializer();

class _$EnvironmentSecretTypeEnumSerializer
    implements PrimitiveSerializer<EnvironmentSecretTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'env': 'env',
    'var_': 'var',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'env': 'env',
    'var': 'var_',
  };

  @override
  final Iterable<Type> types = const <Type>[EnvironmentSecretTypeEnum];
  @override
  final String wireName = 'EnvironmentSecretTypeEnum';

  @override
  Object serialize(Serializers serializers, EnvironmentSecretTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EnvironmentSecretTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EnvironmentSecretTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EnvironmentSecret extends EnvironmentSecret {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final EnvironmentSecretTypeEnum? type;

  factory _$EnvironmentSecret(
          [void Function(EnvironmentSecretBuilder)? updates]) =>
      (EnvironmentSecretBuilder()..update(updates))._build();

  _$EnvironmentSecret._({this.id, this.name, this.type}) : super._();
  @override
  EnvironmentSecret rebuild(void Function(EnvironmentSecretBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentSecretBuilder toBuilder() =>
      EnvironmentSecretBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnvironmentSecret &&
        id == other.id &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnvironmentSecret')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class EnvironmentSecretBuilder
    implements Builder<EnvironmentSecret, EnvironmentSecretBuilder> {
  _$EnvironmentSecret? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EnvironmentSecretTypeEnum? _type;
  EnvironmentSecretTypeEnum? get type => _$this._type;
  set type(EnvironmentSecretTypeEnum? type) => _$this._type = type;

  EnvironmentSecretBuilder() {
    EnvironmentSecret._defaults(this);
  }

  EnvironmentSecretBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnvironmentSecret other) {
    _$v = other as _$EnvironmentSecret;
  }

  @override
  void update(void Function(EnvironmentSecretBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnvironmentSecret build() => _build();

  _$EnvironmentSecret _build() {
    final _$result = _$v ??
        _$EnvironmentSecret._(
          id: id,
          name: name,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
