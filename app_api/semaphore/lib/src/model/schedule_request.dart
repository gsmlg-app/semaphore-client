//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:semaphore_api/src/model/task_prams.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schedule_request.g.dart';

/// ScheduleRequest
///
/// Properties:
/// * [id] 
/// * [cronFormat] 
/// * [projectId] 
/// * [templateId] 
/// * [name] 
/// * [active] 
/// * [taskParams] 
@BuiltValue()
abstract class ScheduleRequest implements Built<ScheduleRequest, ScheduleRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'cron_format')
  String? get cronFormat;

  @BuiltValueField(wireName: r'project_id')
  int? get projectId;

  @BuiltValueField(wireName: r'template_id')
  int? get templateId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'active')
  bool? get active;

  @BuiltValueField(wireName: r'task_params')
  TaskPrams? get taskParams;

  ScheduleRequest._();

  factory ScheduleRequest([void updates(ScheduleRequestBuilder b)]) = _$ScheduleRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduleRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduleRequest> get serializer => _$ScheduleRequestSerializer();
}

class _$ScheduleRequestSerializer implements PrimitiveSerializer<ScheduleRequest> {
  @override
  final Iterable<Type> types = const [ScheduleRequest, _$ScheduleRequest];

  @override
  final String wireName = r'ScheduleRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.cronFormat != null) {
      yield r'cron_format';
      yield serializers.serialize(
        object.cronFormat,
        specifiedType: const FullType(String),
      );
    }
    if (object.projectId != null) {
      yield r'project_id';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(int),
      );
    }
    if (object.templateId != null) {
      yield r'template_id';
      yield serializers.serialize(
        object.templateId,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.taskParams != null) {
      yield r'task_params';
      yield serializers.serialize(
        object.taskParams,
        specifiedType: const FullType(TaskPrams),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScheduleRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'cron_format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cronFormat = valueDes;
          break;
        case r'project_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.projectId = valueDes;
          break;
        case r'template_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.templateId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        case r'task_params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TaskPrams),
          ) as TaskPrams;
          result.taskParams.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScheduleRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduleRequestBuilder();
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

