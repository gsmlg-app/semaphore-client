//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:semaphore_api/src/model/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_invite.g.dart';

/// ProjectInvite
///
/// Properties:
/// * [id] 
/// * [projectId] 
/// * [userId] - User ID for user-based invites (optional)
/// * [email] - Email address for email-based invites (optional)
/// * [role] 
/// * [status] 
/// * [inviterUserId] - ID of the user who created the invite
/// * [created] - When the invite was created
/// * [expiresAt] - When the invite expires (optional)
/// * [acceptedAt] - When the invite was accepted (optional)
/// * [inviterUser] 
/// * [user] 
@BuiltValue()
abstract class ProjectInvite implements Built<ProjectInvite, ProjectInviteBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'project_id')
  int? get projectId;

  /// User ID for user-based invites (optional)
  @BuiltValueField(wireName: r'user_id')
  int? get userId;

  /// Email address for email-based invites (optional)
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'role')
  ProjectInviteRoleEnum? get role;
  // enum roleEnum {  owner,  manager,  task_runner,  guest,  };

  @BuiltValueField(wireName: r'status')
  ProjectInviteStatusEnum? get status;
  // enum statusEnum {  pending,  accepted,  declined,  expired,  };

  /// ID of the user who created the invite
  @BuiltValueField(wireName: r'inviter_user_id')
  int? get inviterUserId;

  /// When the invite was created
  @BuiltValueField(wireName: r'created')
  DateTime? get created;

  /// When the invite expires (optional)
  @BuiltValueField(wireName: r'expires_at')
  DateTime? get expiresAt;

  /// When the invite was accepted (optional)
  @BuiltValueField(wireName: r'accepted_at')
  DateTime? get acceptedAt;

  @BuiltValueField(wireName: r'inviter_user')
  User? get inviterUser;

  @BuiltValueField(wireName: r'user')
  User? get user;

  ProjectInvite._();

  factory ProjectInvite([void updates(ProjectInviteBuilder b)]) = _$ProjectInvite;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectInviteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectInvite> get serializer => _$ProjectInviteSerializer();
}

class _$ProjectInviteSerializer implements PrimitiveSerializer<ProjectInvite> {
  @override
  final Iterable<Type> types = const [ProjectInvite, _$ProjectInvite];

  @override
  final String wireName = r'ProjectInvite';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectInvite object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.projectId != null) {
      yield r'project_id';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(int),
      );
    }
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(int),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(ProjectInviteRoleEnum),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(ProjectInviteStatusEnum),
      );
    }
    if (object.inviterUserId != null) {
      yield r'inviter_user_id';
      yield serializers.serialize(
        object.inviterUserId,
        specifiedType: const FullType(int),
      );
    }
    if (object.created != null) {
      yield r'created';
      yield serializers.serialize(
        object.created,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.expiresAt != null) {
      yield r'expires_at';
      yield serializers.serialize(
        object.expiresAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.acceptedAt != null) {
      yield r'accepted_at';
      yield serializers.serialize(
        object.acceptedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.inviterUser != null) {
      yield r'inviter_user';
      yield serializers.serialize(
        object.inviterUser,
        specifiedType: const FullType(User),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(User),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectInvite object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectInviteBuilder result,
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
        case r'project_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.projectId = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
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
            specifiedType: const FullType(ProjectInviteRoleEnum),
          ) as ProjectInviteRoleEnum;
          result.role = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectInviteStatusEnum),
          ) as ProjectInviteStatusEnum;
          result.status = valueDes;
          break;
        case r'inviter_user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.inviterUserId = valueDes;
          break;
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.created = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        case r'accepted_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.acceptedAt = valueDes;
          break;
        case r'inviter_user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.inviterUser.replace(valueDes);
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectInvite deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectInviteBuilder();
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

class ProjectInviteRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'owner')
  static const ProjectInviteRoleEnum owner = _$projectInviteRoleEnum_owner;
  @BuiltValueEnumConst(wireName: r'manager')
  static const ProjectInviteRoleEnum manager = _$projectInviteRoleEnum_manager;
  @BuiltValueEnumConst(wireName: r'task_runner')
  static const ProjectInviteRoleEnum taskRunner = _$projectInviteRoleEnum_taskRunner;
  @BuiltValueEnumConst(wireName: r'guest')
  static const ProjectInviteRoleEnum guest = _$projectInviteRoleEnum_guest;

  static Serializer<ProjectInviteRoleEnum> get serializer => _$projectInviteRoleEnumSerializer;

  const ProjectInviteRoleEnum._(String name): super(name);

  static BuiltSet<ProjectInviteRoleEnum> get values => _$projectInviteRoleEnumValues;
  static ProjectInviteRoleEnum valueOf(String name) => _$projectInviteRoleEnumValueOf(name);
}

class ProjectInviteStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const ProjectInviteStatusEnum pending = _$projectInviteStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'accepted')
  static const ProjectInviteStatusEnum accepted = _$projectInviteStatusEnum_accepted;
  @BuiltValueEnumConst(wireName: r'declined')
  static const ProjectInviteStatusEnum declined = _$projectInviteStatusEnum_declined;
  @BuiltValueEnumConst(wireName: r'expired')
  static const ProjectInviteStatusEnum expired = _$projectInviteStatusEnum_expired;

  static Serializer<ProjectInviteStatusEnum> get serializer => _$projectInviteStatusEnumSerializer;

  const ProjectInviteStatusEnum._(String name): super(name);

  static BuiltSet<ProjectInviteStatusEnum> get values => _$projectInviteStatusEnumValues;
  static ProjectInviteStatusEnum valueOf(String name) => _$projectInviteStatusEnumValueOf(name);
}

