//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_backup_keys_inner.g.dart';

/// ProjectBackupKeysInner
///
/// Properties:
/// * [name] 
/// * [type] 
@BuiltValue()
abstract class ProjectBackupKeysInner implements Built<ProjectBackupKeysInner, ProjectBackupKeysInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  ProjectBackupKeysInnerTypeEnum? get type;
  // enum typeEnum {  ssh,  login_password,  none,  };

  ProjectBackupKeysInner._();

  factory ProjectBackupKeysInner([void updates(ProjectBackupKeysInnerBuilder b)]) = _$ProjectBackupKeysInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectBackupKeysInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectBackupKeysInner> get serializer => _$ProjectBackupKeysInnerSerializer();
}

class _$ProjectBackupKeysInnerSerializer implements PrimitiveSerializer<ProjectBackupKeysInner> {
  @override
  final Iterable<Type> types = const [ProjectBackupKeysInner, _$ProjectBackupKeysInner];

  @override
  final String wireName = r'ProjectBackupKeysInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectBackupKeysInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ProjectBackupKeysInnerTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectBackupKeysInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectBackupKeysInnerBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectBackupKeysInnerTypeEnum),
          ) as ProjectBackupKeysInnerTypeEnum;
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
  ProjectBackupKeysInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectBackupKeysInnerBuilder();
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

class ProjectBackupKeysInnerTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ssh')
  static const ProjectBackupKeysInnerTypeEnum ssh = _$projectBackupKeysInnerTypeEnum_ssh;
  @BuiltValueEnumConst(wireName: r'login_password')
  static const ProjectBackupKeysInnerTypeEnum loginPassword = _$projectBackupKeysInnerTypeEnum_loginPassword;
  @BuiltValueEnumConst(wireName: r'none')
  static const ProjectBackupKeysInnerTypeEnum none = _$projectBackupKeysInnerTypeEnum_none;

  static Serializer<ProjectBackupKeysInnerTypeEnum> get serializer => _$projectBackupKeysInnerTypeEnumSerializer;

  const ProjectBackupKeysInnerTypeEnum._(String name): super(name);

  static BuiltSet<ProjectBackupKeysInnerTypeEnum> get values => _$projectBackupKeysInnerTypeEnumValues;
  static ProjectBackupKeysInnerTypeEnum valueOf(String name) => _$projectBackupKeysInnerTypeEnumValueOf(name);
}

