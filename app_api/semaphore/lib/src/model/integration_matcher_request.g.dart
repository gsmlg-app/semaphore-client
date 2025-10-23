// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_matcher_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntegrationMatcherRequestMatchTypeEnum
    _$integrationMatcherRequestMatchTypeEnum_body =
    const IntegrationMatcherRequestMatchTypeEnum._('body');
const IntegrationMatcherRequestMatchTypeEnum
    _$integrationMatcherRequestMatchTypeEnum_header =
    const IntegrationMatcherRequestMatchTypeEnum._('header');

IntegrationMatcherRequestMatchTypeEnum
    _$integrationMatcherRequestMatchTypeEnumValueOf(String name) {
  switch (name) {
    case 'body':
      return _$integrationMatcherRequestMatchTypeEnum_body;
    case 'header':
      return _$integrationMatcherRequestMatchTypeEnum_header;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationMatcherRequestMatchTypeEnum>
    _$integrationMatcherRequestMatchTypeEnumValues = BuiltSet<
        IntegrationMatcherRequestMatchTypeEnum>(const <IntegrationMatcherRequestMatchTypeEnum>[
  _$integrationMatcherRequestMatchTypeEnum_body,
  _$integrationMatcherRequestMatchTypeEnum_header,
]);

const IntegrationMatcherRequestMethodEnum
    _$integrationMatcherRequestMethodEnum_equals =
    const IntegrationMatcherRequestMethodEnum._('equals');
const IntegrationMatcherRequestMethodEnum
    _$integrationMatcherRequestMethodEnum_unequals =
    const IntegrationMatcherRequestMethodEnum._('unequals');
const IntegrationMatcherRequestMethodEnum
    _$integrationMatcherRequestMethodEnum_contains =
    const IntegrationMatcherRequestMethodEnum._('contains');

IntegrationMatcherRequestMethodEnum
    _$integrationMatcherRequestMethodEnumValueOf(String name) {
  switch (name) {
    case 'equals':
      return _$integrationMatcherRequestMethodEnum_equals;
    case 'unequals':
      return _$integrationMatcherRequestMethodEnum_unequals;
    case 'contains':
      return _$integrationMatcherRequestMethodEnum_contains;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationMatcherRequestMethodEnum>
    _$integrationMatcherRequestMethodEnumValues = BuiltSet<
        IntegrationMatcherRequestMethodEnum>(const <IntegrationMatcherRequestMethodEnum>[
  _$integrationMatcherRequestMethodEnum_equals,
  _$integrationMatcherRequestMethodEnum_unequals,
  _$integrationMatcherRequestMethodEnum_contains,
]);

const IntegrationMatcherRequestBodyDataTypeEnum
    _$integrationMatcherRequestBodyDataTypeEnum_json =
    const IntegrationMatcherRequestBodyDataTypeEnum._('json');
const IntegrationMatcherRequestBodyDataTypeEnum
    _$integrationMatcherRequestBodyDataTypeEnum_xml =
    const IntegrationMatcherRequestBodyDataTypeEnum._('xml');
const IntegrationMatcherRequestBodyDataTypeEnum
    _$integrationMatcherRequestBodyDataTypeEnum_string =
    const IntegrationMatcherRequestBodyDataTypeEnum._('string');

IntegrationMatcherRequestBodyDataTypeEnum
    _$integrationMatcherRequestBodyDataTypeEnumValueOf(String name) {
  switch (name) {
    case 'json':
      return _$integrationMatcherRequestBodyDataTypeEnum_json;
    case 'xml':
      return _$integrationMatcherRequestBodyDataTypeEnum_xml;
    case 'string':
      return _$integrationMatcherRequestBodyDataTypeEnum_string;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationMatcherRequestBodyDataTypeEnum>
    _$integrationMatcherRequestBodyDataTypeEnumValues = BuiltSet<
        IntegrationMatcherRequestBodyDataTypeEnum>(const <IntegrationMatcherRequestBodyDataTypeEnum>[
  _$integrationMatcherRequestBodyDataTypeEnum_json,
  _$integrationMatcherRequestBodyDataTypeEnum_xml,
  _$integrationMatcherRequestBodyDataTypeEnum_string,
]);

Serializer<IntegrationMatcherRequestMatchTypeEnum>
    _$integrationMatcherRequestMatchTypeEnumSerializer =
    _$IntegrationMatcherRequestMatchTypeEnumSerializer();
Serializer<IntegrationMatcherRequestMethodEnum>
    _$integrationMatcherRequestMethodEnumSerializer =
    _$IntegrationMatcherRequestMethodEnumSerializer();
Serializer<IntegrationMatcherRequestBodyDataTypeEnum>
    _$integrationMatcherRequestBodyDataTypeEnumSerializer =
    _$IntegrationMatcherRequestBodyDataTypeEnumSerializer();

class _$IntegrationMatcherRequestMatchTypeEnumSerializer
    implements PrimitiveSerializer<IntegrationMatcherRequestMatchTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'body': 'body',
    'header': 'header',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'body': 'body',
    'header': 'header',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntegrationMatcherRequestMatchTypeEnum
  ];
  @override
  final String wireName = 'IntegrationMatcherRequestMatchTypeEnum';

  @override
  Object serialize(Serializers serializers,
          IntegrationMatcherRequestMatchTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationMatcherRequestMatchTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationMatcherRequestMatchTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationMatcherRequestMethodEnumSerializer
    implements PrimitiveSerializer<IntegrationMatcherRequestMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'equals': 'equals',
    'unequals': 'unequals',
    'contains': 'contains',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'equals': 'equals',
    'unequals': 'unequals',
    'contains': 'contains',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntegrationMatcherRequestMethodEnum
  ];
  @override
  final String wireName = 'IntegrationMatcherRequestMethodEnum';

  @override
  Object serialize(
          Serializers serializers, IntegrationMatcherRequestMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationMatcherRequestMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationMatcherRequestMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationMatcherRequestBodyDataTypeEnumSerializer
    implements PrimitiveSerializer<IntegrationMatcherRequestBodyDataTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'json': 'json',
    'xml': 'xml',
    'string': 'string',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'json': 'json',
    'xml': 'xml',
    'string': 'string',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntegrationMatcherRequestBodyDataTypeEnum
  ];
  @override
  final String wireName = 'IntegrationMatcherRequestBodyDataTypeEnum';

  @override
  Object serialize(Serializers serializers,
          IntegrationMatcherRequestBodyDataTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationMatcherRequestBodyDataTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationMatcherRequestBodyDataTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationMatcherRequest extends IntegrationMatcherRequest {
  @override
  final String? name;
  @override
  final IntegrationMatcherRequestMatchTypeEnum? matchType;
  @override
  final IntegrationMatcherRequestMethodEnum? method;
  @override
  final IntegrationMatcherRequestBodyDataTypeEnum? bodyDataType;
  @override
  final String? key;
  @override
  final String? value;

  factory _$IntegrationMatcherRequest(
          [void Function(IntegrationMatcherRequestBuilder)? updates]) =>
      (IntegrationMatcherRequestBuilder()..update(updates))._build();

  _$IntegrationMatcherRequest._(
      {this.name,
      this.matchType,
      this.method,
      this.bodyDataType,
      this.key,
      this.value})
      : super._();
  @override
  IntegrationMatcherRequest rebuild(
          void Function(IntegrationMatcherRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationMatcherRequestBuilder toBuilder() =>
      IntegrationMatcherRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationMatcherRequest &&
        name == other.name &&
        matchType == other.matchType &&
        method == other.method &&
        bodyDataType == other.bodyDataType &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, matchType.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, bodyDataType.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntegrationMatcherRequest')
          ..add('name', name)
          ..add('matchType', matchType)
          ..add('method', method)
          ..add('bodyDataType', bodyDataType)
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class IntegrationMatcherRequestBuilder
    implements
        Builder<IntegrationMatcherRequest, IntegrationMatcherRequestBuilder> {
  _$IntegrationMatcherRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  IntegrationMatcherRequestMatchTypeEnum? _matchType;
  IntegrationMatcherRequestMatchTypeEnum? get matchType => _$this._matchType;
  set matchType(IntegrationMatcherRequestMatchTypeEnum? matchType) =>
      _$this._matchType = matchType;

  IntegrationMatcherRequestMethodEnum? _method;
  IntegrationMatcherRequestMethodEnum? get method => _$this._method;
  set method(IntegrationMatcherRequestMethodEnum? method) =>
      _$this._method = method;

  IntegrationMatcherRequestBodyDataTypeEnum? _bodyDataType;
  IntegrationMatcherRequestBodyDataTypeEnum? get bodyDataType =>
      _$this._bodyDataType;
  set bodyDataType(IntegrationMatcherRequestBodyDataTypeEnum? bodyDataType) =>
      _$this._bodyDataType = bodyDataType;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  IntegrationMatcherRequestBuilder() {
    IntegrationMatcherRequest._defaults(this);
  }

  IntegrationMatcherRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _matchType = $v.matchType;
      _method = $v.method;
      _bodyDataType = $v.bodyDataType;
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntegrationMatcherRequest other) {
    _$v = other as _$IntegrationMatcherRequest;
  }

  @override
  void update(void Function(IntegrationMatcherRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationMatcherRequest build() => _build();

  _$IntegrationMatcherRequest _build() {
    final _$result = _$v ??
        _$IntegrationMatcherRequest._(
          name: name,
          matchType: matchType,
          method: method,
          bodyDataType: bodyDataType,
          key: key,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
