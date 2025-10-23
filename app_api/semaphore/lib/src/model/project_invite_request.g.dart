// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_invite_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectInviteRequestRoleEnum _$projectInviteRequestRoleEnum_owner =
    const ProjectInviteRequestRoleEnum._('owner');
const ProjectInviteRequestRoleEnum _$projectInviteRequestRoleEnum_manager =
    const ProjectInviteRequestRoleEnum._('manager');
const ProjectInviteRequestRoleEnum _$projectInviteRequestRoleEnum_taskRunner =
    const ProjectInviteRequestRoleEnum._('taskRunner');
const ProjectInviteRequestRoleEnum _$projectInviteRequestRoleEnum_guest =
    const ProjectInviteRequestRoleEnum._('guest');

ProjectInviteRequestRoleEnum _$projectInviteRequestRoleEnumValueOf(
    String name) {
  switch (name) {
    case 'owner':
      return _$projectInviteRequestRoleEnum_owner;
    case 'manager':
      return _$projectInviteRequestRoleEnum_manager;
    case 'taskRunner':
      return _$projectInviteRequestRoleEnum_taskRunner;
    case 'guest':
      return _$projectInviteRequestRoleEnum_guest;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectInviteRequestRoleEnum>
    _$projectInviteRequestRoleEnumValues =
    BuiltSet<ProjectInviteRequestRoleEnum>(const <ProjectInviteRequestRoleEnum>[
  _$projectInviteRequestRoleEnum_owner,
  _$projectInviteRequestRoleEnum_manager,
  _$projectInviteRequestRoleEnum_taskRunner,
  _$projectInviteRequestRoleEnum_guest,
]);

Serializer<ProjectInviteRequestRoleEnum>
    _$projectInviteRequestRoleEnumSerializer =
    _$ProjectInviteRequestRoleEnumSerializer();

class _$ProjectInviteRequestRoleEnumSerializer
    implements PrimitiveSerializer<ProjectInviteRequestRoleEnum> {
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
  final Iterable<Type> types = const <Type>[ProjectInviteRequestRoleEnum];
  @override
  final String wireName = 'ProjectInviteRequestRoleEnum';

  @override
  Object serialize(Serializers serializers, ProjectInviteRequestRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectInviteRequestRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectInviteRequestRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectInviteRequest extends ProjectInviteRequest {
  @override
  final String? email;
  @override
  final ProjectInviteRequestRoleEnum role;
  @override
  final DateTime? expiresAt;

  factory _$ProjectInviteRequest(
          [void Function(ProjectInviteRequestBuilder)? updates]) =>
      (ProjectInviteRequestBuilder()..update(updates))._build();

  _$ProjectInviteRequest._({this.email, required this.role, this.expiresAt})
      : super._();
  @override
  ProjectInviteRequest rebuild(
          void Function(ProjectInviteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectInviteRequestBuilder toBuilder() =>
      ProjectInviteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectInviteRequest &&
        email == other.email &&
        role == other.role &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectInviteRequest')
          ..add('email', email)
          ..add('role', role)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class ProjectInviteRequestBuilder
    implements Builder<ProjectInviteRequest, ProjectInviteRequestBuilder> {
  _$ProjectInviteRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ProjectInviteRequestRoleEnum? _role;
  ProjectInviteRequestRoleEnum? get role => _$this._role;
  set role(ProjectInviteRequestRoleEnum? role) => _$this._role = role;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ProjectInviteRequestBuilder() {
    ProjectInviteRequest._defaults(this);
  }

  ProjectInviteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _role = $v.role;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectInviteRequest other) {
    _$v = other as _$ProjectInviteRequest;
  }

  @override
  void update(void Function(ProjectInviteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectInviteRequest build() => _build();

  _$ProjectInviteRequest _build() {
    final _$result = _$v ??
        _$ProjectInviteRequest._(
          email: email,
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'ProjectInviteRequest', 'role'),
          expiresAt: expiresAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
