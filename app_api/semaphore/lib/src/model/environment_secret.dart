//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'environment_secret.g.dart';

/// EnvironmentSecret
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [type] 
@BuiltValue()
abstract class EnvironmentSecret implements Built<EnvironmentSecret, EnvironmentSecretBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  EnvironmentSecretTypeEnum? get type;
  // enum typeEnum {  env,  var,  };

  EnvironmentSecret._();

  factory EnvironmentSecret([void updates(EnvironmentSecretBuilder b)]) = _$EnvironmentSecret;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnvironmentSecretBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnvironmentSecret> get serializer => _$EnvironmentSecretSerializer();
}

class _$EnvironmentSecretSerializer implements PrimitiveSerializer<EnvironmentSecret> {
  @override
  final Iterable<Type> types = const [EnvironmentSecret, _$EnvironmentSecret];

  @override
  final String wireName = r'EnvironmentSecret';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnvironmentSecret object, {
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(EnvironmentSecretTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EnvironmentSecret object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EnvironmentSecretBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EnvironmentSecretTypeEnum),
          ) as EnvironmentSecretTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnvironmentSecret deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnvironmentSecretBuilder();
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

class EnvironmentSecretTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'env')
  static const EnvironmentSecretTypeEnum env = _$environmentSecretTypeEnum_env;
  @BuiltValueEnumConst(wireName: r'var')
  static const EnvironmentSecretTypeEnum var_ = _$environmentSecretTypeEnum_var_;

  static Serializer<EnvironmentSecretTypeEnum> get serializer => _$environmentSecretTypeEnumSerializer;

  const EnvironmentSecretTypeEnum._(String name): super(name);

  static BuiltSet<EnvironmentSecretTypeEnum> get values => _$environmentSecretTypeEnumValues;
  static EnvironmentSecretTypeEnum valueOf(String name) => _$environmentSecretTypeEnumValueOf(name);
}

