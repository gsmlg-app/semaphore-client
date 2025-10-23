//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'terraform_task_params.g.dart';

/// TerraformTaskParams
///
/// Properties:
/// * [plan] 
/// * [destroy] 
/// * [autoApprove] 
/// * [upgrade] 
@BuiltValue(instantiable: false)
abstract class TerraformTaskParams  {
  @BuiltValueField(wireName: r'plan')
  bool? get plan;

  @BuiltValueField(wireName: r'destroy')
  bool? get destroy;

  @BuiltValueField(wireName: r'auto_approve')
  bool? get autoApprove;

  @BuiltValueField(wireName: r'upgrade')
  bool? get upgrade;

  @BuiltValueSerializer(custom: true)
  static Serializer<TerraformTaskParams> get serializer => _$TerraformTaskParamsSerializer();
}

class _$TerraformTaskParamsSerializer implements PrimitiveSerializer<TerraformTaskParams> {
  @override
  final Iterable<Type> types = const [TerraformTaskParams];

  @override
  final String wireName = r'TerraformTaskParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TerraformTaskParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.plan != null) {
      yield r'plan';
      yield serializers.serialize(
        object.plan,
        specifiedType: const FullType(bool),
      );
    }
    if (object.destroy != null) {
      yield r'destroy';
      yield serializers.serialize(
        object.destroy,
        specifiedType: const FullType(bool),
      );
    }
    if (object.autoApprove != null) {
      yield r'auto_approve';
      yield serializers.serialize(
        object.autoApprove,
        specifiedType: const FullType(bool),
      );
    }
    if (object.upgrade != null) {
      yield r'upgrade';
      yield serializers.serialize(
        object.upgrade,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TerraformTaskParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  TerraformTaskParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($TerraformTaskParams)) as $TerraformTaskParams;
  }
}

/// a concrete implementation of [TerraformTaskParams], since [TerraformTaskParams] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TerraformTaskParams implements TerraformTaskParams, Built<$TerraformTaskParams, $TerraformTaskParamsBuilder> {
  $TerraformTaskParams._();

  factory $TerraformTaskParams([void Function($TerraformTaskParamsBuilder)? updates]) = _$$TerraformTaskParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TerraformTaskParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TerraformTaskParams> get serializer => _$$TerraformTaskParamsSerializer();
}

class _$$TerraformTaskParamsSerializer implements PrimitiveSerializer<$TerraformTaskParams> {
  @override
  final Iterable<Type> types = const [$TerraformTaskParams, _$$TerraformTaskParams];

  @override
  final String wireName = r'$TerraformTaskParams';

  @override
  Object serialize(
    Serializers serializers,
    $TerraformTaskParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(TerraformTaskParams))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TerraformTaskParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.plan = valueDes;
          break;
        case r'destroy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.destroy = valueDes;
          break;
        case r'auto_approve':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoApprove = valueDes;
          break;
        case r'upgrade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.upgrade = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $TerraformTaskParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TerraformTaskParamsBuilder();
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

