// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup_repositories_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectBackupRepositoriesInner extends ProjectBackupRepositoriesInner {
  @override
  final String? name;
  @override
  final String? gitUrl;
  @override
  final String? gitBranch;
  @override
  final String? sshKey;

  factory _$ProjectBackupRepositoriesInner(
          [void Function(ProjectBackupRepositoriesInnerBuilder)? updates]) =>
      (ProjectBackupRepositoriesInnerBuilder()..update(updates))._build();

  _$ProjectBackupRepositoriesInner._(
      {this.name, this.gitUrl, this.gitBranch, this.sshKey})
      : super._();
  @override
  ProjectBackupRepositoriesInner rebuild(
          void Function(ProjectBackupRepositoriesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBackupRepositoriesInnerBuilder toBuilder() =>
      ProjectBackupRepositoriesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectBackupRepositoriesInner &&
        name == other.name &&
        gitUrl == other.gitUrl &&
        gitBranch == other.gitBranch &&
        sshKey == other.sshKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, gitUrl.hashCode);
    _$hash = $jc(_$hash, gitBranch.hashCode);
    _$hash = $jc(_$hash, sshKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectBackupRepositoriesInner')
          ..add('name', name)
          ..add('gitUrl', gitUrl)
          ..add('gitBranch', gitBranch)
          ..add('sshKey', sshKey))
        .toString();
  }
}

class ProjectBackupRepositoriesInnerBuilder
    implements
        Builder<ProjectBackupRepositoriesInner,
            ProjectBackupRepositoriesInnerBuilder> {
  _$ProjectBackupRepositoriesInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _gitUrl;
  String? get gitUrl => _$this._gitUrl;
  set gitUrl(String? gitUrl) => _$this._gitUrl = gitUrl;

  String? _gitBranch;
  String? get gitBranch => _$this._gitBranch;
  set gitBranch(String? gitBranch) => _$this._gitBranch = gitBranch;

  String? _sshKey;
  String? get sshKey => _$this._sshKey;
  set sshKey(String? sshKey) => _$this._sshKey = sshKey;

  ProjectBackupRepositoriesInnerBuilder() {
    ProjectBackupRepositoriesInner._defaults(this);
  }

  ProjectBackupRepositoriesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _gitUrl = $v.gitUrl;
      _gitBranch = $v.gitBranch;
      _sshKey = $v.sshKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectBackupRepositoriesInner other) {
    _$v = other as _$ProjectBackupRepositoriesInner;
  }

  @override
  void update(void Function(ProjectBackupRepositoriesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectBackupRepositoriesInner build() => _build();

  _$ProjectBackupRepositoriesInner _build() {
    final _$result = _$v ??
        _$ProjectBackupRepositoriesInner._(
          name: name,
          gitUrl: gitUrl,
          gitBranch: gitBranch,
          sshKey: sshKey,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
