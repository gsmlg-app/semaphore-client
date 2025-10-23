// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_matcher.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntegrationMatcherMatchTypeEnum _$integrationMatcherMatchTypeEnum_body =
    const IntegrationMatcherMatchTypeEnum._('body');
const IntegrationMatcherMatchTypeEnum _$integrationMatcherMatchTypeEnum_header =
    const IntegrationMatcherMatchTypeEnum._('header');

IntegrationMatcherMatchTypeEnum _$integrationMatcherMatchTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'body':
      return _$integrationMatcherMatchTypeEnum_body;
    case 'header':
      return _$integrationMatcherMatchTypeEnum_header;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationMatcherMatchTypeEnum>
    _$integrationMatcherMatchTypeEnumValues = BuiltSet<
        IntegrationMatcherMatchTypeEnum>(const <IntegrationMatcherMatchTypeEnum>[
  _$integrationMatcherMatchTypeEnum_body,
  _$integrationMatcherMatchTypeEnum_header,
]);

const IntegrationMatcherMethodEnum _$integrationMatcherMethodEnum_equals =
    const IntegrationMatcherMethodEnum._('equals');
const IntegrationMatcherMethodEnum _$integrationMatcherMethodEnum_unequals =
    const IntegrationMatcherMethodEnum._('unequals');
const IntegrationMatcherMethodEnum _$integrationMatcherMethodEnum_contains =
    const IntegrationMatcherMethodEnum._('contains');

IntegrationMatcherMethodEnum _$integrationMatcherMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'equals':
      return _$integrationMatcherMethodEnum_equals;
    case 'unequals':
      return _$integrationMatcherMethodEnum_unequals;
    case 'contains':
      return _$integrationMatcherMethodEnum_contains;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationMatcherMethodEnum>
    _$integrationMatcherMethodEnumValues =
    BuiltSet<IntegrationMatcherMethodEnum>(const <IntegrationMatcherMethodEnum>[
  _$integrationMatcherMethodEnum_equals,
  _$integrationMatcherMethodEnum_unequals,
  _$integrationMatcherMethodEnum_contains,
]);

const IntegrationMatcherBodyDataTypeEnum
    _$integrationMatcherBodyDataTypeEnum_json =
    const IntegrationMatcherBodyDataTypeEnum._('json');
const IntegrationMatcherBodyDataTypeEnum
    _$integrationMatcherBodyDataTypeEnum_xml =
    const IntegrationMatcherBodyDataTypeEnum._('xml');
const IntegrationMatcherBodyDataTypeEnum
    _$integrationMatcherBodyDataTypeEnum_string =
    const IntegrationMatcherBodyDataTypeEnum._('string');

IntegrationMatcherBodyDataTypeEnum _$integrationMatcherBodyDataTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'json':
      return _$integrationMatcherBodyDataTypeEnum_json;
    case 'xml':
      return _$integrationMatcherBodyDataTypeEnum_xml;
    case 'string':
      return _$integrationMatcherBodyDataTypeEnum_string;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationMatcherBodyDataTypeEnum>
    _$integrationMatcherBodyDataTypeEnumValues = BuiltSet<
        IntegrationMatcherBodyDataTypeEnum>(const <IntegrationMatcherBodyDataTypeEnum>[
  _$integrationMatcherBodyDataTypeEnum_json,
  _$integrationMatcherBodyDataTypeEnum_xml,
  _$integrationMatcherBodyDataTypeEnum_string,
]);

Serializer<IntegrationMatcherMatchTypeEnum>
    _$integrationMatcherMatchTypeEnumSerializer =
    _$IntegrationMatcherMatchTypeEnumSerializer();
Serializer<IntegrationMatcherMethodEnum>
    _$integrationMatcherMethodEnumSerializer =
    _$IntegrationMatcherMethodEnumSerializer();
Serializer<IntegrationMatcherBodyDataTypeEnum>
    _$integrationMatcherBodyDataTypeEnumSerializer =
    _$IntegrationMatcherBodyDataTypeEnumSerializer();

