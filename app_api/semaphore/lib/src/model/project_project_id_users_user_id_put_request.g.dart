// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_users_user_id_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectProjectIdUsersUserIdPutRequestRoleEnum
    _$projectProjectIdUsersUserIdPutRequestRoleEnum_owner =
    const ProjectProjectIdUsersUserIdPutRequestRoleEnum._('owner');
const ProjectProjectIdUsersUserIdPutRequestRoleEnum
    _$projectProjectIdUsersUserIdPutRequestRoleEnum_manager =
    const ProjectProjectIdUsersUserIdPutRequestRoleEnum._('manager');
const ProjectProjectIdUsersUserIdPutRequestRoleEnum
    _$projectProjectIdUsersUserIdPutRequestRoleEnum_taskRunner =
    const ProjectProjectIdUsersUserIdPutRequestRoleEnum._('taskRunner');
const ProjectProjectIdUsersUserIdPutRequestRoleEnum
    _$projectProjectIdUsersUserIdPutRequestRoleEnum_guest =
    const ProjectProjectIdUsersUserIdPutRequestRoleEnum._('guest');

ProjectProjectIdUsersUserIdPutRequestRoleEnum
    _$projectProjectIdUsersUserIdPutRequestRoleEnumValueOf(String name) {
  switch (name) {
    case 'owner':
      return _$projectProjectIdUsersUserIdPutRequestRoleEnum_owner;
    case 'manager':
      return _$projectProjectIdUsersUserIdPutRequestRoleEnum_manager;
    case 'taskRunner':
      return _$projectProjectIdUsersUserIdPutRequestRoleEnum_taskRunner;
    case 'guest':
      return _$projectProjectIdUsersUserIdPutRequestRoleEnum_guest;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectProjectIdUsersUserIdPutRequestRoleEnum>
    _$projectProjectIdUsersUserIdPutRequestRoleEnumValues = BuiltSet<
        ProjectProjectIdUsersUserIdPutRequestRoleEnum>(const <ProjectProjectIdUsersUserIdPutRequestRoleEnum>[
  _$projectProjectIdUsersUserIdPutRequestRoleEnum_owner,
  _$projectProjectIdUsersUserIdPutRequestRoleEnum_manager,
  _$projectProjectIdUsersUserIdPutRequestRoleEnum_taskRunner,
  _$projectProjectIdUsersUserIdPutRequestRoleEnum_guest,
]);

Serializer<ProjectProjectIdUsersUserIdPutRequestRoleEnum>
    _$projectProjectIdUsersUserIdPutRequestRoleEnumSerializer =
    _$ProjectProjectIdUsersUserIdPutRequestRoleEnumSerializer();

class _$ProjectProjectIdUsersUserIdPutRequestRoleEnumSerializer
    implements
        PrimitiveSerializer<ProjectProjectIdUsersUserIdPutRequestRoleEnum> {
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
    ProjectProjectIdUsersUserIdPutRequestRoleEnum
  ];
  @override
  final String wireName = 'ProjectProjectIdUsersUserIdPutRequestRoleEnum';

  @override
  Object serialize(Serializers serializers,
          ProjectProjectIdUsersUserIdPutRequestRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectProjectIdUsersUserIdPutRequestRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectProjectIdUsersUserIdPutRequestRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectProjectIdUsersUserIdPutRequest
    extends ProjectProjectIdUsersUserIdPutRequest {
  @override
  final ProjectProjectIdUsersUserIdPutRequestRoleEnum? role;

  factory _$ProjectProjectIdUsersUserIdPutRequest(
          [void Function(ProjectProjectIdUsersUserIdPutRequestBuilder)?
              updates]) =>
      (ProjectProjectIdUsersUserIdPutRequestBuilder()..update(updates))
          ._build();

  _$ProjectProjectIdUsersUserIdPutRequest._({this.role}) : super._();
  @override
  ProjectProjectIdUsersUserIdPutRequest rebuild(
          void Function(ProjectProjectIdUsersUserIdPutRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectProjectIdUsersUserIdPutRequestBuilder toBuilder() =>
      ProjectProjectIdUsersUserIdPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectProjectIdUsersUserIdPutRequest && role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ProjectProjectIdUsersUserIdPutRequest')
          ..add('role', role))
        .toString();
  }
}

class ProjectProjectIdUsersUserIdPutRequestBuilder
    implements
        Builder<ProjectProjectIdUsersUserIdPutRequest,
            ProjectProjectIdUsersUserIdPutRequestBuilder> {
  _$ProjectProjectIdUsersUserIdPutRequest? _$v;

  ProjectProjectIdUsersUserIdPutRequestRoleEnum? _role;
  ProjectProjectIdUsersUserIdPutRequestRoleEnum? get role => _$this._role;
  set role(ProjectProjectIdUsersUserIdPutRequestRoleEnum? role) =>
      _$this._role = role;

  ProjectProjectIdUsersUserIdPutRequestBuilder() {
    ProjectProjectIdUsersUserIdPutRequest._defaults(this);
  }

  ProjectProjectIdUsersUserIdPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectProjectIdUsersUserIdPutRequest other) {
    _$v = other as _$ProjectProjectIdUsersUserIdPutRequest;
  }

  @override
  void update(
      void Function(ProjectProjectIdUsersUserIdPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectProjectIdUsersUserIdPutRequest build() => _build();

  _$ProjectProjectIdUsersUserIdPutRequest _build() {
    final _$result = _$v ??
        _$ProjectProjectIdUsersUserIdPutRequest._(
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
