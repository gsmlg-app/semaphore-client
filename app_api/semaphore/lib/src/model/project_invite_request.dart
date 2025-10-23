//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_invite_request.g.dart';

/// ProjectInviteRequest
///
/// Properties:
/// * [email] - Email address to invite (use either user_id or email, not both)
/// * [role] 
/// * [expiresAt] - When the invite should expire (optional, defaults to 7 days)
@BuiltValue()
abstract class ProjectInviteRequest implements Built<ProjectInviteRequest, ProjectInviteRequestBuilder> {
  /// Email address to invite (use either user_id or email, not both)
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'role')
  ProjectInviteRequestRoleEnum get role;
  // enum roleEnum {  owner,  manager,  task_runner,  guest,  };

  /// When the invite should expire (optional, defaults to 7 days)
  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  ProjectInviteRequest._();

  factory ProjectInviteRequest([void updates(ProjectInviteRequestBuilder b)]) = _$ProjectInviteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectInviteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectInviteRequest> get serializer => _$ProjectInviteRequestSerializer();
}

class _$ProjectInviteRequestSerializer implements PrimitiveSerializer<ProjectInviteRequest> {
  @override
  final Iterable<Type> types = const [ProjectInviteRequest, _$ProjectInviteRequest];

  @override
  final String wireName = r'ProjectInviteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectInviteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(ProjectInviteRequestRoleEnum),
    );
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectInviteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectInviteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectInviteRequestRoleEnum),
          ) as ProjectInviteRequestRoleEnum;
          result.role = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectInviteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectInviteRequestBuilder();
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

class ProjectInviteRequestRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'owner')
  static const ProjectInviteRequestRoleEnum owner = _$projectInviteRequestRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'manager')
  static const ProjectInviteRequestRoleEnum manager = _$projectInviteRequestRoleEnum_manager;
  @BuiltValueEnumConst(wireName: r'task_runner')
  static const ProjectInviteRequestRoleEnum taskRunner = _$projectInviteRequestRoleEnum_taskRunner;
  @BuiltValueEnumConst(wireName: r'guest')
  static const ProjectInviteRequestRoleEnum guest = _$projectInviteRequestRoleEnum_guest;

  static Serializer<ProjectInviteRequestRoleEnum> get serializer => _$projectInviteRequestRoleEnumSerializer;

  const ProjectInviteRequestRoleEnum._(String name): super(name);

  static BuiltSet<ProjectInviteRequestRoleEnum> get values => _$projectInviteRequestRoleEnumValues;
  static ProjectInviteRequestRoleEnum valueOf(String name) => _$projectInviteRequestRoleEnumValueOf(name);
}

