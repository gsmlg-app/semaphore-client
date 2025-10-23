// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectUserRoleEnum _$projectUserRoleEnum_owner =
    const ProjectUserRoleEnum._('owner');
const ProjectUserRoleEnum _$projectUserRoleEnum_manager =
    const ProjectUserRoleEnum._('manager');
const ProjectUserRoleEnum _$projectUserRoleEnum_taskRunner =
    const ProjectUserRoleEnum._('taskRunner');
const ProjectUserRoleEnum _$projectUserRoleEnum_guest =
    const ProjectUserRoleEnum._('guest');

ProjectUserRoleEnum _$projectUserRoleEnumValueOf(String name) {
  switch (name) {
    case 'owner':
      return _$projectUserRoleEnum_owner;
    case 'manager':
      return _$projectUserRoleEnum_manager;
    case 'taskRunner':
      return _$projectUserRoleEnum_taskRunner;
    case 'guest':
      return _$projectUserRoleEnum_guest;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectUserRoleEnum> _$projectUserRoleEnumValues =
    BuiltSet<ProjectUserRoleEnum>(const <ProjectUserRoleEnum>[
  _$projectUserRoleEnum_owner,
  _$projectUserRoleEnum_manager,
  _$projectUserRoleEnum_taskRunner,
  _$projectUserRoleEnum_guest,
]);

Serializer<ProjectUserRoleEnum> _$projectUserRoleEnumSerializer =
    _$ProjectUserRoleEnumSerializer();

class _$ProjectUserRoleEnumSerializer
    implements PrimitiveSerializer<ProjectUserRoleEnum> {
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
  final Iterable<Type> types = const <Type>[ProjectUserRoleEnum];
  @override
  final String wireName = 'ProjectUserRoleEnum';

  @override
  Object serialize(Serializers serializers, ProjectUserRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectUserRoleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectUserRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectUser extends ProjectUser {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? username;
  @override
  final ProjectUserRoleEnum? role;

  factory _$ProjectUser([void Function(ProjectUserBuilder)? updates]) =>
      (ProjectUserBuilder()..update(updates))._build();

  _$ProjectUser._({this.id, this.name, this.username, this.role}) : super._();
  @override
  ProjectUser rebuild(void Function(ProjectUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectUserBuilder toBuilder() => ProjectUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectUser &&
        id == other.id &&
        name == other.name &&
        username == other.username &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectUser')
          ..add('id', id)
          ..add('name', name)
          ..add('username', username)
          ..add('role', role))
        .toString();
  }
}

class ProjectUserBuilder implements Builder<ProjectUser, ProjectUserBuilder> {
  _$ProjectUser? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  ProjectUserRoleEnum? _role;
  ProjectUserRoleEnum? get role => _$this._role;
  set role(ProjectUserRoleEnum? role) => _$this._role = role;

  ProjectUserBuilder() {
    ProjectUser._defaults(this);
  }

  ProjectUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _username = $v.username;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectUser other) {
    _$v = other as _$ProjectUser;
  }

  @override
  void update(void Function(ProjectUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectUser build() => _build();

  _$ProjectUser _build() {
    final _$result = _$v ??
        _$ProjectUser._(
          id: id,
          name: name,
          username: username,
          role: role,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
