//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:semaphore_api/src/model/ansible_task_params.dart';
import 'package:built_collection/built_collection.dart';
import 'package:semaphore_api/src/model/terraform_task_params.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_params.g.dart';

/// TaskParams
///
/// Properties:
/// * [debug] 
/// * [dryRun] 
/// * [diff] 
/// * [limit] 
/// * [tags] 
/// * [skipTags] 
/// * [plan] 
/// * [destroy] 
/// * [autoApprove] 
/// * [upgrade] 
@BuiltValue()
abstract class TaskParams implements AnsibleTaskParams, TerraformTaskParams, Built<TaskParams, TaskParamsBuilder> {
  TaskParams._();

  factory TaskParams([void updates(TaskParamsBuilder b)]) = _$TaskParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskParams> get serializer => _$TaskParamsSerializer();
}

class _$TaskParamsSerializer implements PrimitiveSerializer<TaskParams> {
  @override
  final Iterable<Type> types = const [TaskParams, _$TaskParams];

  @override
  final String wireName = r'TaskParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskParams object, {
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
    if (object.upgrade != null) {
      yield r'upgrade';
      yield serializers.serialize(
        object.upgrade,
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
    if (object.skipTags != null) {
      yield r'skip_tags';
      yield serializers.serialize(
        object.skipTags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.destroy != null) {
      yield r'destroy';
      yield serializers.serialize(
        object.destroy,
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
    if (object.plan != null) {
      yield r'plan';
      yield serializers.serialize(
        object.plan,
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
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskParamsBuilder result,
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
        case r'upgrade':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.upgrade = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.limit.replace(valueDes);
          break;
        case r'skip_tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.skipTags.replace(valueDes);
          break;
        case r'destroy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.destroy = valueDes;
          break;
        case r'diff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.diff = valueDes;
          break;
        case r'plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.plan = valueDes;
          break;
        case r'auto_approve':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoApprove = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskParamsBuilder();
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

