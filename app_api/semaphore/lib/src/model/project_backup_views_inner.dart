//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_backup_views_inner.g.dart';

/// ProjectBackupViewsInner
///
/// Properties:
/// * [name] 
/// * [position] 
@BuiltValue()
abstract class ProjectBackupViewsInner implements Built<ProjectBackupViewsInner, ProjectBackupViewsInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'position')
  int? get position;

  ProjectBackupViewsInner._();

  factory ProjectBackupViewsInner([void updates(ProjectBackupViewsInnerBuilder b)]) = _$ProjectBackupViewsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectBackupViewsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectBackupViewsInner> get serializer => _$ProjectBackupViewsInnerSerializer();
}

class _$ProjectBackupViewsInnerSerializer implements PrimitiveSerializer<ProjectBackupViewsInner> {
  @override
  final Iterable<Type> types = const [ProjectBackupViewsInner, _$ProjectBackupViewsInner];

  @override
  final String wireName = r'ProjectBackupViewsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectBackupViewsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.position != null) {
      yield r'position';
      yield serializers.serialize(
        object.position,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectBackupViewsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectBackupViewsInnerBuilder result,
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
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.position = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectBackupViewsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectBackupViewsInnerBuilder();
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

