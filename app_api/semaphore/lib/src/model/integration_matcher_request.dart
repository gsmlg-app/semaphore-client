//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration_matcher_request.g.dart';

/// IntegrationMatcherRequest
///
/// Properties:
/// * [name] 
/// * [matchType] 
/// * [method] 
/// * [bodyDataType] 
/// * [key] 
/// * [value] 
@BuiltValue()
abstract class IntegrationMatcherRequest implements Built<IntegrationMatcherRequest, IntegrationMatcherRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'match_type')
  IntegrationMatcherRequestMatchTypeEnum? get matchType;
  // enum matchTypeEnum {  body,  header,  };

  @BuiltValueField(wireName: r'method')
  IntegrationMatcherRequestMethodEnum? get method;
  // enum methodEnum {  equals,  unequals,  contains,  };

  @BuiltValueField(wireName: r'body_data_type')
  IntegrationMatcherRequestBodyDataTypeEnum? get bodyDataType;
  // enum bodyDataTypeEnum {  json,  xml,  string,  };

  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'value')
  String? get value;

  IntegrationMatcherRequest._();

  factory IntegrationMatcherRequest([void updates(IntegrationMatcherRequestBuilder b)]) = _$IntegrationMatcherRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntegrationMatcherRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntegrationMatcherRequest> get serializer => _$IntegrationMatcherRequestSerializer();
}

class _$IntegrationMatcherRequestSerializer implements PrimitiveSerializer<IntegrationMatcherRequest> {
  @override
  final Iterable<Type> types = const [IntegrationMatcherRequest, _$IntegrationMatcherRequest];

  @override
  final String wireName = r'IntegrationMatcherRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntegrationMatcherRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.matchType != null) {
      yield r'match_type';
      yield serializers.serialize(
        object.matchType,
        specifiedType: const FullType(IntegrationMatcherRequestMatchTypeEnum),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(IntegrationMatcherRequestMethodEnum),
      );
    }
    if (object.bodyDataType != null) {
      yield r'body_data_type';
      yield serializers.serialize(
        object.bodyDataType,
        specifiedType: const FullType(IntegrationMatcherRequestBodyDataTypeEnum),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntegrationMatcherRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IntegrationMatcherRequestBuilder result,
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
        case r'match_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrationMatcherRequestMatchTypeEnum),
          ) as IntegrationMatcherRequestMatchTypeEnum;
          result.matchType = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrationMatcherRequestMethodEnum),
          ) as IntegrationMatcherRequestMethodEnum;
          result.method = valueDes;
          break;
        case r'body_data_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrationMatcherRequestBodyDataTypeEnum),
          ) as IntegrationMatcherRequestBodyDataTypeEnum;
          result.bodyDataType = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntegrationMatcherRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationMatcherRequestBuilder();
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

class IntegrationMatcherRequestMatchTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'body')
  static const IntegrationMatcherRequestMatchTypeEnum body = _$integrationMatcherRequestMatchTypeEnum_body;
  @BuiltValueEnumConst(wireName: r'header')
  static const IntegrationMatcherRequestMatchTypeEnum header = _$integrationMatcherRequestMatchTypeEnum_header;

  static Serializer<IntegrationMatcherRequestMatchTypeEnum> get serializer => _$integrationMatcherRequestMatchTypeEnumSerializer;

  const IntegrationMatcherRequestMatchTypeEnum._(String name): super(name);

  static BuiltSet<IntegrationMatcherRequestMatchTypeEnum> get values => _$integrationMatcherRequestMatchTypeEnumValues;
  static IntegrationMatcherRequestMatchTypeEnum valueOf(String name) => _$integrationMatcherRequestMatchTypeEnumValueOf(name);
}

class IntegrationMatcherRequestMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'equals')
  static const IntegrationMatcherRequestMethodEnum equals = _$integrationMatcherRequestMethodEnum_equals;
  @BuiltValueEnumConst(wireName: r'unequals')
  static const IntegrationMatcherRequestMethodEnum unequals = _$integrationMatcherRequestMethodEnum_unequals;
  @BuiltValueEnumConst(wireName: r'contains')
  static const IntegrationMatcherRequestMethodEnum contains = _$integrationMatcherRequestMethodEnum_contains;

  static Serializer<IntegrationMatcherRequestMethodEnum> get serializer => _$integrationMatcherRequestMethodEnumSerializer;

  const IntegrationMatcherRequestMethodEnum._(String name): super(name);

  static BuiltSet<IntegrationMatcherRequestMethodEnum> get values => _$integrationMatcherRequestMethodEnumValues;
  static IntegrationMatcherRequestMethodEnum valueOf(String name) => _$integrationMatcherRequestMethodEnumValueOf(name);
}

class IntegrationMatcherRequestBodyDataTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'json')
  static const IntegrationMatcherRequestBodyDataTypeEnum json = _$integrationMatcherRequestBodyDataTypeEnum_json;
  @BuiltValueEnumConst(wireName: r'xml')
  static const IntegrationMatcherRequestBodyDataTypeEnum xml = _$integrationMatcherRequestBodyDataTypeEnum_xml;
  @BuiltValueEnumConst(wireName: r'string')
  static const IntegrationMatcherRequestBodyDataTypeEnum string = _$integrationMatcherRequestBodyDataTypeEnum_string;

  static Serializer<IntegrationMatcherRequestBodyDataTypeEnum> get serializer => _$integrationMatcherRequestBodyDataTypeEnumSerializer;

  const IntegrationMatcherRequestBodyDataTypeEnum._(String name): super(name);

  static BuiltSet<IntegrationMatcherRequestBodyDataTypeEnum> get values => _$integrationMatcherRequestBodyDataTypeEnumValues;
  static IntegrationMatcherRequestBodyDataTypeEnum valueOf(String name) => _$integrationMatcherRequestBodyDataTypeEnumValueOf(name);
}

