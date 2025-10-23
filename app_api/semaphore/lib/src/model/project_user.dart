//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_user.g.dart';

/// ProjectUser
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [username] 
/// * [role] 
@BuiltValue()
abstract class ProjectUser implements Built<ProjectUser, ProjectUserBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'role')
  ProjectUserRoleEnum? get role;
  // enum roleEnum {  owner,  manager,  task_runner,  guest,  };

  ProjectUser._();

  factory ProjectUser([void updates(ProjectUserBuilder b)]) = _$ProjectUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectUser> get serializer => _$ProjectUserSerializer();
}

class _$ProjectUserSerializer implements PrimitiveSerializer<ProjectUser> {
  @override
  final Iterable<Type> types = const [ProjectUser, _$ProjectUser];

  @override
  final String wireName = r'ProjectUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectUser object, {
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
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(ProjectUserRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectUserBuilder result,
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
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectUserRoleEnum),
          ) as ProjectUserRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectUserBuilder();
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

class ProjectUserRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'owner')
  static const ProjectUserRoleEnum owner = _$projectUserRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'manager')
  static const ProjectUserRoleEnum manager = _$projectUserRoleEnum_manager;
  @BuiltValueEnumConst(wireName: r'task_runner')
  static const ProjectUserRoleEnum taskRunner = _$projectUserRoleEnum_taskRunner;
  @BuiltValueEnumConst(wireName: r'guest')
  static const ProjectUserRoleEnum guest = _$projectUserRoleEnum_guest;

  static Serializer<ProjectUserRoleEnum> get serializer => _$projectUserRoleEnumSerializer;

  const ProjectUserRoleEnum._(String name): super(name);

  static BuiltSet<ProjectUserRoleEnum> get values => _$projectUserRoleEnumValues;
  static ProjectUserRoleEnum valueOf(String name) => _$projectUserRoleEnumValueOf(name);
}

