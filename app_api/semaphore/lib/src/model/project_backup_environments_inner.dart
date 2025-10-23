//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_backup_environments_inner.g.dart';

/// ProjectBackupEnvironmentsInner
///
/// Properties:
/// * [name] 
/// * [password] 
/// * [json] 
/// * [env] 
@BuiltValue()
abstract class ProjectBackupEnvironmentsInner implements Built<ProjectBackupEnvironmentsInner, ProjectBackupEnvironmentsInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'json')
  String? get json;

  @BuiltValueField(wireName: r'env')
  String? get env;

  ProjectBackupEnvironmentsInner._();

  factory ProjectBackupEnvironmentsInner([void updates(ProjectBackupEnvironmentsInnerBuilder b)]) = _$ProjectBackupEnvironmentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectBackupEnvironmentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectBackupEnvironmentsInner> get serializer => _$ProjectBackupEnvironmentsInnerSerializer();
}

class _$ProjectBackupEnvironmentsInnerSerializer implements PrimitiveSerializer<ProjectBackupEnvironmentsInner> {
  @override
  final Iterable<Type> types = const [ProjectBackupEnvironmentsInner, _$ProjectBackupEnvironmentsInner];

  @override
  final String wireName = r'ProjectBackupEnvironmentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectBackupEnvironmentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.json != null) {
      yield r'json';
      yield serializers.serialize(
        object.json,
        specifiedType: const FullType(String),
      );
    }
    if (object.env != null) {
      yield r'env';
      yield serializers.serialize(
        object.env,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectBackupEnvironmentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectBackupEnvironmentsInnerBuilder result,
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
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'json':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.json = valueDes;
          break;
        case r'env':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.env = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectBackupEnvironmentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectBackupEnvironmentsInnerBuilder();
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

