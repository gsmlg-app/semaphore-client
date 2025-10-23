// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RepositoryRequest extends RepositoryRequest {
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

  factory _$RepositoryRequest(
          [void Function(RepositoryRequestBuilder)? updates]) =>
      (RepositoryRequestBuilder()..update(updates))._build();

  _$RepositoryRequest._(
      {this.id,
      this.name,
      this.projectId,
      this.gitUrl,
      this.gitBranch,
      this.sshKeyId})
      : super._();
  @override
  RepositoryRequest rebuild(void Function(RepositoryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryRequestBuilder toBuilder() =>
      RepositoryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryRequest &&
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
    return (newBuiltValueToStringHelper(r'RepositoryRequest')
          ..add('id', id)
          ..add('name', name)
          ..add('projectId', projectId)
          ..add('gitUrl', gitUrl)
          ..add('gitBranch', gitBranch)
          ..add('sshKeyId', sshKeyId))
        .toString();
  }
}

class RepositoryRequestBuilder
    implements Builder<RepositoryRequest, RepositoryRequestBuilder> {
  _$RepositoryRequest? _$v;

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

  RepositoryRequestBuilder() {
    RepositoryRequest._defaults(this);
  }

  RepositoryRequestBuilder get _$this {
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
  void replace(RepositoryRequest other) {
    _$v = other as _$RepositoryRequest;
  }

  @override
  void update(void Function(RepositoryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RepositoryRequest build() => _build();

  _$RepositoryRequest _build() {
    final _$result = _$v ??
        _$RepositoryRequest._(
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
