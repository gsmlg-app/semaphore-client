// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_extract_value_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntegrationExtractValueRequestValueSourceEnum
    _$integrationExtractValueRequestValueSourceEnum_body =
    const IntegrationExtractValueRequestValueSourceEnum._('body');
const IntegrationExtractValueRequestValueSourceEnum
    _$integrationExtractValueRequestValueSourceEnum_header =
    const IntegrationExtractValueRequestValueSourceEnum._('header');

IntegrationExtractValueRequestValueSourceEnum
    _$integrationExtractValueRequestValueSourceEnumValueOf(String name) {
  switch (name) {
    case 'body':
      return _$integrationExtractValueRequestValueSourceEnum_body;
    case 'header':
      return _$integrationExtractValueRequestValueSourceEnum_header;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationExtractValueRequestValueSourceEnum>
    _$integrationExtractValueRequestValueSourceEnumValues = BuiltSet<
        IntegrationExtractValueRequestValueSourceEnum>(const <IntegrationExtractValueRequestValueSourceEnum>[
  _$integrationExtractValueRequestValueSourceEnum_body,
  _$integrationExtractValueRequestValueSourceEnum_header,
]);

const IntegrationExtractValueRequestBodyDataTypeEnum
    _$integrationExtractValueRequestBodyDataTypeEnum_json =
    const IntegrationExtractValueRequestBodyDataTypeEnum._('json');
const IntegrationExtractValueRequestBodyDataTypeEnum
    _$integrationExtractValueRequestBodyDataTypeEnum_xml =
    const IntegrationExtractValueRequestBodyDataTypeEnum._('xml');
const IntegrationExtractValueRequestBodyDataTypeEnum
    _$integrationExtractValueRequestBodyDataTypeEnum_string =
    const IntegrationExtractValueRequestBodyDataTypeEnum._('string');

IntegrationExtractValueRequestBodyDataTypeEnum
    _$integrationExtractValueRequestBodyDataTypeEnumValueOf(String name) {
  switch (name) {
    case 'json':
      return _$integrationExtractValueRequestBodyDataTypeEnum_json;
    case 'xml':
      return _$integrationExtractValueRequestBodyDataTypeEnum_xml;
    case 'string':
      return _$integrationExtractValueRequestBodyDataTypeEnum_string;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationExtractValueRequestBodyDataTypeEnum>
    _$integrationExtractValueRequestBodyDataTypeEnumValues = BuiltSet<
        IntegrationExtractValueRequestBodyDataTypeEnum>(const <IntegrationExtractValueRequestBodyDataTypeEnum>[
  _$integrationExtractValueRequestBodyDataTypeEnum_json,
  _$integrationExtractValueRequestBodyDataTypeEnum_xml,
  _$integrationExtractValueRequestBodyDataTypeEnum_string,
]);

const IntegrationExtractValueRequestVariableTypeEnum
    _$integrationExtractValueRequestVariableTypeEnum_environment =
    const IntegrationExtractValueRequestVariableTypeEnum._('environment');
const IntegrationExtractValueRequestVariableTypeEnum
    _$integrationExtractValueRequestVariableTypeEnum_task =
    const IntegrationExtractValueRequestVariableTypeEnum._('task');

IntegrationExtractValueRequestVariableTypeEnum
    _$integrationExtractValueRequestVariableTypeEnumValueOf(String name) {
  switch (name) {
    case 'environment':
      return _$integrationExtractValueRequestVariableTypeEnum_environment;
    case 'task':
      return _$integrationExtractValueRequestVariableTypeEnum_task;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntegrationExtractValueRequestVariableTypeEnum>
    _$integrationExtractValueRequestVariableTypeEnumValues = BuiltSet<
        IntegrationExtractValueRequestVariableTypeEnum>(const <IntegrationExtractValueRequestVariableTypeEnum>[
  _$integrationExtractValueRequestVariableTypeEnum_environment,
  _$integrationExtractValueRequestVariableTypeEnum_task,
]);

Serializer<IntegrationExtractValueRequestValueSourceEnum>
    _$integrationExtractValueRequestValueSourceEnumSerializer =
    _$IntegrationExtractValueRequestValueSourceEnumSerializer();
Serializer<IntegrationExtractValueRequestBodyDataTypeEnum>
    _$integrationExtractValueRequestBodyDataTypeEnumSerializer =
    _$IntegrationExtractValueRequestBodyDataTypeEnumSerializer();
Serializer<IntegrationExtractValueRequestVariableTypeEnum>
    _$integrationExtractValueRequestVariableTypeEnumSerializer =
    _$IntegrationExtractValueRequestVariableTypeEnumSerializer();

class _$IntegrationExtractValueRequestValueSourceEnumSerializer
    implements
        PrimitiveSerializer<IntegrationExtractValueRequestValueSourceEnum> {
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
    IntegrationExtractValueRequestValueSourceEnum
  ];
  @override
  final String wireName = 'IntegrationExtractValueRequestValueSourceEnum';

  @override
  Object serialize(Serializers serializers,
          IntegrationExtractValueRequestValueSourceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationExtractValueRequestValueSourceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationExtractValueRequestValueSourceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationExtractValueRequestBodyDataTypeEnumSerializer
    implements
        PrimitiveSerializer<IntegrationExtractValueRequestBodyDataTypeEnum> {
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
    IntegrationExtractValueRequestBodyDataTypeEnum
  ];
  @override
  final String wireName = 'IntegrationExtractValueRequestBodyDataTypeEnum';

  @override
  Object serialize(Serializers serializers,
          IntegrationExtractValueRequestBodyDataTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationExtractValueRequestBodyDataTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationExtractValueRequestBodyDataTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationExtractValueRequestVariableTypeEnumSerializer
    implements
        PrimitiveSerializer<IntegrationExtractValueRequestVariableTypeEnum> {
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
    IntegrationExtractValueRequestVariableTypeEnum
  ];
  @override
  final String wireName = 'IntegrationExtractValueRequestVariableTypeEnum';

  @override
  Object serialize(Serializers serializers,
          IntegrationExtractValueRequestVariableTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IntegrationExtractValueRequestVariableTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IntegrationExtractValueRequestVariableTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IntegrationExtractValueRequest extends IntegrationExtractValueRequest {
  @override
  final String? name;
  @override
  final IntegrationExtractValueRequestValueSourceEnum? valueSource;
  @override
  final IntegrationExtractValueRequestBodyDataTypeEnum? bodyDataType;
  @override
  final String? key;
  @override
  final String? variable;
  @override
  final IntegrationExtractValueRequestVariableTypeEnum? variableType;

  factory _$IntegrationExtractValueRequest(
          [void Function(IntegrationExtractValueRequestBuilder)? updates]) =>
      (IntegrationExtractValueRequestBuilder()..update(updates))._build();

  _$IntegrationExtractValueRequest._(
      {this.name,
      this.valueSource,
      this.bodyDataType,
      this.key,
      this.variable,
      this.variableType})
      : super._();
  @override
  IntegrationExtractValueRequest rebuild(
          void Function(IntegrationExtractValueRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationExtractValueRequestBuilder toBuilder() =>
      IntegrationExtractValueRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationExtractValueRequest &&
        name == other.name &&
        valueSource == other.valueSource &&
        bodyDataType == other.bodyDataType &&
        key == other.key &&
        variable == other.variable &&
        variableType == other.variableType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, valueSource.hashCode);
    _$hash = $jc(_$hash, bodyDataType.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, variable.hashCode);
    _$hash = $jc(_$hash, variableType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntegrationExtractValueRequest')
          ..add('name', name)
          ..add('valueSource', valueSource)
          ..add('bodyDataType', bodyDataType)
          ..add('key', key)
          ..add('variable', variable)
          ..add('variableType', variableType))
        .toString();
  }
}

class IntegrationExtractValueRequestBuilder
    implements
        Builder<IntegrationExtractValueRequest,
            IntegrationExtractValueRequestBuilder> {
  _$IntegrationExtractValueRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  IntegrationExtractValueRequestValueSourceEnum? _valueSource;
  IntegrationExtractValueRequestValueSourceEnum? get valueSource =>
      _$this._valueSource;
  set valueSource(IntegrationExtractValueRequestValueSourceEnum? valueSource) =>
      _$this._valueSource = valueSource;

  IntegrationExtractValueRequestBodyDataTypeEnum? _bodyDataType;
  IntegrationExtractValueRequestBodyDataTypeEnum? get bodyDataType =>
      _$this._bodyDataType;
  set bodyDataType(
          IntegrationExtractValueRequestBodyDataTypeEnum? bodyDataType) =>
      _$this._bodyDataType = bodyDataType;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _variable;
  String? get variable => _$this._variable;
  set variable(String? variable) => _$this._variable = variable;

  IntegrationExtractValueRequestVariableTypeEnum? _variableType;
  IntegrationExtractValueRequestVariableTypeEnum? get variableType =>
      _$this._variableType;
  set variableType(
          IntegrationExtractValueRequestVariableTypeEnum? variableType) =>
      _$this._variableType = variableType;

  IntegrationExtractValueRequestBuilder() {
    IntegrationExtractValueRequest._defaults(this);
  }

  IntegrationExtractValueRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _valueSource = $v.valueSource;
      _bodyDataType = $v.bodyDataType;
      _key = $v.key;
      _variable = $v.variable;
      _variableType = $v.variableType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntegrationExtractValueRequest other) {
    _$v = other as _$IntegrationExtractValueRequest;
  }

  @override
  void update(void Function(IntegrationExtractValueRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationExtractValueRequest build() => _build();

  _$IntegrationExtractValueRequest _build() {
    final _$result = _$v ??
        _$IntegrationExtractValueRequest._(
          name: name,
          valueSource: valueSource,
          bodyDataType: bodyDataType,
          key: key,
          variable: variable,
          variableType: variableType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
