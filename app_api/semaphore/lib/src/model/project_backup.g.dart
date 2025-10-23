// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_backup.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectBackup extends ProjectBackup {
  @override
  final ProjectBackupMeta? meta;
  @override
  final BuiltList<ProjectBackupTemplatesInner>? templates;
  @override
  final BuiltList<ProjectBackupRepositoriesInner>? repositories;
  @override
  final BuiltList<ProjectBackupKeysInner>? keys;
  @override
  final BuiltList<ProjectBackupViewsInner>? views;
  @override
  final BuiltList<ProjectBackupInventoriesInner>? inventories;
  @override
  final BuiltList<ProjectBackupEnvironmentsInner>? environments;

  factory _$ProjectBackup([void Function(ProjectBackupBuilder)? updates]) =>
      (ProjectBackupBuilder()..update(updates))._build();

  _$ProjectBackup._(
      {this.meta,
      this.templates,
      this.repositories,
      this.keys,
      this.views,
      this.inventories,
      this.environments})
      : super._();
  @override
  ProjectBackup rebuild(void Function(ProjectBackupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBackupBuilder toBuilder() => ProjectBackupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectBackup &&
        meta == other.meta &&
        templates == other.templates &&
        repositories == other.repositories &&
        keys == other.keys &&
        views == other.views &&
        inventories == other.inventories &&
        environments == other.environments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, templates.hashCode);
    _$hash = $jc(_$hash, repositories.hashCode);
    _$hash = $jc(_$hash, keys.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jc(_$hash, inventories.hashCode);
    _$hash = $jc(_$hash, environments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectBackup')
          ..add('meta', meta)
          ..add('templates', templates)
          ..add('repositories', repositories)
          ..add('keys', keys)
          ..add('views', views)
          ..add('inventories', inventories)
          ..add('environments', environments))
        .toString();
  }
}

class ProjectBackupBuilder
    implements Builder<ProjectBackup, ProjectBackupBuilder> {
  _$ProjectBackup? _$v;

  ProjectBackupMetaBuilder? _meta;
  ProjectBackupMetaBuilder get meta =>
      _$this._meta ??= ProjectBackupMetaBuilder();
  set meta(ProjectBackupMetaBuilder? meta) => _$this._meta = meta;

  ListBuilder<ProjectBackupTemplatesInner>? _templates;
  ListBuilder<ProjectBackupTemplatesInner> get templates =>
      _$this._templates ??= ListBuilder<ProjectBackupTemplatesInner>();
  set templates(ListBuilder<ProjectBackupTemplatesInner>? templates) =>
      _$this._templates = templates;

  ListBuilder<ProjectBackupRepositoriesInner>? _repositories;
  ListBuilder<ProjectBackupRepositoriesInner> get repositories =>
      _$this._repositories ??= ListBuilder<ProjectBackupRepositoriesInner>();
  set repositories(ListBuilder<ProjectBackupRepositoriesInner>? repositories) =>
      _$this._repositories = repositories;

  ListBuilder<ProjectBackupKeysInner>? _keys;
  ListBuilder<ProjectBackupKeysInner> get keys =>
      _$this._keys ??= ListBuilder<ProjectBackupKeysInner>();
  set keys(ListBuilder<ProjectBackupKeysInner>? keys) => _$this._keys = keys;

  ListBuilder<ProjectBackupViewsInner>? _views;
  ListBuilder<ProjectBackupViewsInner> get views =>
      _$this._views ??= ListBuilder<ProjectBackupViewsInner>();
  set views(ListBuilder<ProjectBackupViewsInner>? views) =>
      _$this._views = views;

  ListBuilder<ProjectBackupInventoriesInner>? _inventories;
  ListBuilder<ProjectBackupInventoriesInner> get inventories =>
      _$this._inventories ??= ListBuilder<ProjectBackupInventoriesInner>();
  set inventories(ListBuilder<ProjectBackupInventoriesInner>? inventories) =>
      _$this._inventories = inventories;

  ListBuilder<ProjectBackupEnvironmentsInner>? _environments;
  ListBuilder<ProjectBackupEnvironmentsInner> get environments =>
      _$this._environments ??= ListBuilder<ProjectBackupEnvironmentsInner>();
  set environments(ListBuilder<ProjectBackupEnvironmentsInner>? environments) =>
      _$this._environments = environments;

  ProjectBackupBuilder() {
    ProjectBackup._defaults(this);
  }

  ProjectBackupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meta = $v.meta?.toBuilder();
      _templates = $v.templates?.toBuilder();
      _repositories = $v.repositories?.toBuilder();
      _keys = $v.keys?.toBuilder();
      _views = $v.views?.toBuilder();
      _inventories = $v.inventories?.toBuilder();
      _environments = $v.environments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectBackup other) {
    _$v = other as _$ProjectBackup;
  }

  @override
  void update(void Function(ProjectBackupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectBackup build() => _build();

  _$ProjectBackup _build() {
    _$ProjectBackup _$result;
    try {
      _$result = _$v ??
          _$ProjectBackup._(
            meta: _meta?.build(),
            templates: _templates?.build(),
            repositories: _repositories?.build(),
            keys: _keys?.build(),
            views: _views?.build(),
            inventories: _inventories?.build(),
            environments: _environments?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'templates';
        _templates?.build();
        _$failedField = 'repositories';
        _repositories?.build();
        _$failedField = 'keys';
        _keys?.build();
        _$failedField = 'views';
        _views?.build();
        _$failedField = 'inventories';
        _inventories?.build();
        _$failedField = 'environments';
        _environments?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProjectBackup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
