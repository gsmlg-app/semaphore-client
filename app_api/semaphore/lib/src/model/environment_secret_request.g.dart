// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment_secret_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EnvironmentSecretRequestTypeEnum _$environmentSecretRequestTypeEnum_env =
    const EnvironmentSecretRequestTypeEnum._('env');
const EnvironmentSecretRequestTypeEnum _$environmentSecretRequestTypeEnum_var_ =
    const EnvironmentSecretRequestTypeEnum._('var_');

EnvironmentSecretRequestTypeEnum _$environmentSecretRequestTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'env':
      return _$environmentSecretRequestTypeEnum_env;
    case 'var_':
      return _$environmentSecretRequestTypeEnum_var_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EnvironmentSecretRequestTypeEnum>
    _$environmentSecretRequestTypeEnumValues = BuiltSet<
        EnvironmentSecretRequestTypeEnum>(const <EnvironmentSecretRequestTypeEnum>[
  _$environmentSecretRequestTypeEnum_env,
  _$environmentSecretRequestTypeEnum_var_,
]);

const EnvironmentSecretRequestOperationEnum
    _$environmentSecretRequestOperationEnum_create =
    const EnvironmentSecretRequestOperationEnum._('create');
const EnvironmentSecretRequestOperationEnum
    _$environmentSecretRequestOperationEnum_update =
    const EnvironmentSecretRequestOperationEnum._('update');
const EnvironmentSecretRequestOperationEnum
    _$environmentSecretRequestOperationEnum_delete =
    const EnvironmentSecretRequestOperationEnum._('delete');

EnvironmentSecretRequestOperationEnum
    _$environmentSecretRequestOperationEnumValueOf(String name) {
  switch (name) {
    case 'create':
      return _$environmentSecretRequestOperationEnum_create;
    case 'update':
      return _$environmentSecretRequestOperationEnum_update;
    case 'delete':
      return _$environmentSecretRequestOperationEnum_delete;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EnvironmentSecretRequestOperationEnum>
    _$environmentSecretRequestOperationEnumValues = BuiltSet<
        EnvironmentSecretRequestOperationEnum>(const <EnvironmentSecretRequestOperationEnum>[
  _$environmentSecretRequestOperationEnum_create,
  _$environmentSecretRequestOperationEnum_update,
  _$environmentSecretRequestOperationEnum_delete,
]);

Serializer<EnvironmentSecretRequestTypeEnum>
    _$environmentSecretRequestTypeEnumSerializer =
    _$EnvironmentSecretRequestTypeEnumSerializer();
Serializer<EnvironmentSecretRequestOperationEnum>
    _$environmentSecretRequestOperationEnumSerializer =
    _$EnvironmentSecretRequestOperationEnumSerializer();

class _$EnvironmentSecretRequestTypeEnumSerializer
    implements PrimitiveSerializer<EnvironmentSecretRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'env': 'env',
    'var_': 'var',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'env': 'env',
    'var': 'var_',
  };

  @override
  final Iterable<Type> types = const <Type>[EnvironmentSecretRequestTypeEnum];
  @override
  final String wireName = 'EnvironmentSecretRequestTypeEnum';

  @override
  Object serialize(
          Serializers serializers, EnvironmentSecretRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EnvironmentSecretRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EnvironmentSecretRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EnvironmentSecretRequestOperationEnumSerializer
    implements PrimitiveSerializer<EnvironmentSecretRequestOperationEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'create': 'create',
    'update': 'update',
    'delete': 'delete',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'create': 'create',
    'update': 'update',
    'delete': 'delete',
  };

  @override
  final Iterable<Type> types = const <Type>[
    EnvironmentSecretRequestOperationEnum
  ];
  @override
  final String wireName = 'EnvironmentSecretRequestOperationEnum';

  @override
  Object serialize(
          Serializers serializers, EnvironmentSecretRequestOperationEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EnvironmentSecretRequestOperationEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EnvironmentSecretRequestOperationEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EnvironmentSecretRequest extends EnvironmentSecretRequest {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? secret;
  @override
  final EnvironmentSecretRequestTypeEnum? type;
  @override
  final EnvironmentSecretRequestOperationEnum? operation;

  factory _$EnvironmentSecretRequest(
          [void Function(EnvironmentSecretRequestBuilder)? updates]) =>
      (EnvironmentSecretRequestBuilder()..update(updates))._build();

  _$EnvironmentSecretRequest._(
      {this.id, this.name, this.secret, this.type, this.operation})
      : super._();
  @override
  EnvironmentSecretRequest rebuild(
          void Function(EnvironmentSecretRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnvironmentSecretRequestBuilder toBuilder() =>
      EnvironmentSecretRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnvironmentSecretRequest &&
        id == other.id &&
        name == other.name &&
        secret == other.secret &&
        type == other.type &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, secret.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnvironmentSecretRequest')
          ..add('id', id)
          ..add('name', name)
          ..add('secret', secret)
          ..add('type', type)
          ..add('operation', operation))
        .toString();
  }
}

class EnvironmentSecretRequestBuilder
    implements
        Builder<EnvironmentSecretRequest, EnvironmentSecretRequestBuilder> {
  _$EnvironmentSecretRequest? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _secret;
  String? get secret => _$this._secret;
  set secret(String? secret) => _$this._secret = secret;

  EnvironmentSecretRequestTypeEnum? _type;
  EnvironmentSecretRequestTypeEnum? get type => _$this._type;
  set type(EnvironmentSecretRequestTypeEnum? type) => _$this._type = type;

  EnvironmentSecretRequestOperationEnum? _operation;
  EnvironmentSecretRequestOperationEnum? get operation => _$this._operation;
  set operation(EnvironmentSecretRequestOperationEnum? operation) =>
      _$this._operation = operation;

  EnvironmentSecretRequestBuilder() {
    EnvironmentSecretRequest._defaults(this);
  }

  EnvironmentSecretRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _secret = $v.secret;
      _type = $v.type;
      _operation = $v.operation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnvironmentSecretRequest other) {
    _$v = other as _$EnvironmentSecretRequest;
  }

  @override
  void update(void Function(EnvironmentSecretRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnvironmentSecretRequest build() => _build();

  _$EnvironmentSecretRequest _build() {
    final _$result = _$v ??
        _$EnvironmentSecretRequest._(
          id: id,
          name: name,
          secret: secret,
          type: type,
          operation: operation,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
