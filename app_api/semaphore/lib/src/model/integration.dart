//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:semaphore_api/src/model/task_prams.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration.g.dart';

/// Integration
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [projectId] 
/// * [templateId] 
/// * [taskParams] 
@BuiltValue()
abstract class Integration implements Built<Integration, IntegrationBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'project_id')
  int? get projectId;

  @BuiltValueField(wireName: r'template_id')
  int? get templateId;

  @BuiltValueField(wireName: r'task_params')
  TaskPrams? get taskParams;

  Integration._();

  factory Integration([void updates(IntegrationBuilder b)]) = _$Integration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntegrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Integration> get serializer => _$IntegrationSerializer();
}

class _$IntegrationSerializer implements PrimitiveSerializer<Integration> {
  @override
  final Iterable<Type> types = const [Integration, _$Integration];

  @override
  final String wireName = r'Integration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Integration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    Integration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IntegrationBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
  Integration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationBuilder();
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

