//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:semaphore_api/src/model/access_key_request_ssh.dart';
import 'package:semaphore_api/src/model/access_key_request_login_password.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_key_request.g.dart';

/// AccessKeyRequest
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [type] 
/// * [projectId] 
/// * [overrideSecret] 
/// * [loginPassword] 
/// * [ssh] 
@BuiltValue()
abstract class AccessKeyRequest implements Built<AccessKeyRequest, AccessKeyRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  AccessKeyRequestTypeEnum? get type;
  // enum typeEnum {  none,  ssh,  login_password,  };

  @BuiltValueField(wireName: r'project_id')
  int? get projectId;

  @BuiltValueField(wireName: r'override_secret')
  bool? get overrideSecret;

  @BuiltValueField(wireName: r'login_password')
  AccessKeyRequestLoginPassword? get loginPassword;

  @BuiltValueField(wireName: r'ssh')
  AccessKeyRequestSsh? get ssh;

  AccessKeyRequest._();

  factory AccessKeyRequest([void updates(AccessKeyRequestBuilder b)]) = _$AccessKeyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccessKeyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccessKeyRequest> get serializer => _$AccessKeyRequestSerializer();
}

class _$AccessKeyRequestSerializer implements PrimitiveSerializer<AccessKeyRequest> {
  @override
  final Iterable<Type> types = const [AccessKeyRequest, _$AccessKeyRequest];

  @override
  final String wireName = r'AccessKeyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccessKeyRequest object, {
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
        specifiedType: const FullType(AccessKeyRequestTypeEnum),
      );
    }
    if (object.projectId != null) {
      yield r'project_id';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(int),
      );
    }
    if (object.overrideSecret != null) {
      yield r'override_secret';
      yield serializers.serialize(
        object.overrideSecret,
        specifiedType: const FullType(bool),
      );
    }
    if (object.loginPassword != null) {
      yield r'login_password';
      yield serializers.serialize(
        object.loginPassword,
        specifiedType: const FullType(AccessKeyRequestLoginPassword),
      );
    }
    if (object.ssh != null) {
      yield r'ssh';
      yield serializers.serialize(
        object.ssh,
        specifiedType: const FullType(AccessKeyRequestSsh),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccessKeyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccessKeyRequestBuilder result,
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
            specifiedType: const FullType(AccessKeyRequestTypeEnum),
          ) as AccessKeyRequestTypeEnum;
          result.type = valueDes;
          break;
        case r'project_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.projectId = valueDes;
          break;
        case r'override_secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.overrideSecret = valueDes;
          break;
        case r'login_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccessKeyRequestLoginPassword),
          ) as AccessKeyRequestLoginPassword;
          result.loginPassword.replace(valueDes);
          break;
        case r'ssh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccessKeyRequestSsh),
          ) as AccessKeyRequestSsh;
          result.ssh.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccessKeyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessKeyRequestBuilder();
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

class AccessKeyRequestTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const AccessKeyRequestTypeEnum none = _$accessKeyRequestTypeEnum_none;
  @BuiltValueEnumConst(wireName: r'ssh')
  static const AccessKeyRequestTypeEnum ssh = _$accessKeyRequestTypeEnum_ssh;
  @BuiltValueEnumConst(wireName: r'login_password')
  static const AccessKeyRequestTypeEnum loginPassword = _$accessKeyRequestTypeEnum_loginPassword;

  static Serializer<AccessKeyRequestTypeEnum> get serializer => _$accessKeyRequestTypeEnumSerializer;

  const AccessKeyRequestTypeEnum._(String name): super(name);

  static BuiltSet<AccessKeyRequestTypeEnum> get values => _$accessKeyRequestTypeEnumValues;
  static AccessKeyRequestTypeEnum valueOf(String name) => _$accessKeyRequestTypeEnumValueOf(name);
}

