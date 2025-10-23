//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_metadata_oidc_providers_inner.g.dart';

/// LoginMetadataOidcProvidersInner
///
/// Properties:
/// * [id] - ID of the provider, used in the login URL
/// * [name] - Text to show on the login button
@BuiltValue()
abstract class LoginMetadataOidcProvidersInner implements Built<LoginMetadataOidcProvidersInner, LoginMetadataOidcProvidersInnerBuilder> {
  /// ID of the provider, used in the login URL
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Text to show on the login button
  @BuiltValueField(wireName: r'name')
  String? get name;

  LoginMetadataOidcProvidersInner._();

  factory LoginMetadataOidcProvidersInner([void updates(LoginMetadataOidcProvidersInnerBuilder b)]) = _$LoginMetadataOidcProvidersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginMetadataOidcProvidersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginMetadataOidcProvidersInner> get serializer => _$LoginMetadataOidcProvidersInnerSerializer();
}

class _$LoginMetadataOidcProvidersInnerSerializer implements PrimitiveSerializer<LoginMetadataOidcProvidersInner> {
  @override
  final Iterable<Type> types = const [LoginMetadataOidcProvidersInner, _$LoginMetadataOidcProvidersInner];

  @override
  final String wireName = r'LoginMetadataOidcProvidersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginMetadataOidcProvidersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginMetadataOidcProvidersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LoginMetadataOidcProvidersInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginMetadataOidcProvidersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginMetadataOidcProvidersInnerBuilder();
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

