//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'environment_secret_request.g.dart';

/// EnvironmentSecretRequest
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [secret] 
/// * [type] 
/// * [operation] 
@BuiltValue()
abstract class EnvironmentSecretRequest implements Built<EnvironmentSecretRequest, EnvironmentSecretRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'secret')
  String? get secret;

  @BuiltValueField(wireName: r'type')
  EnvironmentSecretRequestTypeEnum? get type;
  // enum typeEnum {  env,  var,  };

  @BuiltValueField(wireName: r'operation')
  EnvironmentSecretRequestOperationEnum? get operation;
  // enum operationEnum {  create,  update,  delete,  };

  EnvironmentSecretRequest._();

  factory EnvironmentSecretRequest([void updates(EnvironmentSecretRequestBuilder b)]) = _$EnvironmentSecretRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnvironmentSecretRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnvironmentSecretRequest> get serializer => _$EnvironmentSecretRequestSerializer();
}

class _$EnvironmentSecretRequestSerializer implements PrimitiveSerializer<EnvironmentSecretRequest> {
  @override
  final Iterable<Type> types = const [EnvironmentSecretRequest, _$EnvironmentSecretRequest];

  @override
  final String wireName = r'EnvironmentSecretRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnvironmentSecretRequest object, {
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
    if (object.secret != null) {
      yield r'secret';
      yield serializers.serialize(
        object.secret,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(EnvironmentSecretRequestTypeEnum),
      );
    }
    if (object.operation != null) {
      yield r'operation';
      yield serializers.serialize(
        object.operation,
        specifiedType: const FullType(EnvironmentSecretRequestOperationEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EnvironmentSecretRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EnvironmentSecretRequestBuilder result,
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
        case r'secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secret = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EnvironmentSecretRequestTypeEnum),
          ) as EnvironmentSecretRequestTypeEnum;
          result.type = valueDes;
          break;
        case r'operation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EnvironmentSecretRequestOperationEnum),
          ) as EnvironmentSecretRequestOperationEnum;
          result.operation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnvironmentSecretRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnvironmentSecretRequestBuilder();
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

class EnvironmentSecretRequestTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'env')
  static const EnvironmentSecretRequestTypeEnum env = _$environmentSecretRequestTypeEnum_env;
  @BuiltValueEnumConst(wireName: r'var')
  static const EnvironmentSecretRequestTypeEnum var_ = _$environmentSecretRequestTypeEnum_var_;

  static Serializer<EnvironmentSecretRequestTypeEnum> get serializer => _$environmentSecretRequestTypeEnumSerializer;

  const EnvironmentSecretRequestTypeEnum._(String name): super(name);

  static BuiltSet<EnvironmentSecretRequestTypeEnum> get values => _$environmentSecretRequestTypeEnumValues;
  static EnvironmentSecretRequestTypeEnum valueOf(String name) => _$environmentSecretRequestTypeEnumValueOf(name);
}

class EnvironmentSecretRequestOperationEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'create')
  static const EnvironmentSecretRequestOperationEnum create = _$environmentSecretRequestOperationEnum_create;
  @BuiltValueEnumConst(wireName: r'update')
  static const EnvironmentSecretRequestOperationEnum update = _$environmentSecretRequestOperationEnum_update;
  @BuiltValueEnumConst(wireName: r'delete')
  static const EnvironmentSecretRequestOperationEnum delete = _$environmentSecretRequestOperationEnum_delete;

  static Serializer<EnvironmentSecretRequestOperationEnum> get serializer => _$environmentSecretRequestOperationEnumSerializer;

  const EnvironmentSecretRequestOperationEnum._(String name): super(name);

  static BuiltSet<EnvironmentSecretRequestOperationEnum> get values => _$environmentSecretRequestOperationEnumValues;
  static EnvironmentSecretRequestOperationEnum valueOf(String name) => _$environmentSecretRequestOperationEnumValueOf(name);
}

