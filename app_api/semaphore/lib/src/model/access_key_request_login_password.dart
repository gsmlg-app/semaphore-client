//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_key_request_login_password.g.dart';

/// AccessKeyRequestLoginPassword
///
/// Properties:
/// * [password] 
/// * [login] 
@BuiltValue()
abstract class AccessKeyRequestLoginPassword implements Built<AccessKeyRequestLoginPassword, AccessKeyRequestLoginPasswordBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'login')
  String? get login;

  AccessKeyRequestLoginPassword._();

  factory AccessKeyRequestLoginPassword([void updates(AccessKeyRequestLoginPasswordBuilder b)]) = _$AccessKeyRequestLoginPassword;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccessKeyRequestLoginPasswordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccessKeyRequestLoginPassword> get serializer => _$AccessKeyRequestLoginPasswordSerializer();
}

class _$AccessKeyRequestLoginPasswordSerializer implements PrimitiveSerializer<AccessKeyRequestLoginPassword> {
  @override
  final Iterable<Type> types = const [AccessKeyRequestLoginPassword, _$AccessKeyRequestLoginPassword];

  @override
  final String wireName = r'AccessKeyRequestLoginPassword';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccessKeyRequestLoginPassword object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.login != null) {
      yield r'login';
      yield serializers.serialize(
        object.login,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccessKeyRequestLoginPassword object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccessKeyRequestLoginPasswordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'login':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.login = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccessKeyRequestLoginPassword deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessKeyRequestLoginPasswordBuilder();
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