class _$IntegrationMatcherMatchTypeEnumSerializer
    implements PrimitiveSerializer<IntegrationMatcherMatchTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'body': 'body',
    'header': 'header',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'body': 'body',
    'header': 'header',
  };

  @override
  final Iterable<Type> types = const <Type>[IntegrationMatcherMatchTypeEnum];
  @override
  final String wireName = 'IntegrationMatcherMatchTypeEnum';

  @override
  Object serialize(
          Serializers serializers, IntegrationMatcherMatchTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationMatcherMatchTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationMatcherMatchTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationMatcherMethodEnumSerializer
    implements PrimitiveSerializer<IntegrationMatcherMethodEnum> {
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
  final Iterable<Type> types = const <Type>[IntegrationMatcherMethodEnum];
  @override
  final String wireName = 'IntegrationMatcherMethodEnum';

  @override
  Object serialize(Serializers serializers, IntegrationMatcherMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationMatcherMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationMatcherMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationMatcherBodyDataTypeEnumSerializer
    implements PrimitiveSerializer<IntegrationMatcherBodyDataTypeEnum> {
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
  final Iterable<Type> types = const <Type>[IntegrationMatcherBodyDataTypeEnum];
  @override
  final String wireName = 'IntegrationMatcherBodyDataTypeEnum';

  @override
  Object serialize(
          Serializers serializers, IntegrationMatcherBodyDataTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationMatcherBodyDataTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationMatcherBodyDataTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationMatcher extends IntegrationMatcher {
  @override
  final int? id;
  @override
  final int? integrationId;
  @override
  final String? name;
  @override
  final IntegrationMatcherMatchTypeEnum? matchType;
  @override
  final IntegrationMatcherMethodEnum? method;
  @override
  final IntegrationMatcherBodyDataTypeEnum? bodyDataType;
  @override
  final String? key;
  @override
  final String? value;

  factory _$IntegrationMatcher(
          [void Function(IntegrationMatcherBuilder)? updates]) =>
      (IntegrationMatcherBuilder()..update(updates))._build();

  _$IntegrationMatcher._(
      {this.id,
      this.integrationId,
      this.name,
      this.matchType,
      this.method,
      this.bodyDataType,
      this.key,
      this.value})
      : super._();
  @override
  IntegrationMatcher rebuild(
          void Function(IntegrationMatcherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationMatcherBuilder toBuilder() =>
      IntegrationMatcherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationMatcher &&
        id == other.id &&
        integrationId == other.integrationId &&
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
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, integrationId.hashCode);
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
    return (newBuiltValueToStringHelper(r'IntegrationMatcher')
          ..add('id', id)
          ..add('integrationId', integrationId)
          ..add('name', name)
          ..add('matchType', matchType)
          ..add('method', method)
          ..add('bodyDataType', bodyDataType)
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class IntegrationMatcherBuilder
    implements Builder<IntegrationMatcher, IntegrationMatcherBuilder> {
  _$IntegrationMatcher? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _integrationId;
  int? get integrationId => _$this._integrationId;
  set integrationId(int? integrationId) =>
      _$this._integrationId = integrationId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  IntegrationMatcherMatchTypeEnum? _matchType;
  IntegrationMatcherMatchTypeEnum? get matchType => _$this._matchType;
  set matchType(IntegrationMatcherMatchTypeEnum? matchType) =>
      _$this._matchType = matchType;

  IntegrationMatcherMethodEnum? _method;
  IntegrationMatcherMethodEnum? get method => _$this._method;
  set method(IntegrationMatcherMethodEnum? method) => _$this._method = method;

  IntegrationMatcherBodyDataTypeEnum? _bodyDataType;
  IntegrationMatcherBodyDataTypeEnum? get bodyDataType => _$this._bodyDataType;
  set bodyDataType(IntegrationMatcherBodyDataTypeEnum? bodyDataType) =>
      _$this._bodyDataType = bodyDataType;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  IntegrationMatcherBuilder() {
    IntegrationMatcher._defaults(this);
  }

  IntegrationMatcherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _integrationId = $v.integrationId;
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
  void replace(IntegrationMatcher other) {
    _$v = other as _$IntegrationMatcher;
  }

  @override
  void update(void Function(IntegrationMatcherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationMatcher build() => _build();

  _$IntegrationMatcher _build() {
    final _$result = _$v ??
        _$IntegrationMatcher._(
          id: id,
          integrationId: integrationId,
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
