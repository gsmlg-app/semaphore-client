//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_backup_meta.g.dart';

/// ProjectBackupMeta
///
/// Properties:
/// * [name] 
/// * [alert] 
/// * [alertChat] 
/// * [maxParallelTasks] 
/// * [type] 
@BuiltValue()
abstract class ProjectBackupMeta implements Built<ProjectBackupMeta, ProjectBackupMetaBuilder> {
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

  ProjectBackupMeta._();

  factory ProjectBackupMeta([void updates(ProjectBackupMetaBuilder b)]) = _$ProjectBackupMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectBackupMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectBackupMeta> get serializer => _$ProjectBackupMetaSerializer();
}

class _$ProjectBackupMetaSerializer implements PrimitiveSerializer<ProjectBackupMeta> {
  @override
  final Iterable<Type> types = const [ProjectBackupMeta, _$ProjectBackupMeta];

  @override
  final String wireName = r'ProjectBackupMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectBackupMeta object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectBackupMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectBackupMetaBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectBackupMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectBackupMetaBuilder();
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

