// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_users_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectProjectIdUsersPostRequestRoleEnum
    _$projectProjectIdUsersPostRequestRoleEnum_owner =
    const ProjectProjectIdUsersPostRequestRoleEnum._('owner');
const ProjectProjectIdUsersPostRequestRoleEnum
    _$projectProjectIdUsersPostRequestRoleEnum_manager =
    const ProjectProjectIdUsersPostRequestRoleEnum._('manager');
const ProjectProjectIdUsersPostRequestRoleEnum
    _$projectProjectIdUsersPostRequestRoleEnum_taskRunner =
    const ProjectProjectIdUsersPostRequestRoleEnum._('taskRunner');
const ProjectProjectIdUsersPostRequestRoleEnum
    _$projectProjectIdUsersPostRequestRoleEnum_guest =
    const ProjectProjectIdUsersPostRequestRoleEnum._('guest');

ProjectProjectIdUsersPostRequestRoleEnum
    _$projectProjectIdUsersPostRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'owner':
      return _$projectProjectIdUsersPostRequestRoleEnum_owner;
    case 'manager':
      return _$projectProjectIdUsersPostRequestRoleEnum_manager;
    case 'taskRunner':
      return _$projectProjectIdUsersPostRequestRoleEnum_taskRunner;
    case 'guest':
      return _$projectProjectIdUsersPostRequestRoleEnum_guest;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectProjectIdUsersPostRequestRoleEnum>
    _$projectProjectIdUsersPostRequestRoleEnumValues = BuiltSet<
        ProjectProjectIdUsersPostRequestRoleEnum>(const <ProjectProjectIdUsersPostRequestRoleEnum>[
  _$projectProjectIdUsersPostRequestRoleEnum_owner,
  _$projectProjectIdUsersPostRequestRoleEnum_manager,
  _$projectProjectIdUsersPostRequestRoleEnum_taskRunner,
  _$projectProjectIdUsersPostRequestRoleEnum_guest,
]);

Serializer<ProjectProjectIdUsersPostRequestRoleEnum>
    _$projectProjectIdUsersPostRequestRoleEnumSerializer =
    _$ProjectProjectIdUsersPostRequestRoleEnumSerializer();

class _$ProjectProjectIdUsersPostRequestRoleEnumSerializer
    implements PrimitiveSerializer<ProjectProjectIdUsersPostRequestRoleEnum> {
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
  final Iterable<Type> types = const <Type>[
    ProjectProjectIdUsersPostRequestRoleEnum
  ];
  @override
  final String wireName = 'ProjectProjectIdUsersPostRequestRoleEnum';

  @override
  Object serialize(Serializers serializers,
          ProjectProjectIdUsersPostRequestRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectProjectIdUsersPostRequestRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectProjectIdUsersPostRequestRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectProjectIdUsersPostRequest
    extends ProjectProjectIdUsersPostRequest {
  @override
  final int? userId;
  @override
  final ProjectProjectIdUsersPostRequestRoleEnum? role;

  factory _$ProjectProjectIdUsersPostRequest(
          [void Function(ProjectProjectIdUsersPostRequestBuilder)? updates]) =>
      (ProjectProjectIdUsersPostRequestBuilder()..update(updates))._build();

  _$ProjectProjectIdUsersPostRequest._({this.userId, this.role}) : super._();
  @override
  ProjectProjectIdUsersPostRequest rebuild(
          void Function(ProjectProjectIdUsersPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectProjectIdUsersPostRequestBuilder toBuilder() =>
      ProjectProjectIdUsersPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectProjectIdUsersPostRequest &&
        userId == other.userId &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectProjectIdUsersPostRequest')
          ..add('userId', userId)
          ..add('role', role))
        .toString();
  }
}

class ProjectProjectIdUsersPostRequestBuilder
    implements
        Builder<ProjectProjectIdUsersPostRequest,
            ProjectProjectIdUsersPostRequestBuilder> {
  _$ProjectProjectIdUsersPostRequest? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  ProjectProjectIdUsersPostRequestRoleEnum? _role;
  ProjectProjectIdUsersPostRequestRoleEnum? get role => _$this._role;
  set role(ProjectProjectIdUsersPostRequestRoleEnum? role) =>
      _$this._role = role;

  ProjectProjectIdUsersPostRequestBuilder() {
    ProjectProjectIdUsersPostRequest._defaults(this);
  }

  ProjectProjectIdUsersPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectProjectIdUsersPostRequest other) {
    _$v = other as _$ProjectProjectIdUsersPostRequest;
  }

  @override
  void update(void Function(ProjectProjectIdUsersPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectProjectIdUsersPostRequest build() => _build();

  _$ProjectProjectIdUsersPostRequest _build() {
    final _$result = _$v ??
        _$ProjectProjectIdUsersPostRequest._(
          userId: userId,
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
