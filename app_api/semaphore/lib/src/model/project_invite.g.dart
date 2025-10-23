// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_invite.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectInviteRoleEnum _$projectInviteRoleEnum_owner =
    const ProjectInviteRoleEnum._('owner');
const ProjectInviteRoleEnum _$projectInviteRoleEnum_manager =
    const ProjectInviteRoleEnum._('manager');
const ProjectInviteRoleEnum _$projectInviteRoleEnum_taskRunner =
    const ProjectInviteRoleEnum._('taskRunner');
const ProjectInviteRoleEnum _$projectInviteRoleEnum_guest =
    const ProjectInviteRoleEnum._('guest');

ProjectInviteRoleEnum _$projectInviteRoleEnumValueOf(String name) {
  switch (name) {
    case 'owner':
      return _$projectInviteRoleEnum_owner;
    case 'manager':
      return _$projectInviteRoleEnum_manager;
    case 'taskRunner':
      return _$projectInviteRoleEnum_taskRunner;
    case 'guest':
      return _$projectInviteRoleEnum_guest;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectInviteRoleEnum> _$projectInviteRoleEnumValues =
    BuiltSet<ProjectInviteRoleEnum>(const <ProjectInviteRoleEnum>[
  _$projectInviteRoleEnum_owner,
  _$projectInviteRoleEnum_manager,
  _$projectInviteRoleEnum_taskRunner,
  _$projectInviteRoleEnum_guest,
]);

const ProjectInviteStatusEnum _$projectInviteStatusEnum_pending =
    const ProjectInviteStatusEnum._('pending');
const ProjectInviteStatusEnum _$projectInviteStatusEnum_accepted =
    const ProjectInviteStatusEnum._('accepted');
const ProjectInviteStatusEnum _$projectInviteStatusEnum_declined =
    const ProjectInviteStatusEnum._('declined');
const ProjectInviteStatusEnum _$projectInviteStatusEnum_expired =
    const ProjectInviteStatusEnum._('expired');

ProjectInviteStatusEnum _$projectInviteStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$projectInviteStatusEnum_pending;
    case 'accepted':
      return _$projectInviteStatusEnum_accepted;
    case 'declined':
      return _$projectInviteStatusEnum_declined;
    case 'expired':
      return _$projectInviteStatusEnum_expired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectInviteStatusEnum> _$projectInviteStatusEnumValues =
    BuiltSet<ProjectInviteStatusEnum>(const <ProjectInviteStatusEnum>[
  _$projectInviteStatusEnum_pending,
  _$projectInviteStatusEnum_accepted,
  _$projectInviteStatusEnum_declined,
  _$projectInviteStatusEnum_expired,
]);

Serializer<ProjectInviteRoleEnum> _$projectInviteRoleEnumSerializer =
    _$ProjectInviteRoleEnumSerializer();
Serializer<ProjectInviteStatusEnum> _$projectInviteStatusEnumSerializer =
    _$ProjectInviteStatusEnumSerializer();

class _$ProjectInviteRoleEnumSerializer
    implements PrimitiveSerializer<ProjectInviteRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'owner': 'owner',
    'manager': 'manager',
    'taskRunner': 'task_runner',
    'guest': 'guest',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'owner': 'owner',
    'manager': 'manager',
    'task_runner': 'taskRunner',
    'guest': 'guest',
  };

  @override
  final Iterable<Type> types = const <Type>[ProjectInviteRoleEnum];
  @override
  final String wireName = 'ProjectInviteRoleEnum';

  @override
  Object serialize(Serializers serializers, ProjectInviteRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectInviteRoleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectInviteRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectInviteStatusEnumSerializer
    implements PrimitiveSerializer<ProjectInviteStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'accepted': 'accepted',
    'declined': 'declined',
    'expired': 'expired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'accepted': 'accepted',
    'declined': 'declined',
    'expired': 'expired',
  };

  @override
  final Iterable<Type> types = const <Type>[ProjectInviteStatusEnum];
  @override
  final String wireName = 'ProjectInviteStatusEnum';

  @override
  Object serialize(Serializers serializers, ProjectInviteStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectInviteStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectInviteStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectInvite extends ProjectInvite {
  @override
  final int? id;
  @override
  final int? projectId;
  @override
  final int? userId;
  @override
  final String? email;
  @override
  final ProjectInviteRoleEnum? role;
  @override
  final ProjectInviteStatusEnum? status;
  @override
  final int? inviterUserId;
  @override
  final DateTime? created;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? acceptedAt;
  @override
  final User? inviterUser;
  @override
  final User? user;

  factory _$ProjectInvite([void Function(ProjectInviteBuilder)? updates]) =>
      (ProjectInviteBuilder()..update(updates))._build();

  _$ProjectInvite._(
      {this.id,
      this.projectId,
      this.userId,
      this.email,
      this.role,
      this.status,
      this.inviterUserId,
      this.created,
      this.expiresAt,
      this.acceptedAt,
      this.inviterUser,
      this.user})
      : super._();
  @override
  ProjectInvite rebuild(void Function(ProjectInviteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectInviteBuilder toBuilder() => ProjectInviteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectInvite &&
        id == other.id &&
        projectId == other.projectId &&
        userId == other.userId &&
        email == other.email &&
        role == other.role &&
        status == other.status &&
        inviterUserId == other.inviterUserId &&
        created == other.created &&
        expiresAt == other.expiresAt &&
        acceptedAt == other.acceptedAt &&
        inviterUser == other.inviterUser &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, inviterUserId.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, acceptedAt.hashCode);
    _$hash = $jc(_$hash, inviterUser.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectInvite')
          ..add('id', id)
          ..add('projectId', projectId)
          ..add('userId', userId)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status)
          ..add('inviterUserId', inviterUserId)
          ..add('created', created)
          ..add('expiresAt', expiresAt)
          ..add('acceptedAt', acceptedAt)
          ..add('inviterUser', inviterUser)
          ..add('user', user))
        .toString();
  }
}

class ProjectInviteBuilder
    implements Builder<ProjectInvite, ProjectInviteBuilder> {
  _$ProjectInvite? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ProjectInviteRoleEnum? _role;
  ProjectInviteRoleEnum? get role => _$this._role;
  set role(ProjectInviteRoleEnum? role) => _$this._role = role;

  ProjectInviteStatusEnum? _status;
  ProjectInviteStatusEnum? get status => _$this._status;
  set status(ProjectInviteStatusEnum? status) => _$this._status = status;

  int? _inviterUserId;
  int? get inviterUserId => _$this._inviterUserId;
  set inviterUserId(int? inviterUserId) =>
      _$this._inviterUserId = inviterUserId;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _acceptedAt;
  DateTime? get acceptedAt => _$this._acceptedAt;
  set acceptedAt(DateTime? acceptedAt) => _$this._acceptedAt = acceptedAt;

  UserBuilder? _inviterUser;
  UserBuilder get inviterUser => _$this._inviterUser ??= UserBuilder();
  set inviterUser(UserBuilder? inviterUser) =>
      _$this._inviterUser = inviterUser;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  ProjectInviteBuilder() {
    ProjectInvite._defaults(this);
  }

  ProjectInviteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _projectId = $v.projectId;
      _userId = $v.userId;
      _email = $v.email;
      _role = $v.role;
      _status = $v.status;
      _inviterUserId = $v.inviterUserId;
      _created = $v.created;
      _expiresAt = $v.expiresAt;
      _acceptedAt = $v.acceptedAt;
      _inviterUser = $v.inviterUser?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectInvite other) {
    _$v = other as _$ProjectInvite;
  }

  @override
  void update(void Function(ProjectInviteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectInvite build() => _build();

  _$ProjectInvite _build() {
    _$ProjectInvite _$result;
    try {
      _$result = _$v ??
          _$ProjectInvite._(
            id: id,
            projectId: projectId,
            userId: userId,
            email: email,
            role: role,
            status: status,
            inviterUserId: inviterUserId,
            created: created,
            expiresAt: expiresAt,
            acceptedAt: acceptedAt,
            inviterUser: _inviterUser?.build(),
            user: _user?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inviterUser';
        _inviterUser?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProjectInvite', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
