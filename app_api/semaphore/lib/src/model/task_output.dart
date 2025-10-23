//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_output.g.dart';

/// TaskOutput
///
/// Properties:
/// * [taskId] 
/// * [time] 
/// * [output] 
@BuiltValue()
abstract class TaskOutput implements Built<TaskOutput, TaskOutputBuilder> {
  @BuiltValueField(wireName: r'task_id')
  int? get taskId;

  @BuiltValueField(wireName: r'time')
  DateTime? get time;

  @BuiltValueField(wireName: r'output')
  String? get output;

  TaskOutput._();

  factory TaskOutput([void updates(TaskOutputBuilder b)]) = _$TaskOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskOutput> get serializer => _$TaskOutputSerializer();
}

class _$TaskOutputSerializer implements PrimitiveSerializer<TaskOutput> {
  @override
  final Iterable<Type> types = const [TaskOutput, _$TaskOutput];

  @override
  final String wireName = r'TaskOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.taskId != null) {
      yield r'task_id';
      yield serializers.serialize(
        object.taskId,
        specifiedType: const FullType(int),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.output != null) {
      yield r'output';
      yield serializers.serialize(
        object.output,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskOutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'task_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.taskId = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        case r'output':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.output = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskOutputBuilder();
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

