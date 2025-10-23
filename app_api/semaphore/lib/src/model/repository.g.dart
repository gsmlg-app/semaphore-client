// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Repository extends Repository {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? projectId;
  @override
  final String? gitUrl;
  @override
  final String? gitBranch;
  @override
  final int? sshKeyId;

  factory _$Repository([void Function(RepositoryBuilder)? updates]) =>
      (RepositoryBuilder()..update(updates))._build();

  _$Repository._(
      {this.id,
      this.name,
      this.projectId,
      this.gitUrl,
      this.gitBranch,
      this.sshKeyId})
      : super._();
  @override
  Repository rebuild(void Function(RepositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryBuilder toBuilder() => RepositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Repository &&
        id == other.id &&
        name == other.name &&
        projectId == other.projectId &&
        gitUrl == other.gitUrl &&
        gitBranch == other.gitBranch &&
        sshKeyId == other.sshKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, gitUrl.hashCode);
    _$hash = $jc(_$hash, gitBranch.hashCode);
    _$hash = $jc(_$hash, sshKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Repository')
          ..add('id', id)
          ..add('name', name)
          ..add('projectId', projectId)
          ..add('gitUrl', gitUrl)
          ..add('gitBranch', gitBranch)
          ..add('sshKeyId', sshKeyId))
        .toString();
  }
}

class RepositoryBuilder implements Builder<Repository, RepositoryBuilder> {
  _$Repository? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _projectId;
  int? get projectId => _$this._projectId;
  set projectId(int? projectId) => _$this._projectId = projectId;

  String? _gitUrl;
  String? get gitUrl => _$this._gitUrl;
  set gitUrl(String? gitUrl) => _$this._gitUrl = gitUrl;

  String? _gitBranch;
  String? get gitBranch => _$this._gitBranch;
  set gitBranch(String? gitBranch) => _$this._gitBranch = gitBranch;

  int? _sshKeyId;
  int? get sshKeyId => _$this._sshKeyId;
  set sshKeyId(int? sshKeyId) => _$this._sshKeyId = sshKeyId;

  RepositoryBuilder() {
    Repository._defaults(this);
  }

  RepositoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _projectId = $v.projectId;
      _gitUrl = $v.gitUrl;
      _gitBranch = $v.gitBranch;
      _sshKeyId = $v.sshKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Repository other) {
    _$v = other as _$Repository;
  }

  @override
  void update(void Function(RepositoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Repository build() => _build();

  _$Repository _build() {
    final _$result = _$v ??
        _$Repository._(
          id: id,
          name: name,
          projectId: projectId,
          gitUrl: gitUrl,
          gitBranch: gitBranch,
          sshKeyId: sshKeyId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
