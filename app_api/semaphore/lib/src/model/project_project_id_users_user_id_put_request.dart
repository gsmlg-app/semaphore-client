//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_project_id_users_user_id_put_request.g.dart';

/// ProjectProjectIdUsersUserIdPutRequest
///
/// Properties:
/// * [role] 
@BuiltValue()
abstract class ProjectProjectIdUsersUserIdPutRequest implements Built<ProjectProjectIdUsersUserIdPutRequest, ProjectProjectIdUsersUserIdPutRequestBuilder> {
  @BuiltValueField(wireName: r'role')
  ProjectProjectIdUsersUserIdPutRequestRoleEnum? get role;
  // enum roleEnum {  owner,  manager,  task_runner,  guest,  };

  ProjectProjectIdUsersUserIdPutRequest._();

  factory ProjectProjectIdUsersUserIdPutRequest([void updates(ProjectProjectIdUsersUserIdPutRequestBuilder b)]) = _$ProjectProjectIdUsersUserIdPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectProjectIdUsersUserIdPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectProjectIdUsersUserIdPutRequest> get serializer => _$ProjectProjectIdUsersUserIdPutRequestSerializer();
}

class _$ProjectProjectIdUsersUserIdPutRequestSerializer implements PrimitiveSerializer<ProjectProjectIdUsersUserIdPutRequest> {
  @override
  final Iterable<Type> types = const [ProjectProjectIdUsersUserIdPutRequest, _$ProjectProjectIdUsersUserIdPutRequest];

  @override
  final String wireName = r'ProjectProjectIdUsersUserIdPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectProjectIdUsersUserIdPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(ProjectProjectIdUsersUserIdPutRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectProjectIdUsersUserIdPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectProjectIdUsersUserIdPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectProjectIdUsersUserIdPutRequestRoleEnum),
          ) as ProjectProjectIdUsersUserIdPutRequestRoleEnum;
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
  ProjectProjectIdUsersUserIdPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectProjectIdUsersUserIdPutRequestBuilder();
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

class ProjectProjectIdUsersUserIdPutRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'owner')
  static const ProjectProjectIdUsersUserIdPutRequestRoleEnum owner = _$projectProjectIdUsersUserIdPutRequestRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'manager')
  static const ProjectProjectIdUsersUserIdPutRequestRoleEnum manager = _$projectProjectIdUsersUserIdPutRequestRoleEnum_manager;
  @BuiltValueEnumConst(wireName: r'task_runner')
  static const ProjectProjectIdUsersUserIdPutRequestRoleEnum taskRunner = _$projectProjectIdUsersUserIdPutRequestRoleEnum_taskRunner;
  @BuiltValueEnumConst(wireName: r'guest')
  static const ProjectProjectIdUsersUserIdPutRequestRoleEnum guest = _$projectProjectIdUsersUserIdPutRequestRoleEnum_guest;

  static Serializer<ProjectProjectIdUsersUserIdPutRequestRoleEnum> get serializer => _$projectProjectIdUsersUserIdPutRequestRoleEnumSerializer;

  const ProjectProjectIdUsersUserIdPutRequestRoleEnum._(String name): super(name);

  static BuiltSet<ProjectProjectIdUsersUserIdPutRequestRoleEnum> get values => _$projectProjectIdUsersUserIdPutRequestRoleEnumValues;
  static ProjectProjectIdUsersUserIdPutRequestRoleEnum valueOf(String name) => _$projectProjectIdUsersUserIdPutRequestRoleEnumValueOf(name);
}

