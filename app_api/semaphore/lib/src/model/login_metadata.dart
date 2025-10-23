//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:semaphore_api/src/model/login_metadata_oidc_providers_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_metadata.g.dart';

/// LoginMetadata
///
/// Properties:
/// * [oidcProviders] - List of OIDC providers
@BuiltValue()
abstract class LoginMetadata implements Built<LoginMetadata, LoginMetadataBuilder> {
  /// List of OIDC providers
  @BuiltValueField(wireName: r'oidc_providers')
  BuiltList<LoginMetadataOidcProvidersInner>? get oidcProviders;

  LoginMetadata._();

  factory LoginMetadata([void updates(LoginMetadataBuilder b)]) = _$LoginMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginMetadata> get serializer => _$LoginMetadataSerializer();
}

class _$LoginMetadataSerializer implements PrimitiveSerializer<LoginMetadata> {
  @override
  final Iterable<Type> types = const [LoginMetadata, _$LoginMetadata];

  @override
  final String wireName = r'LoginMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.oidcProviders != null) {
      yield r'oidc_providers';
      yield serializers.serialize(
        object.oidcProviders,
        specifiedType: const FullType(BuiltList, [FullType(LoginMetadataOidcProvidersInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LoginMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'oidc_providers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LoginMetadataOidcProvidersInner)]),
          ) as BuiltList<LoginMetadataOidcProvidersInner>;
          result.oidcProviders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginMetadataBuilder();
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

