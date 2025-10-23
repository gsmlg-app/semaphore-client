// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_extract_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntegrationExtractValueValueSourceEnum
    _$integrationExtractValueValueSourceEnum_body =
    const IntegrationExtractValueValueSourceEnum._('body');
const IntegrationExtractValueValueSourceEnum
    _$integrationExtractValueValueSourceEnum_header =
    const IntegrationExtractValueValueSourceEnum._('header');

IntegrationExtractValueValueSourceEnum
    _$integrationExtractValueValueSourceEnumValueOf(String name) {
  switch (name) {
    case 'body':
      return _$integrationExtractValueValueSourceEnum_body;
    case 'header':
      return _$integrationExtractValueValueSourceEnum_header;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationExtractValueValueSourceEnum>
    _$integrationExtractValueValueSourceEnumValues = BuiltSet<
        IntegrationExtractValueValueSourceEnum>(const <IntegrationExtractValueValueSourceEnum>[
  _$integrationExtractValueValueSourceEnum_body,
  _$integrationExtractValueValueSourceEnum_header,
]);

const IntegrationExtractValueBodyDataTypeEnum
    _$integrationExtractValueBodyDataTypeEnum_json =
    const IntegrationExtractValueBodyDataTypeEnum._('json');
const IntegrationExtractValueBodyDataTypeEnum
    _$integrationExtractValueBodyDataTypeEnum_xml =
    const IntegrationExtractValueBodyDataTypeEnum._('xml');
const IntegrationExtractValueBodyDataTypeEnum
    _$integrationExtractValueBodyDataTypeEnum_string =
    const IntegrationExtractValueBodyDataTypeEnum._('string');

IntegrationExtractValueBodyDataTypeEnum
    _$integrationExtractValueBodyDataTypeEnumValueOf(String name) {
  switch (name) {
    case 'json':
      return _$integrationExtractValueBodyDataTypeEnum_json;
    case 'xml':
      return _$integrationExtractValueBodyDataTypeEnum_xml;
    case 'string':
      return _$integrationExtractValueBodyDataTypeEnum_string;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationExtractValueBodyDataTypeEnum>
    _$integrationExtractValueBodyDataTypeEnumValues = BuiltSet<
        IntegrationExtractValueBodyDataTypeEnum>(const <IntegrationExtractValueBodyDataTypeEnum>[
  _$integrationExtractValueBodyDataTypeEnum_json,
  _$integrationExtractValueBodyDataTypeEnum_xml,
  _$integrationExtractValueBodyDataTypeEnum_string,
]);

const IntegrationExtractValueVariableTypeEnum
    _$integrationExtractValueVariableTypeEnum_environment =
    const IntegrationExtractValueVariableTypeEnum._('environment');
const IntegrationExtractValueVariableTypeEnum
    _$integrationExtractValueVariableTypeEnum_task =
    const IntegrationExtractValueVariableTypeEnum._('task');

IntegrationExtractValueVariableTypeEnum
    _$integrationExtractValueVariableTypeEnumValueOf(String name) {
  switch (name) {
    case 'environment':
      return _$integrationExtractValueVariableTypeEnum_environment;
    case 'task':
      return _$integrationExtractValueVariableTypeEnum_task;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationExtractValueVariableTypeEnum>
    _$integrationExtractValueVariableTypeEnumValues = BuiltSet<
        IntegrationExtractValueVariableTypeEnum>(const <IntegrationExtractValueVariableTypeEnum>[
  _$integrationExtractValueVariableTypeEnum_environment,
  _$integrationExtractValueVariableTypeEnum_task,
]);

Serializer<IntegrationExtractValueValueSourceEnum>
    _$integrationExtractValueValueSourceEnumSerializer =
    _$IntegrationExtractValueValueSourceEnumSerializer();
Serializer<IntegrationExtractValueBodyDataTypeEnum>
    _$integrationExtractValueBodyDataTypeEnumSerializer =
    _$IntegrationExtractValueBodyDataTypeEnumSerializer();
Serializer<IntegrationExtractValueVariableTypeEnum>
    _$integrationExtractValueVariableTypeEnumSerializer =
    _$IntegrationExtractValueVariableTypeEnumSerializer();

class _$IntegrationExtractValueValueSourceEnumSerializer
    implements PrimitiveSerializer<IntegrationExtractValueValueSourceEnum> {
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
    IntegrationExtractValueValueSourceEnum
  ];
  @override
  final String wireName = 'IntegrationExtractValueValueSourceEnum';

  @override
  Object serialize(Serializers serializers,
          IntegrationExtractValueValueSourceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationExtractValueValueSourceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationExtractValueValueSourceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationExtractValueBodyDataTypeEnumSerializer
    implements PrimitiveSerializer<IntegrationExtractValueBodyDataTypeEnum> {
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
    IntegrationExtractValueBodyDataTypeEnum
  ];
  @override
  final String wireName = 'IntegrationExtractValueBodyDataTypeEnum';

  @override
  Object serialize(Serializers serializers,
          IntegrationExtractValueBodyDataTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationExtractValueBodyDataTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationExtractValueBodyDataTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationExtractValueVariableTypeEnumSerializer
    implements PrimitiveSerializer<IntegrationExtractValueVariableTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'environment': 'environment',
    'task': 'task',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'environment': 'environment',
    'task': 'task',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntegrationExtractValueVariableTypeEnum
  ];
  @override
  final String wireName = 'IntegrationExtractValueVariableTypeEnum';

  @override
  Object serialize(Serializers serializers,
          IntegrationExtractValueVariableTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationExtractValueVariableTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationExtractValueVariableTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationExtractValue extends IntegrationExtractValue {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final IntegrationExtractValueValueSourceEnum? valueSource;
  @override
  final IntegrationExtractValueBodyDataTypeEnum? bodyDataType;
  @override
  final String? key;
  @override
  final String? variable;
  @override
  final IntegrationExtractValueVariableTypeEnum? variableType;
  @override
  final int? integrationId;

  factory _$IntegrationExtractValue(
          [void Function(IntegrationExtractValueBuilder)? updates]) =>
      (IntegrationExtractValueBuilder()..update(updates))._build();

  _$IntegrationExtractValue._(
      {this.id,
      this.name,
      this.valueSource,
      this.bodyDataType,
      this.key,
      this.variable,
      this.variableType,
      this.integrationId})
      : super._();
  @override
  IntegrationExtractValue rebuild(
          void Function(IntegrationExtractValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationExtractValueBuilder toBuilder() =>
      IntegrationExtractValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationExtractValue &&
        id == other.id &&
        name == other.name &&
        valueSource == other.valueSource &&
        bodyDataType == other.bodyDataType &&
        key == other.key &&
        variable == other.variable &&
        variableType == other.variableType &&
        integrationId == other.integrationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, valueSource.hashCode);
    _$hash = $jc(_$hash, bodyDataType.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, variable.hashCode);
    _$hash = $jc(_$hash, variableType.hashCode);
    _$hash = $jc(_$hash, integrationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntegrationExtractValue')
          ..add('id', id)
          ..add('name', name)
          ..add('valueSource', valueSource)
          ..add('bodyDataType', bodyDataType)
          ..add('key', key)
          ..add('variable', variable)
          ..add('variableType', variableType)
          ..add('integrationId', integrationId))
        .toString();
  }
}

class IntegrationExtractValueBuilder
    implements
        Builder<IntegrationExtractValue, IntegrationExtractValueBuilder> {
  _$IntegrationExtractValue? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  IntegrationExtractValueValueSourceEnum? _valueSource;
  IntegrationExtractValueValueSourceEnum? get valueSource =>
      _$this._valueSource;
  set valueSource(IntegrationExtractValueValueSourceEnum? valueSource) =>
      _$this._valueSource = valueSource;

  IntegrationExtractValueBodyDataTypeEnum? _bodyDataType;
  IntegrationExtractValueBodyDataTypeEnum? get bodyDataType =>
      _$this._bodyDataType;
  set bodyDataType(IntegrationExtractValueBodyDataTypeEnum? bodyDataType) =>
      _$this._bodyDataType = bodyDataType;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _variable;
  String? get variable => _$this._variable;
  set variable(String? variable) => _$this._variable = variable;

  IntegrationExtractValueVariableTypeEnum? _variableType;
  IntegrationExtractValueVariableTypeEnum? get variableType =>
      _$this._variableType;
  set variableType(IntegrationExtractValueVariableTypeEnum? variableType) =>
      _$this._variableType = variableType;

  int? _integrationId;
  int? get integrationId => _$this._integrationId;
  set integrationId(int? integrationId) =>
      _$this._integrationId = integrationId;

  IntegrationExtractValueBuilder() {
    IntegrationExtractValue._defaults(this);
  }

  IntegrationExtractValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _valueSource = $v.valueSource;
      _bodyDataType = $v.bodyDataType;
      _key = $v.key;
      _variable = $v.variable;
      _variableType = $v.variableType;
      _integrationId = $v.integrationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntegrationExtractValue other) {
    _$v = other as _$IntegrationExtractValue;
  }

  @override
  void update(void Function(IntegrationExtractValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationExtractValue build() => _build();

  _$IntegrationExtractValue _build() {
    final _$result = _$v ??
        _$IntegrationExtractValue._(
          id: id,
          name: name,
          valueSource: valueSource,
          bodyDataType: bodyDataType,
          key: key,
          variable: variable,
          variableType: variableType,
          integrationId: integrationId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
