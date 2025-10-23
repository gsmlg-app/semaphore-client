//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:semaphore_api/src/model/task_params.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_prams.g.dart';

/// TaskPrams
///
/// Properties:
/// * [environment] 
/// * [gitBranch] 
/// * [message] 
/// * [inventoryId] 
/// * [arguments] 
/// * [params] 
@BuiltValue()
abstract class TaskPrams implements Built<TaskPrams, TaskPramsBuilder> {
  @BuiltValueField(wireName: r'environment')
  String? get environment;

  @BuiltValueField(wireName: r'git_branch')
  String? get gitBranch;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'inventory_id')
  int? get inventoryId;

  @BuiltValueField(wireName: r'arguments')
  String? get arguments;

  @BuiltValueField(wireName: r'params')
  TaskParams? get params;

  TaskPrams._();

  factory TaskPrams([void updates(TaskPramsBuilder b)]) = _$TaskPrams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskPramsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskPrams> get serializer => _$TaskPramsSerializer();
}

class _$TaskPramsSerializer implements PrimitiveSerializer<TaskPrams> {
  @override
  final Iterable<Type> types = const [TaskPrams, _$TaskPrams];

  @override
  final String wireName = r'TaskPrams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskPrams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.environment != null) {
      yield r'environment';
      yield serializers.serialize(
        object.environment,
        specifiedType: const FullType(String),
      );
    }
    if (object.gitBranch != null) {
      yield r'git_branch';
      yield serializers.serialize(
        object.gitBranch,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.inventoryId != null) {
      yield r'inventory_id';
      yield serializers.serialize(
        object.inventoryId,
        specifiedType: const FullType(int),
      );
    }
    if (object.arguments != null) {
      yield r'arguments';
      yield serializers.serialize(
        object.arguments,
        specifiedType: const FullType(String),
      );
    }
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(TaskParams),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskPrams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskPramsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'environment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.environment = valueDes;
          break;
        case r'git_branch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gitBranch = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'inventory_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.inventoryId = valueDes;
          break;
        case r'arguments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.arguments = valueDes;
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TaskParams),
          ) as TaskParams;
          result.params.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskPrams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskPramsBuilder();
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

