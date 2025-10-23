//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration_extract_value_request.g.dart';

/// IntegrationExtractValueRequest
///
/// Properties:
/// * [name] 
/// * [valueSource] 
/// * [bodyDataType] 
/// * [key] 
/// * [variable] 
/// * [variableType] 
@BuiltValue()
abstract class IntegrationExtractValueRequest implements Built<IntegrationExtractValueRequest, IntegrationExtractValueRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'value_source')
  IntegrationExtractValueRequestValueSourceEnum? get valueSource;
  // enum valueSourceEnum {  body,  header,  };

  @BuiltValueField(wireName: r'body_data_type')
  IntegrationExtractValueRequestBodyDataTypeEnum? get bodyDataType;
  // enum bodyDataTypeEnum {  json,  xml,  string,  };

  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'variable')
  String? get variable;

  @BuiltValueField(wireName: r'variable_type')
  IntegrationExtractValueRequestVariableTypeEnum? get variableType;
  // enum variableTypeEnum {  environment,  task,  };

  IntegrationExtractValueRequest._();

  factory IntegrationExtractValueRequest([void updates(IntegrationExtractValueRequestBuilder b)]) = _$IntegrationExtractValueRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntegrationExtractValueRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntegrationExtractValueRequest> get serializer => _$IntegrationExtractValueRequestSerializer();
}

class _$IntegrationExtractValueRequestSerializer implements PrimitiveSerializer<IntegrationExtractValueRequest> {
  @override
  final Iterable<Type> types = const [IntegrationExtractValueRequest, _$IntegrationExtractValueRequest];

  @override
  final String wireName = r'IntegrationExtractValueRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntegrationExtractValueRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.valueSource != null) {
      yield r'value_source';
      yield serializers.serialize(
        object.valueSource,
        specifiedType: const FullType(IntegrationExtractValueRequestValueSourceEnum),
      );
    }
    if (object.bodyDataType != null) {
      yield r'body_data_type';
      yield serializers.serialize(
        object.bodyDataType,
        specifiedType: const FullType(IntegrationExtractValueRequestBodyDataTypeEnum),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.variable != null) {
      yield r'variable';
      yield serializers.serialize(
        object.variable,
        specifiedType: const FullType(String),
      );
    }
    if (object.variableType != null) {
      yield r'variable_type';
      yield serializers.serialize(
        object.variableType,
        specifiedType: const FullType(IntegrationExtractValueRequestVariableTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntegrationExtractValueRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IntegrationExtractValueRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'value_source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrationExtractValueRequestValueSourceEnum),
          ) as IntegrationExtractValueRequestValueSourceEnum;
          result.valueSource = valueDes;
          break;
        case r'body_data_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrationExtractValueRequestBodyDataTypeEnum),
          ) as IntegrationExtractValueRequestBodyDataTypeEnum;
          result.bodyDataType = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'variable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variable = valueDes;
          break;
        case r'variable_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrationExtractValueRequestVariableTypeEnum),
          ) as IntegrationExtractValueRequestVariableTypeEnum;
          result.variableType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntegrationExtractValueRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationExtractValueRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class IntegrationExtractValueRequestValueSourceEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'body')
  static const IntegrationExtractValueRequestValueSourceEnum body = _$integrationExtractValueRequestValueSourceEnum_body;
  @BuiltValueEnumConst(wireName: r'header')
  static const IntegrationExtractValueRequestValueSourceEnum header = _$integrationExtractValueRequestValueSourceEnum_header;

  static Serializer<IntegrationExtractValueRequestValueSourceEnum> get serializer => _$integrationExtractValueRequestValueSourceEnumSerializer;

  const IntegrationExtractValueRequestValueSourceEnum._(String name): super(name);

  static BuiltSet<IntegrationExtractValueRequestValueSourceEnum> get values => _$integrationExtractValueRequestValueSourceEnumValues;
  static IntegrationExtractValueRequestValueSourceEnum valueOf(String name) => _$integrationExtractValueRequestValueSourceEnumValueOf(name);
}

class IntegrationExtractValueRequestBodyDataTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'json')
  static const IntegrationExtractValueRequestBodyDataTypeEnum json = _$integrationExtractValueRequestBodyDataTypeEnum_json;
  @BuiltValueEnumConst(wireName: r'xml')
  static const IntegrationExtractValueRequestBodyDataTypeEnum xml = _$integrationExtractValueRequestBodyDataTypeEnum_xml;
  @BuiltValueEnumConst(wireName: r'string')
  static const IntegrationExtractValueRequestBodyDataTypeEnum string = _$integrationExtractValueRequestBodyDataTypeEnum_string;

  static Serializer<IntegrationExtractValueRequestBodyDataTypeEnum> get serializer => _$integrationExtractValueRequestBodyDataTypeEnumSerializer;

  const IntegrationExtractValueRequestBodyDataTypeEnum._(String name): super(name);

  static BuiltSet<IntegrationExtractValueRequestBodyDataTypeEnum> get values => _$integrationExtractValueRequestBodyDataTypeEnumValues;
  static IntegrationExtractValueRequestBodyDataTypeEnum valueOf(String name) => _$integrationExtractValueRequestBodyDataTypeEnumValueOf(name);
}

class IntegrationExtractValueRequestVariableTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'environment')
  static const IntegrationExtractValueRequestVariableTypeEnum environment = _$integrationExtractValueRequestVariableTypeEnum_environment;
  @BuiltValueEnumConst(wireName: r'task')
  static const IntegrationExtractValueRequestVariableTypeEnum task = _$integrationExtractValueRequestVariableTypeEnum_task;

  static Serializer<IntegrationExtractValueRequestVariableTypeEnum> get serializer => _$integrationExtractValueRequestVariableTypeEnumSerializer;

  const IntegrationExtractValueRequestVariableTypeEnum._(String name): super(name);

  static BuiltSet<IntegrationExtractValueRequestVariableTypeEnum> get values => _$integrationExtractValueRequestVariableTypeEnumValues;
  static IntegrationExtractValueRequestVariableTypeEnum valueOf(String name) => _$integrationExtractValueRequestVariableTypeEnumValueOf(name);
}

