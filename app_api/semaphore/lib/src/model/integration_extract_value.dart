//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration_extract_value.g.dart';

/// IntegrationExtractValue
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [valueSource] 
/// * [bodyDataType] 
/// * [key] 
/// * [variable] 
/// * [variableType] 
/// * [integrationId] 
@BuiltValue()
abstract class IntegrationExtractValue implements Built<IntegrationExtractValue, IntegrationExtractValueBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'value_source')
  IntegrationExtractValueValueSourceEnum? get valueSource;
  // enum valueSourceEnum {  body,  header,  };

  @BuiltValueField(wireName: r'body_data_type')
  IntegrationExtractValueBodyDataTypeEnum? get bodyDataType;
  // enum bodyDataTypeEnum {  json,  xml,  string,  };

  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'variable')
  String? get variable;

  @BuiltValueField(wireName: r'variable_type')
  IntegrationExtractValueVariableTypeEnum? get variableType;
  // enum variableTypeEnum {  environment,  task,  };

  @BuiltValueField(wireName: r'integration_id')
  int? get integrationId;

  IntegrationExtractValue._();

  factory IntegrationExtractValue([void updates(IntegrationExtractValueBuilder b)]) = _$IntegrationExtractValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntegrationExtractValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntegrationExtractValue> get serializer => _$IntegrationExtractValueSerializer();
}

class _$IntegrationExtractValueSerializer implements PrimitiveSerializer<IntegrationExtractValue> {
  @override
  final Iterable<Type> types = const [IntegrationExtractValue, _$IntegrationExtractValue];

  @override
  final String wireName = r'IntegrationExtractValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntegrationExtractValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.valueSource != null) {
      yield r'value_source';
      yield serializers.serialize(
        object.valueSource,
        specifiedType: const FullType(IntegrationExtractValueValueSourceEnum),
      );
    }
    if (object.bodyDataType != null) {
      yield r'body_data_type';
      yield serializers.serialize(
        object.bodyDataType,
        specifiedType: const FullType(IntegrationExtractValueBodyDataTypeEnum),
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
        specifiedType: const FullType(IntegrationExtractValueVariableTypeEnum),
      );
    }
    if (object.integrationId != null) {
      yield r'integration_id';
      yield serializers.serialize(
        object.integrationId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntegrationExtractValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IntegrationExtractValueBuilder result,
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
            specifiedType: const FullType(IntegrationExtractValueValueSourceEnum),
          ) as IntegrationExtractValueValueSourceEnum;
          result.valueSource = valueDes;
          break;
        case r'body_data_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrationExtractValueBodyDataTypeEnum),
          ) as IntegrationExtractValueBodyDataTypeEnum;
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
            specifiedType: const FullType(IntegrationExtractValueVariableTypeEnum),
          ) as IntegrationExtractValueVariableTypeEnum;
          result.variableType = valueDes;
          break;
        case r'integration_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.integrationId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntegrationExtractValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationExtractValueBuilder();
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

class IntegrationExtractValueValueSourceEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'body')
  static const IntegrationExtractValueValueSourceEnum body = _$integrationExtractValueValueSourceEnum_body;
  @BuiltValueEnumConst(wireName: r'header')
  static const IntegrationExtractValueValueSourceEnum header = _$integrationExtractValueValueSourceEnum_header;

  static Serializer<IntegrationExtractValueValueSourceEnum> get serializer => _$integrationExtractValueValueSourceEnumSerializer;

  const IntegrationExtractValueValueSourceEnum._(String name): super(name);

  static BuiltSet<IntegrationExtractValueValueSourceEnum> get values => _$integrationExtractValueValueSourceEnumValues;
  static IntegrationExtractValueValueSourceEnum valueOf(String name) => _$integrationExtractValueValueSourceEnumValueOf(name);
}

class IntegrationExtractValueBodyDataTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'json')
  static const IntegrationExtractValueBodyDataTypeEnum json = _$integrationExtractValueBodyDataTypeEnum_json;
  @BuiltValueEnumConst(wireName: r'xml')
  static const IntegrationExtractValueBodyDataTypeEnum xml = _$integrationExtractValueBodyDataTypeEnum_xml;
  @BuiltValueEnumConst(wireName: r'string')
  static const IntegrationExtractValueBodyDataTypeEnum string = _$integrationExtractValueBodyDataTypeEnum_string;

  static Serializer<IntegrationExtractValueBodyDataTypeEnum> get serializer => _$integrationExtractValueBodyDataTypeEnumSerializer;

  const IntegrationExtractValueBodyDataTypeEnum._(String name): super(name);

  static BuiltSet<IntegrationExtractValueBodyDataTypeEnum> get values => _$integrationExtractValueBodyDataTypeEnumValues;
  static IntegrationExtractValueBodyDataTypeEnum valueOf(String name) => _$integrationExtractValueBodyDataTypeEnumValueOf(name);
}

class IntegrationExtractValueVariableTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'environment')
  static const IntegrationExtractValueVariableTypeEnum environment = _$integrationExtractValueVariableTypeEnum_environment;
  @BuiltValueEnumConst(wireName: r'task')
  static const IntegrationExtractValueVariableTypeEnum task = _$integrationExtractValueVariableTypeEnum_task;

  static Serializer<IntegrationExtractValueVariableTypeEnum> get serializer => _$integrationExtractValueVariableTypeEnumSerializer;

  const IntegrationExtractValueVariableTypeEnum._(String name): super(name);

  static BuiltSet<IntegrationExtractValueVariableTypeEnum> get values => _$integrationExtractValueVariableTypeEnumValues;
  static IntegrationExtractValueVariableTypeEnum valueOf(String name) => _$integrationExtractValueVariableTypeEnumValueOf(name);
}

