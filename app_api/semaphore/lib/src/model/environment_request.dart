//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:semaphore_api/src/model/environment_secret_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'environment_request.g.dart';

/// EnvironmentRequest
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [projectId] 
/// * [password] 
/// * [json] 
/// * [env] 
/// * [secrets] 
@BuiltValue()
abstract class EnvironmentRequest implements Built<EnvironmentRequest, EnvironmentRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'project_id')
  int? get projectId;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'json')
  String? get json;

  @BuiltValueField(wireName: r'env')
  String? get env;

  @BuiltValueField(wireName: r'secrets')
  BuiltList<EnvironmentSecretRequest>? get secrets;

  EnvironmentRequest._();

  factory EnvironmentRequest([void updates(EnvironmentRequestBuilder b)]) = _$EnvironmentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnvironmentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnvironmentRequest> get serializer => _$EnvironmentRequestSerializer();
}

class _$EnvironmentRequestSerializer implements PrimitiveSerializer<EnvironmentRequest> {
  @override
  final Iterable<Type> types = const [EnvironmentRequest, _$EnvironmentRequest];

  @override
  final String wireName = r'EnvironmentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnvironmentRequest object, {
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
    if (object.projectId != null) {
      yield r'project_id';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(int),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.json != null) {
      yield r'json';
      yield serializers.serialize(
        object.json,
        specifiedType: const FullType(String),
      );
    }
    if (object.env != null) {
      yield r'env';
      yield serializers.serialize(
        object.env,
        specifiedType: const FullType(String),
      );
    }
    if (object.secrets != null) {
      yield r'secrets';
      yield serializers.serialize(
        object.secrets,
        specifiedType: const FullType(BuiltList, [FullType(EnvironmentSecretRequest)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EnvironmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EnvironmentRequestBuilder result,
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
        case r'project_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.projectId = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'json':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.json = valueDes;
          break;
        case r'env':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.env = valueDes;
          break;
        case r'secrets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(EnvironmentSecretRequest)]),
          ) as BuiltList<EnvironmentSecretRequest>;
          result.secrets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EnvironmentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnvironmentRequestBuilder();
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

