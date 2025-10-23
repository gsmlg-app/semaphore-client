//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_request.g.dart';

/// ProjectRequest
///
/// Properties:
/// * [name] 
/// * [alert] 
/// * [alertChat] 
/// * [maxParallelTasks] 
/// * [type] 
/// * [demo] - Create Demo project resources?
@BuiltValue(instantiable: false)
abstract class ProjectRequest  {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'alert')
  bool? get alert;

  @BuiltValueField(wireName: r'alert_chat')
  String? get alertChat;

  @BuiltValueField(wireName: r'max_parallel_tasks')
  int? get maxParallelTasks;

  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Create Demo project resources?
  @BuiltValueField(wireName: r'demo')
  bool? get demo;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectRequest> get serializer => _$ProjectRequestSerializer();
}

class _$ProjectRequestSerializer implements PrimitiveSerializer<ProjectRequest> {
  @override
  final Iterable<Type> types = const [ProjectRequest];

  @override
  final String wireName = r'ProjectRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.alert != null) {
      yield r'alert';
      yield serializers.serialize(
        object.alert,
        specifiedType: const FullType(bool),
      );
    }
    if (object.alertChat != null) {
      yield r'alert_chat';
      yield serializers.serialize(
        object.alertChat,
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
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
    ProjectRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ProjectRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ProjectRequest)) as $ProjectRequest;
  }
}

/// a concrete implementation of [ProjectRequest], since [ProjectRequest] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ProjectRequest implements ProjectRequest, Built<$ProjectRequest, $ProjectRequestBuilder> {
  $ProjectRequest._();

  factory $ProjectRequest([void Function($ProjectRequestBuilder)? updates]) = _$$ProjectRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ProjectRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ProjectRequest> get serializer => _$$ProjectRequestSerializer();
}

class _$$ProjectRequestSerializer implements PrimitiveSerializer<$ProjectRequest> {
  @override
  final Iterable<Type> types = const [$ProjectRequest, _$$ProjectRequest];

  @override
  final String wireName = r'$ProjectRequest';

  @override
  Object serialize(
    Serializers serializers,
    $ProjectRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ProjectRequest))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'alert':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.alert = valueDes;
          break;
        case r'alert_chat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.alertChat = valueDes;
          break;
        case r'max_parallel_tasks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxParallelTasks = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
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
  $ProjectRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ProjectRequestBuilder();
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

