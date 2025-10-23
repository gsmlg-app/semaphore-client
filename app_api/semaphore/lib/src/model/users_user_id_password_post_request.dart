//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_user_id_password_post_request.g.dart';

/// UsersUserIdPasswordPostRequest
///
/// Properties:
/// * [password] 
@BuiltValue()
abstract class UsersUserIdPasswordPostRequest implements Built<UsersUserIdPasswordPostRequest, UsersUserIdPasswordPostRequestBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  UsersUserIdPasswordPostRequest._();

  factory UsersUserIdPasswordPostRequest([void updates(UsersUserIdPasswordPostRequestBuilder b)]) = _$UsersUserIdPasswordPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersUserIdPasswordPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersUserIdPasswordPostRequest> get serializer => _$UsersUserIdPasswordPostRequestSerializer();
}

class _$UsersUserIdPasswordPostRequestSerializer implements PrimitiveSerializer<UsersUserIdPasswordPostRequest> {
  @override
  final Iterable<Type> types = const [UsersUserIdPasswordPostRequest, _$UsersUserIdPasswordPostRequest];

  @override
  final String wireName = r'UsersUserIdPasswordPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersUserIdPasswordPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersUserIdPasswordPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsersUserIdPasswordPostRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersUserIdPasswordPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersUserIdPasswordPostRequestBuilder();
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

