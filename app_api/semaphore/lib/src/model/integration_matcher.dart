//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration_matcher.g.dart';

/// IntegrationMatcher
///
/// Properties:
/// * [id] 
/// * [integrationId] 
/// * [name] 
/// * [matchType] 
/// * [method] 
/// * [bodyDataType] 
/// * [key] 
/// * [value] 
@BuiltValue()
abstract class IntegrationMatcher implements Built<IntegrationMatcher, IntegrationMatcherBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'integration_id')
  int? get integrationId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'match_type')
  IntegrationMatcherMatchTypeEnum? get matchType;
  // enum matchTypeEnum {  body,  header,  };

  @BuiltValueField(wireName: r'method')
  IntegrationMatcherMethodEnum? get method;
  // enum methodEnum {  equals,  unequals,  contains,  };

  @BuiltValueField(wireName: r'body_data_type')
  IntegrationMatcherBodyDataTypeEnum? get bodyDataType;
  // enum bodyDataTypeEnum {  json,  xml,  string,  };

  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'value')
  String? get value;

  IntegrationMatcher._();

  factory IntegrationMatcher([void updates(IntegrationMatcherBuilder b)]) = _$IntegrationMatcher;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntegrationMatcherBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntegrationMatcher> get serializer => _$IntegrationMatcherSerializer();
}

class _$IntegrationMatcherSerializer implements PrimitiveSerializer<IntegrationMatcher> {
  @override
  final Iterable<Type> types = const [IntegrationMatcher, _$IntegrationMatcher];

  @override
  final String wireName = r'IntegrationMatcher';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntegrationMatcher object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.integrationId != null) {
      yield r'integration_id';
      yield serializers.serialize(
        object.integrationId,
        specifiedType: const FullType(int),
      );
    }
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
        specifiedType: const FullType(IntegrationMatcherMatchTypeEnum),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(IntegrationMatcherMethodEnum),
      );
    }
    if (object.bodyDataType != null) {
      yield r'body_data_type';
      yield serializers.serialize(
        object.bodyDataType,
        specifiedType: const FullType(IntegrationMatcherBodyDataTypeEnum),
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
    IntegrationMatcher object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IntegrationMatcherBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'integration_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.integrationId = valueDes;
          break;
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
            specifiedType: const FullType(IntegrationMatcherMatchTypeEnum),
          ) as IntegrationMatcherMatchTypeEnum;
          result.matchType = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrationMatcherMethodEnum),
          ) as IntegrationMatcherMethodEnum;
          result.method = valueDes;
          break;
        case r'body_data_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrationMatcherBodyDataTypeEnum),
          ) as IntegrationMatcherBodyDataTypeEnum;
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
  IntegrationMatcher deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationMatcherBuilder();
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

class IntegrationMatcherMatchTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'body')
  static const IntegrationMatcherMatchTypeEnum body = _$integrationMatcherMatchTypeEnum_body;
  @BuiltValueEnumConst(wireName: r'header')
  static const IntegrationMatcherMatchTypeEnum header = _$integrationMatcherMatchTypeEnum_header;

  static Serializer<IntegrationMatcherMatchTypeEnum> get serializer => _$integrationMatcherMatchTypeEnumSerializer;

  const IntegrationMatcherMatchTypeEnum._(String name): super(name);

  static BuiltSet<IntegrationMatcherMatchTypeEnum> get values => _$integrationMatcherMatchTypeEnumValues;
  static IntegrationMatcherMatchTypeEnum valueOf(String name) => _$integrationMatcherMatchTypeEnumValueOf(name);
}

class IntegrationMatcherMethodEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'equals')
  static const IntegrationMatcherMethodEnum equals = _$integrationMatcherMethodEnum_equals;
  @BuiltValueEnumConst(wireName: r'unequals')
  static const IntegrationMatcherMethodEnum unequals = _$integrationMatcherMethodEnum_unequals;
  @BuiltValueEnumConst(wireName: r'contains')
  static const IntegrationMatcherMethodEnum contains = _$integrationMatcherMethodEnum_contains;

  static Serializer<IntegrationMatcherMethodEnum> get serializer => _$integrationMatcherMethodEnumSerializer;

  const IntegrationMatcherMethodEnum._(String name): super(name);

  static BuiltSet<IntegrationMatcherMethodEnum> get values => _$integrationMatcherMethodEnumValues;
  static IntegrationMatcherMethodEnum valueOf(String name) => _$integrationMatcherMethodEnumValueOf(name);
}

class IntegrationMatcherBodyDataTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'json')
  static const IntegrationMatcherBodyDataTypeEnum json = _$integrationMatcherBodyDataTypeEnum_json;
  @BuiltValueEnumConst(wireName: r'xml')
  static const IntegrationMatcherBodyDataTypeEnum xml = _$integrationMatcherBodyDataTypeEnum_xml;
  @BuiltValueEnumConst(wireName: r'string')
  static const IntegrationMatcherBodyDataTypeEnum string = _$integrationMatcherBodyDataTypeEnum_string;

  static Serializer<IntegrationMatcherBodyDataTypeEnum> get serializer => _$integrationMatcherBodyDataTypeEnumSerializer;

  const IntegrationMatcherBodyDataTypeEnum._(String name): super(name);

  static BuiltSet<IntegrationMatcherBodyDataTypeEnum> get values => _$integrationMatcherBodyDataTypeEnumValues;
  static IntegrationMatcherBodyDataTypeEnum valueOf(String name) => _$integrationMatcherBodyDataTypeEnumValueOf(name);
}

