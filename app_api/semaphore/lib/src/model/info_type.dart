//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'info_type.g.dart';

/// InfoType
///
/// Properties:
/// * [version] 
/// * [ansible] 
/// * [webHost] 
/// * [useRemoteRunner] 
/// * [authMethods] 
/// * [gitClient] 
/// * [scheduleTimezone] 
/// * [premiumFeatures] 
@BuiltValue()
abstract class InfoType implements Built<InfoType, InfoTypeBuilder> {
  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'ansible')
  String? get ansible;

  @BuiltValueField(wireName: r'web_host')
  String? get webHost;

  @BuiltValueField(wireName: r'use_remote_runner')
  bool? get useRemoteRunner;

  @BuiltValueField(wireName: r'auth_methods')
  JsonObject? get authMethods;

  @BuiltValueField(wireName: r'git_client')
  String? get gitClient;

  @BuiltValueField(wireName: r'schedule_timezone')
  String? get scheduleTimezone;

  @BuiltValueField(wireName: r'premium_features')
  JsonObject? get premiumFeatures;

  InfoType._();

  factory InfoType([void updates(InfoTypeBuilder b)]) = _$InfoType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfoTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfoType> get serializer => _$InfoTypeSerializer();
}

class _$InfoTypeSerializer implements PrimitiveSerializer<InfoType> {
  @override
  final Iterable<Type> types = const [InfoType, _$InfoType];

  @override
  final String wireName = r'InfoType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfoType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.ansible != null) {
      yield r'ansible';
      yield serializers.serialize(
        object.ansible,
        specifiedType: const FullType(String),
      );
    }
    if (object.webHost != null) {
      yield r'web_host';
      yield serializers.serialize(
        object.webHost,
        specifiedType: const FullType(String),
      );
    }
    if (object.useRemoteRunner != null) {
      yield r'use_remote_runner';
      yield serializers.serialize(
        object.useRemoteRunner,
        specifiedType: const FullType(bool),
      );
    }
    if (object.authMethods != null) {
      yield r'auth_methods';
      yield serializers.serialize(
        object.authMethods,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.gitClient != null) {
      yield r'git_client';
      yield serializers.serialize(
        object.gitClient,
        specifiedType: const FullType(String),
      );
    }
    if (object.scheduleTimezone != null) {
      yield r'schedule_timezone';
      yield serializers.serialize(
        object.scheduleTimezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.premiumFeatures != null) {
      yield r'premium_features';
      yield serializers.serialize(
        object.premiumFeatures,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InfoType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InfoTypeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'ansible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ansible = valueDes;
          break;
        case r'web_host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.webHost = valueDes;
          break;
        case r'use_remote_runner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useRemoteRunner = valueDes;
          break;
        case r'auth_methods':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.authMethods = valueDes;
          break;
        case r'git_client':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gitClient = valueDes;
          break;
        case r'schedule_timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scheduleTimezone = valueDes;
          break;
        case r'premium_features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.premiumFeatures = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfoType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfoTypeBuilder();
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

