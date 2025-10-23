//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_project_id_users_post_request.g.dart';

/// ProjectProjectIdUsersPostRequest
///
/// Properties:
/// * [userId] 
/// * [role] 
@BuiltValue()
abstract class ProjectProjectIdUsersPostRequest implements Built<ProjectProjectIdUsersPostRequest, ProjectProjectIdUsersPostRequestBuilder> {
  @BuiltValueField(wireName: r'user_id')
  int? get userId;

  @BuiltValueField(wireName: r'role')
  ProjectProjectIdUsersPostRequestRoleEnum? get role;
  // enum roleEnum {  owner,  manager,  task_runner,  guest,  };

  ProjectProjectIdUsersPostRequest._();

  factory ProjectProjectIdUsersPostRequest([void updates(ProjectProjectIdUsersPostRequestBuilder b)]) = _$ProjectProjectIdUsersPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectProjectIdUsersPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectProjectIdUsersPostRequest> get serializer => _$ProjectProjectIdUsersPostRequestSerializer();
}

class _$ProjectProjectIdUsersPostRequestSerializer implements PrimitiveSerializer<ProjectProjectIdUsersPostRequest> {
  @override
  final Iterable<Type> types = const [ProjectProjectIdUsersPostRequest, _$ProjectProjectIdUsersPostRequest];

  @override
  final String wireName = r'ProjectProjectIdUsersPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectProjectIdUsersPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(int),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(ProjectProjectIdUsersPostRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectProjectIdUsersPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectProjectIdUsersPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectProjectIdUsersPostRequestRoleEnum),
          ) as ProjectProjectIdUsersPostRequestRoleEnum;
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
  ProjectProjectIdUsersPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectProjectIdUsersPostRequestBuilder();
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

class ProjectProjectIdUsersPostRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'owner')
  static const ProjectProjectIdUsersPostRequestRoleEnum owner = _$projectProjectIdUsersPostRequestRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'manager')
  static const ProjectProjectIdUsersPostRequestRoleEnum manager = _$projectProjectIdUsersPostRequestRoleEnum_manager;
  @BuiltValueEnumConst(wireName: r'task_runner')
  static const ProjectProjectIdUsersPostRequestRoleEnum taskRunner = _$projectProjectIdUsersPostRequestRoleEnum_taskRunner;
  @BuiltValueEnumConst(wireName: r'guest')
  static const ProjectProjectIdUsersPostRequestRoleEnum guest = _$projectProjectIdUsersPostRequestRoleEnum_guest;

  static Serializer<ProjectProjectIdUsersPostRequestRoleEnum> get serializer => _$projectProjectIdUsersPostRequestRoleEnumSerializer;

  const ProjectProjectIdUsersPostRequestRoleEnum._(String name): super(name);

  static BuiltSet<ProjectProjectIdUsersPostRequestRoleEnum> get values => _$projectProjectIdUsersPostRequestRoleEnumValues;
  static ProjectProjectIdUsersPostRequestRoleEnum valueOf(String name) => _$projectProjectIdUsersPostRequestRoleEnumValueOf(name);
}

