//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ansible_task_params.g.dart';

/// AnsibleTaskParams
///
/// Properties:
/// * [debug] 
/// * [dryRun] 
/// * [diff] 
/// * [limit] 
/// * [tags] 
/// * [skipTags] 
@BuiltValue(instantiable: false)
abstract class AnsibleTaskParams  {
  @BuiltValueField(wireName: r'debug')
  bool? get debug;

  @BuiltValueField(wireName: r'dry_run')
  bool? get dryRun;

  @BuiltValueField(wireName: r'diff')
  bool? get diff;

  @BuiltValueField(wireName: r'limit')
  BuiltList<String>? get limit;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'skip_tags')
  BuiltList<String>? get skipTags;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnsibleTaskParams> get serializer => _$AnsibleTaskParamsSerializer();
}

class _$AnsibleTaskParamsSerializer implements PrimitiveSerializer<AnsibleTaskParams> {
  @override
  final Iterable<Type> types = const [AnsibleTaskParams];

  @override
  final String wireName = r'AnsibleTaskParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnsibleTaskParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.debug != null) {
      yield r'debug';
      yield serializers.serialize(
        object.debug,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dryRun != null) {
      yield r'dry_run';
      yield serializers.serialize(
        object.dryRun,
        specifiedType: const FullType(bool),
      );
    }
    if (object.diff != null) {
      yield r'diff';
      yield serializers.serialize(
        object.diff,
        specifiedType: const FullType(bool),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.skipTags != null) {
      yield r'skip_tags';
      yield serializers.serialize(
        object.skipTags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnsibleTaskParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AnsibleTaskParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($AnsibleTaskParams)) as $AnsibleTaskParams;
  }
}

/// a concrete implementation of [AnsibleTaskParams], since [AnsibleTaskParams] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AnsibleTaskParams implements AnsibleTaskParams, Built<$AnsibleTaskParams, $AnsibleTaskParamsBuilder> {
  $AnsibleTaskParams._();

  factory $AnsibleTaskParams([void Function($AnsibleTaskParamsBuilder)? updates]) = _$$AnsibleTaskParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AnsibleTaskParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AnsibleTaskParams> get serializer => _$$AnsibleTaskParamsSerializer();
}

class _$$AnsibleTaskParamsSerializer implements PrimitiveSerializer<$AnsibleTaskParams> {
  @override
  final Iterable<Type> types = const [$AnsibleTaskParams, _$$AnsibleTaskParams];

  @override
  final String wireName = r'$AnsibleTaskParams';

  @override
  Object serialize(
    Serializers serializers,
    $AnsibleTaskParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AnsibleTaskParams))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnsibleTaskParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'debug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.debug = valueDes;
          break;
        case r'dry_run':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.dryRun = valueDes;
          break;
        case r'diff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.diff = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.limit.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'skip_tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.skipTags.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $AnsibleTaskParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AnsibleTaskParamsBuilder();
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

