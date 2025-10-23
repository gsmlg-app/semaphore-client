// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_views_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectBackupViewsInner extends ProjectBackupViewsInner {
  @override
  final String? name;
  @override
  final int? position;

  factory _$ProjectBackupViewsInner(
          [void Function(ProjectBackupViewsInnerBuilder)? updates]) =>
      (ProjectBackupViewsInnerBuilder()..update(updates))._build();

  _$ProjectBackupViewsInner._({this.name, this.position}) : super._();
  @override
  ProjectBackupViewsInner rebuild(
          void Function(ProjectBackupViewsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBackupViewsInnerBuilder toBuilder() =>
      ProjectBackupViewsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectBackupViewsInner &&
        name == other.name &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectBackupViewsInner')
          ..add('name', name)
          ..add('position', position))
        .toString();
  }
}

class ProjectBackupViewsInnerBuilder
    implements
        Builder<ProjectBackupViewsInner, ProjectBackupViewsInnerBuilder> {
  _$ProjectBackupViewsInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _position;
  int? get position => _$this._position;
  set position(int? position) => _$this._position = position;

  ProjectBackupViewsInnerBuilder() {
    ProjectBackupViewsInner._defaults(this);
  }

  ProjectBackupViewsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectBackupViewsInner other) {
    _$v = other as _$ProjectBackupViewsInner;
  }

  @override
  void update(void Function(ProjectBackupViewsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectBackupViewsInner build() => _build();

  _$ProjectBackupViewsInner _build() {
    final _$result = _$v ??
        _$ProjectBackupViewsInner._(
          name: name,
          position: position,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
