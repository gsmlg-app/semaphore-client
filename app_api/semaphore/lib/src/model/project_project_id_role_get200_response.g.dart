// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_project_id_role_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectProjectIdRoleGet200Response
    extends ProjectProjectIdRoleGet200Response {
  @override
  final String? role;
  @override
  final num? permissions;

  factory _$ProjectProjectIdRoleGet200Response(
          [void Function(ProjectProjectIdRoleGet200ResponseBuilder)?
              updates]) =>
      (ProjectProjectIdRoleGet200ResponseBuilder()..update(updates))._build();

  _$ProjectProjectIdRoleGet200Response._({this.role, this.permissions})
      : super._();
  @override
  ProjectProjectIdRoleGet200Response rebuild(
          void Function(ProjectProjectIdRoleGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectProjectIdRoleGet200ResponseBuilder toBuilder() =>
      ProjectProjectIdRoleGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectProjectIdRoleGet200Response &&
        role == other.role &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectProjectIdRoleGet200Response')
          ..add('role', role)
          ..add('permissions', permissions))
        .toString();
  }
}

class ProjectProjectIdRoleGet200ResponseBuilder
    implements
        Builder<ProjectProjectIdRoleGet200Response,
            ProjectProjectIdRoleGet200ResponseBuilder> {
  _$ProjectProjectIdRoleGet200Response? _$v;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  num? _permissions;
  num? get permissions => _$this._permissions;
  set permissions(num? permissions) => _$this._permissions = permissions;

  ProjectProjectIdRoleGet200ResponseBuilder() {
    ProjectProjectIdRoleGet200Response._defaults(this);
  }

  ProjectProjectIdRoleGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _permissions = $v.permissions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectProjectIdRoleGet200Response other) {
    _$v = other as _$ProjectProjectIdRoleGet200Response;
  }

  @override
  void update(
      void Function(ProjectProjectIdRoleGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectProjectIdRoleGet200Response build() => _build();

  _$ProjectProjectIdRoleGet200Response _build() {
    final _$result = _$v ??
        _$ProjectProjectIdRoleGet200Response._(
          role: role,
          permissions: permissions,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
