//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:semaphore_api/src/model/project_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_project_id_put_request.g.dart';

/// ProjectProjectIdPutRequest
///
/// Properties:
/// * [name] 
/// * [alert] 
/// * [alertChat] 
/// * [maxParallelTasks] 
/// * [type] 
/// * [demo] - Create Demo project resources?
/// * [id] 
@BuiltValue()
abstract class ProjectProjectIdPutRequest implements ProjectRequest, Built<ProjectProjectIdPutRequest, ProjectProjectIdPutRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  ProjectProjectIdPutRequest._();

  factory ProjectProjectIdPutRequest([void updates(ProjectProjectIdPutRequestBuilder b)]) = _$ProjectProjectIdPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectProjectIdPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectProjectIdPutRequest> get serializer => _$ProjectProjectIdPutRequestSerializer();
}

class _$ProjectProjectIdPutRequestSerializer implements PrimitiveSerializer<ProjectProjectIdPutRequest> {
  @override
  final Iterable<Type> types = const [ProjectProjectIdPutRequest, _$ProjectProjectIdPutRequest];

  @override
  final String wireName = r'ProjectProjectIdPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectProjectIdPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alert != null) {
      yield r'alert';
      yield serializers.serialize(
        object.alert,
        specifiedType: const FullType(bool),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.alertChat != null) {
      yield r'alert_chat';
      yield serializers.serialize(
        object.alertChat,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxParallelTasks != null) {
      yield r'max_parallel_tasks';
      yield serializers.serialize(
        object.maxParallelTasks,
        specifiedType: const FullType(int),
      );
    }
    if (object.demo != null) {
      yield r'demo';
      yield serializers.serialize(
        object.demo,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectProjectIdPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectProjectIdPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alert':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.alert = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'alert_chat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.alertChat = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'max_parallel_tasks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxParallelTasks = valueDes;
          break;
        case r'demo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.demo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectProjectIdPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectProjectIdPutRequestBuilder();
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

