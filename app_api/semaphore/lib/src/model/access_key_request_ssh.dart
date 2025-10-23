//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_key_request_ssh.g.dart';

/// AccessKeyRequestSsh
///
/// Properties:
/// * [login] 
/// * [passphrase] 
/// * [privateKey] 
@BuiltValue()
abstract class AccessKeyRequestSsh implements Built<AccessKeyRequestSsh, AccessKeyRequestSshBuilder> {
  @BuiltValueField(wireName: r'login')
  String? get login;

  @BuiltValueField(wireName: r'passphrase')
  String? get passphrase;

  @BuiltValueField(wireName: r'private_key')
  String? get privateKey;

  AccessKeyRequestSsh._();

  factory AccessKeyRequestSsh([void updates(AccessKeyRequestSshBuilder b)]) = _$AccessKeyRequestSsh;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccessKeyRequestSshBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccessKeyRequestSsh> get serializer => _$AccessKeyRequestSshSerializer();
}

class _$AccessKeyRequestSshSerializer implements PrimitiveSerializer<AccessKeyRequestSsh> {
  @override
  final Iterable<Type> types = const [AccessKeyRequestSsh, _$AccessKeyRequestSsh];

  @override
  final String wireName = r'AccessKeyRequestSsh';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccessKeyRequestSsh object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.login != null) {
      yield r'login';
      yield serializers.serialize(
        object.login,
        specifiedType: const FullType(String),
      );
    }
    if (object.passphrase != null) {
      yield r'passphrase';
      yield serializers.serialize(
        object.passphrase,
        specifiedType: const FullType(String),
      );
    }
    if (object.privateKey != null) {
      yield r'private_key';
      yield serializers.serialize(
        object.privateKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccessKeyRequestSsh object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccessKeyRequestSshBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'login':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.login = valueDes;
          break;
        case r'passphrase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.passphrase = valueDes;
          break;
        case r'private_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.privateKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccessKeyRequestSsh deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessKeyRequestSshBuilder();
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

