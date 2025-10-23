//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_backup_inventories_inner.g.dart';

/// ProjectBackupInventoriesInner
///
/// Properties:
/// * [name] 
/// * [inventory] 
/// * [sshKey] 
/// * [becomeKey] 
/// * [type] 
@BuiltValue()
abstract class ProjectBackupInventoriesInner implements Built<ProjectBackupInventoriesInner, ProjectBackupInventoriesInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'inventory')
  String? get inventory;

  @BuiltValueField(wireName: r'ssh_key')
  String? get sshKey;

  @BuiltValueField(wireName: r'become_key')
  String? get becomeKey;

  @BuiltValueField(wireName: r'type')
  ProjectBackupInventoriesInnerTypeEnum? get type;
  // enum typeEnum {  static,  static-yaml,  file,  };

  ProjectBackupInventoriesInner._();

  factory ProjectBackupInventoriesInner([void updates(ProjectBackupInventoriesInnerBuilder b)]) = _$ProjectBackupInventoriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectBackupInventoriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectBackupInventoriesInner> get serializer => _$ProjectBackupInventoriesInnerSerializer();
}

class _$ProjectBackupInventoriesInnerSerializer implements PrimitiveSerializer<ProjectBackupInventoriesInner> {
  @override
  final Iterable<Type> types = const [ProjectBackupInventoriesInner, _$ProjectBackupInventoriesInner];

  @override
  final String wireName = r'ProjectBackupInventoriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectBackupInventoriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.inventory != null) {
      yield r'inventory';
      yield serializers.serialize(
        object.inventory,
        specifiedType: const FullType(String),
      );
    }
    if (object.sshKey != null) {
      yield r'ssh_key';
      yield serializers.serialize(
        object.sshKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.becomeKey != null) {
      yield r'become_key';
      yield serializers.serialize(
        object.becomeKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ProjectBackupInventoriesInnerTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectBackupInventoriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectBackupInventoriesInnerBuilder result,
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
        case r'inventory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inventory = valueDes;
          break;
        case r'ssh_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sshKey = valueDes;
          break;
        case r'become_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.becomeKey = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectBackupInventoriesInnerTypeEnum),
          ) as ProjectBackupInventoriesInnerTypeEnum;
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
  ProjectBackupInventoriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectBackupInventoriesInnerBuilder();
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

class ProjectBackupInventoriesInnerTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'static')
  static const ProjectBackupInventoriesInnerTypeEnum static_ = _$projectBackupInventoriesInnerTypeEnum_static_;
  @BuiltValueEnumConst(wireName: r'static-yaml')
  static const ProjectBackupInventoriesInnerTypeEnum staticYaml = _$projectBackupInventoriesInnerTypeEnum_staticYaml;
  @BuiltValueEnumConst(wireName: r'file')
  static const ProjectBackupInventoriesInnerTypeEnum file = _$projectBackupInventoriesInnerTypeEnum_file;

  static Serializer<ProjectBackupInventoriesInnerTypeEnum> get serializer => _$projectBackupInventoriesInnerTypeEnumSerializer;

  const ProjectBackupInventoriesInnerTypeEnum._(String name): super(name);

  static BuiltSet<ProjectBackupInventoriesInnerTypeEnum> get values => _$projectBackupInventoriesInnerTypeEnumValues;
  static ProjectBackupInventoriesInnerTypeEnum valueOf(String name) => _$projectBackupInventoriesInnerTypeEnumValueOf(name);
}

