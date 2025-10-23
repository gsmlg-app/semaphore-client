//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_key.g.dart';

/// AccessKey
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [type] 
/// * [projectId] 
@BuiltValue()
abstract class AccessKey implements Built<AccessKey, AccessKeyBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  AccessKeyTypeEnum? get type;
  // enum typeEnum {  none,  ssh,  login_password,  };

  @BuiltValueField(wireName: r'project_id')
  int? get projectId;

  AccessKey._();

  factory AccessKey([void updates(AccessKeyBuilder b)]) = _$AccessKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccessKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccessKey> get serializer => _$AccessKeySerializer();
}

class _$AccessKeySerializer implements PrimitiveSerializer<AccessKey> {
  @override
  final Iterable<Type> types = const [AccessKey, _$AccessKey];

  @override
  final String wireName = r'AccessKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccessKey object, {
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
        specifiedType: const FullType(AccessKeyTypeEnum),
      );
    }
    if (object.projectId != null) {
      yield r'project_id';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccessKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccessKeyBuilder result,
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
            specifiedType: const FullType(AccessKeyTypeEnum),
          ) as AccessKeyTypeEnum;
          result.type = valueDes;
          break;
        case r'project_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.projectId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccessKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessKeyBuilder();
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

class AccessKeyTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const AccessKeyTypeEnum none = _$accessKeyTypeEnum_none;
  @BuiltValueEnumConst(wireName: r'ssh')
  static const AccessKeyTypeEnum ssh = _$accessKeyTypeEnum_ssh;
  @BuiltValueEnumConst(wireName: r'login_password')
  static const AccessKeyTypeEnum loginPassword = _$accessKeyTypeEnum_loginPassword;

  static Serializer<AccessKeyTypeEnum> get serializer => _$accessKeyTypeEnumSerializer;

  const AccessKeyTypeEnum._(String name): super(name);

  static BuiltSet<AccessKeyTypeEnum> get values => _$accessKeyTypeEnumValues;
  static AccessKeyTypeEnum valueOf(String name) => _$accessKeyTypeEnumValueOf(name);
}

