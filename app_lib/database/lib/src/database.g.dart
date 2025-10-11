// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $SemaphoreServersTable extends SemaphoreServers
    with TableInfo<$SemaphoreServersTable, SemaphoreServer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SemaphoreServersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _apiUrlMeta = const VerificationMeta('apiUrl');
  @override
  late final GeneratedColumn<String> apiUrl = GeneratedColumn<String>(
      'api_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tokenMeta = const VerificationMeta('token');
  @override
  late final GeneratedColumn<String> token = GeneratedColumn<String>(
      'token', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, apiUrl, username, token, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'semaphore_servers';
  @override
  VerificationContext validateIntegrity(Insertable<SemaphoreServer> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('api_url')) {
      context.handle(_apiUrlMeta,
          apiUrl.isAcceptableOrUnknown(data['api_url']!, _apiUrlMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    }
    if (data.containsKey('token')) {
      context.handle(
          _tokenMeta, token.isAcceptableOrUnknown(data['token']!, _tokenMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SemaphoreServer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SemaphoreServer(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      apiUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}api_url']),
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username']),
      token: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}token']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $SemaphoreServersTable createAlias(String alias) {
    return $SemaphoreServersTable(attachedDatabase, alias);
  }
}

class SemaphoreServer extends DataClass implements Insertable<SemaphoreServer> {
  final int id;
  final String? name;
  final String? apiUrl;
  final String? username;
  final String? token;
  final DateTime? createdAt;
  const SemaphoreServer(
      {required this.id,
      this.name,
      this.apiUrl,
      this.username,
      this.token,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || apiUrl != null) {
      map['api_url'] = Variable<String>(apiUrl);
    }
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String>(username);
    }
    if (!nullToAbsent || token != null) {
      map['token'] = Variable<String>(token);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  SemaphoreServersCompanion toCompanion(bool nullToAbsent) {
    return SemaphoreServersCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      apiUrl:
          apiUrl == null && nullToAbsent ? const Value.absent() : Value(apiUrl),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      token:
          token == null && nullToAbsent ? const Value.absent() : Value(token),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory SemaphoreServer.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SemaphoreServer(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      apiUrl: serializer.fromJson<String?>(json['apiUrl']),
      username: serializer.fromJson<String?>(json['username']),
      token: serializer.fromJson<String?>(json['token']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'apiUrl': serializer.toJson<String?>(apiUrl),
      'username': serializer.toJson<String?>(username),
      'token': serializer.toJson<String?>(token),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  SemaphoreServer copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> apiUrl = const Value.absent(),
          Value<String?> username = const Value.absent(),
          Value<String?> token = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent()}) =>
      SemaphoreServer(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        apiUrl: apiUrl.present ? apiUrl.value : this.apiUrl,
        username: username.present ? username.value : this.username,
        token: token.present ? token.value : this.token,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  SemaphoreServer copyWithCompanion(SemaphoreServersCompanion data) {
    return SemaphoreServer(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      apiUrl: data.apiUrl.present ? data.apiUrl.value : this.apiUrl,
      username: data.username.present ? data.username.value : this.username,
      token: data.token.present ? data.token.value : this.token,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SemaphoreServer(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('apiUrl: $apiUrl, ')
          ..write('username: $username, ')
          ..write('token: $token, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, apiUrl, username, token, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SemaphoreServer &&
          other.id == this.id &&
          other.name == this.name &&
          other.apiUrl == this.apiUrl &&
          other.username == this.username &&
          other.token == this.token &&
          other.createdAt == this.createdAt);
}

class SemaphoreServersCompanion extends UpdateCompanion<SemaphoreServer> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> apiUrl;
  final Value<String?> username;
  final Value<String?> token;
  final Value<DateTime?> createdAt;
  const SemaphoreServersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.apiUrl = const Value.absent(),
    this.username = const Value.absent(),
    this.token = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  SemaphoreServersCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.apiUrl = const Value.absent(),
    this.username = const Value.absent(),
    this.token = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  static Insertable<SemaphoreServer> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? apiUrl,
    Expression<String>? username,
    Expression<String>? token,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (apiUrl != null) 'api_url': apiUrl,
      if (username != null) 'username': username,
      if (token != null) 'token': token,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  SemaphoreServersCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? apiUrl,
      Value<String?>? username,
      Value<String?>? token,
      Value<DateTime?>? createdAt}) {
    return SemaphoreServersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      apiUrl: apiUrl ?? this.apiUrl,
      username: username ?? this.username,
      token: token ?? this.token,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (apiUrl.present) {
      map['api_url'] = Variable<String>(apiUrl.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (token.present) {
      map['token'] = Variable<String>(token.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SemaphoreServersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('apiUrl: $apiUrl, ')
          ..write('username: $username, ')
          ..write('token: $token, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $SemaphoreProjectsTable extends SemaphoreProjects
    with TableInfo<$SemaphoreProjectsTable, SemaphoreProject> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SemaphoreProjectsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _serverIdMeta =
      const VerificationMeta('serverId');
  @override
  late final GeneratedColumn<int> serverId = GeneratedColumn<int>(
      'server_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES semaphore_servers (id)'));
  static const VerificationMeta _projectIdMeta =
      const VerificationMeta('projectId');
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
      'project_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _alertMeta = const VerificationMeta('alert');
  @override
  late final GeneratedColumn<bool> alert = GeneratedColumn<bool>(
      'alert', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("alert" IN (0, 1))'));
  static const VerificationMeta _alertChatMeta =
      const VerificationMeta('alertChat');
  @override
  late final GeneratedColumn<String> alertChat = GeneratedColumn<String>(
      'alert_chat', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _maxParallelTasksMeta =
      const VerificationMeta('maxParallelTasks');
  @override
  late final GeneratedColumn<int> maxParallelTasks = GeneratedColumn<int>(
      'max_parallel_tasks', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        serverId,
        projectId,
        name,
        alert,
        alertChat,
        maxParallelTasks,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'semaphore_projects';
  @override
  VerificationContext validateIntegrity(Insertable<SemaphoreProject> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('server_id')) {
      context.handle(_serverIdMeta,
          serverId.isAcceptableOrUnknown(data['server_id']!, _serverIdMeta));
    } else if (isInserting) {
      context.missing(_serverIdMeta);
    }
    if (data.containsKey('project_id')) {
      context.handle(_projectIdMeta,
          projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('alert')) {
      context.handle(
          _alertMeta, alert.isAcceptableOrUnknown(data['alert']!, _alertMeta));
    }
    if (data.containsKey('alert_chat')) {
      context.handle(_alertChatMeta,
          alertChat.isAcceptableOrUnknown(data['alert_chat']!, _alertChatMeta));
    }
    if (data.containsKey('max_parallel_tasks')) {
      context.handle(
          _maxParallelTasksMeta,
          maxParallelTasks.isAcceptableOrUnknown(
              data['max_parallel_tasks']!, _maxParallelTasksMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SemaphoreProject map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SemaphoreProject(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      serverId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}server_id'])!,
      projectId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}project_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      alert: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}alert']),
      alertChat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alert_chat']),
      maxParallelTasks: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_parallel_tasks']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $SemaphoreProjectsTable createAlias(String alias) {
    return $SemaphoreProjectsTable(attachedDatabase, alias);
  }
}

class SemaphoreProject extends DataClass
    implements Insertable<SemaphoreProject> {
  final int id;
  final int serverId;
  final int? projectId;
  final String? name;
  final bool? alert;
  final String? alertChat;
  final int? maxParallelTasks;
  final DateTime? createdAt;
  const SemaphoreProject(
      {required this.id,
      required this.serverId,
      this.projectId,
      this.name,
      this.alert,
      this.alertChat,
      this.maxParallelTasks,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['server_id'] = Variable<int>(serverId);
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<int>(projectId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || alert != null) {
      map['alert'] = Variable<bool>(alert);
    }
    if (!nullToAbsent || alertChat != null) {
      map['alert_chat'] = Variable<String>(alertChat);
    }
    if (!nullToAbsent || maxParallelTasks != null) {
      map['max_parallel_tasks'] = Variable<int>(maxParallelTasks);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  SemaphoreProjectsCompanion toCompanion(bool nullToAbsent) {
    return SemaphoreProjectsCompanion(
      id: Value(id),
      serverId: Value(serverId),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      alert:
          alert == null && nullToAbsent ? const Value.absent() : Value(alert),
      alertChat: alertChat == null && nullToAbsent
          ? const Value.absent()
          : Value(alertChat),
      maxParallelTasks: maxParallelTasks == null && nullToAbsent
          ? const Value.absent()
          : Value(maxParallelTasks),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory SemaphoreProject.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SemaphoreProject(
      id: serializer.fromJson<int>(json['id']),
      serverId: serializer.fromJson<int>(json['serverId']),
      projectId: serializer.fromJson<int?>(json['projectId']),
      name: serializer.fromJson<String?>(json['name']),
      alert: serializer.fromJson<bool?>(json['alert']),
      alertChat: serializer.fromJson<String?>(json['alertChat']),
      maxParallelTasks: serializer.fromJson<int?>(json['maxParallelTasks']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'serverId': serializer.toJson<int>(serverId),
      'projectId': serializer.toJson<int?>(projectId),
      'name': serializer.toJson<String?>(name),
      'alert': serializer.toJson<bool?>(alert),
      'alertChat': serializer.toJson<String?>(alertChat),
      'maxParallelTasks': serializer.toJson<int?>(maxParallelTasks),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  SemaphoreProject copyWith(
          {int? id,
          int? serverId,
          Value<int?> projectId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<bool?> alert = const Value.absent(),
          Value<String?> alertChat = const Value.absent(),
          Value<int?> maxParallelTasks = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent()}) =>
      SemaphoreProject(
        id: id ?? this.id,
        serverId: serverId ?? this.serverId,
        projectId: projectId.present ? projectId.value : this.projectId,
        name: name.present ? name.value : this.name,
        alert: alert.present ? alert.value : this.alert,
        alertChat: alertChat.present ? alertChat.value : this.alertChat,
        maxParallelTasks: maxParallelTasks.present
            ? maxParallelTasks.value
            : this.maxParallelTasks,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  SemaphoreProject copyWithCompanion(SemaphoreProjectsCompanion data) {
    return SemaphoreProject(
      id: data.id.present ? data.id.value : this.id,
      serverId: data.serverId.present ? data.serverId.value : this.serverId,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      name: data.name.present ? data.name.value : this.name,
      alert: data.alert.present ? data.alert.value : this.alert,
      alertChat: data.alertChat.present ? data.alertChat.value : this.alertChat,
      maxParallelTasks: data.maxParallelTasks.present
          ? data.maxParallelTasks.value
          : this.maxParallelTasks,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SemaphoreProject(')
          ..write('id: $id, ')
          ..write('serverId: $serverId, ')
          ..write('projectId: $projectId, ')
          ..write('name: $name, ')
          ..write('alert: $alert, ')
          ..write('alertChat: $alertChat, ')
          ..write('maxParallelTasks: $maxParallelTasks, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, serverId, projectId, name, alert,
      alertChat, maxParallelTasks, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SemaphoreProject &&
          other.id == this.id &&
          other.serverId == this.serverId &&
          other.projectId == this.projectId &&
          other.name == this.name &&
          other.alert == this.alert &&
          other.alertChat == this.alertChat &&
          other.maxParallelTasks == this.maxParallelTasks &&
          other.createdAt == this.createdAt);
}

class SemaphoreProjectsCompanion extends UpdateCompanion<SemaphoreProject> {
  final Value<int> id;
  final Value<int> serverId;
  final Value<int?> projectId;
  final Value<String?> name;
  final Value<bool?> alert;
  final Value<String?> alertChat;
  final Value<int?> maxParallelTasks;
  final Value<DateTime?> createdAt;
  const SemaphoreProjectsCompanion({
    this.id = const Value.absent(),
    this.serverId = const Value.absent(),
    this.projectId = const Value.absent(),
    this.name = const Value.absent(),
    this.alert = const Value.absent(),
    this.alertChat = const Value.absent(),
    this.maxParallelTasks = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  SemaphoreProjectsCompanion.insert({
    this.id = const Value.absent(),
    required int serverId,
    this.projectId = const Value.absent(),
    this.name = const Value.absent(),
    this.alert = const Value.absent(),
    this.alertChat = const Value.absent(),
    this.maxParallelTasks = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : serverId = Value(serverId);
  static Insertable<SemaphoreProject> custom({
    Expression<int>? id,
    Expression<int>? serverId,
    Expression<int>? projectId,
    Expression<String>? name,
    Expression<bool>? alert,
    Expression<String>? alertChat,
    Expression<int>? maxParallelTasks,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (serverId != null) 'server_id': serverId,
      if (projectId != null) 'project_id': projectId,
      if (name != null) 'name': name,
      if (alert != null) 'alert': alert,
      if (alertChat != null) 'alert_chat': alertChat,
      if (maxParallelTasks != null) 'max_parallel_tasks': maxParallelTasks,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  SemaphoreProjectsCompanion copyWith(
      {Value<int>? id,
      Value<int>? serverId,
      Value<int?>? projectId,
      Value<String?>? name,
      Value<bool?>? alert,
      Value<String?>? alertChat,
      Value<int?>? maxParallelTasks,
      Value<DateTime?>? createdAt}) {
    return SemaphoreProjectsCompanion(
      id: id ?? this.id,
      serverId: serverId ?? this.serverId,
      projectId: projectId ?? this.projectId,
      name: name ?? this.name,
      alert: alert ?? this.alert,
      alertChat: alertChat ?? this.alertChat,
      maxParallelTasks: maxParallelTasks ?? this.maxParallelTasks,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (serverId.present) {
      map['server_id'] = Variable<int>(serverId.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (alert.present) {
      map['alert'] = Variable<bool>(alert.value);
    }
    if (alertChat.present) {
      map['alert_chat'] = Variable<String>(alertChat.value);
    }
    if (maxParallelTasks.present) {
      map['max_parallel_tasks'] = Variable<int>(maxParallelTasks.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SemaphoreProjectsCompanion(')
          ..write('id: $id, ')
          ..write('serverId: $serverId, ')
          ..write('projectId: $projectId, ')
          ..write('name: $name, ')
          ..write('alert: $alert, ')
          ..write('alertChat: $alertChat, ')
          ..write('maxParallelTasks: $maxParallelTasks, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SemaphoreServersTable semaphoreServers =
      $SemaphoreServersTable(this);
  late final $SemaphoreProjectsTable semaphoreProjects =
      $SemaphoreProjectsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [semaphoreServers, semaphoreProjects];
}

typedef $$SemaphoreServersTableCreateCompanionBuilder
    = SemaphoreServersCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> apiUrl,
  Value<String?> username,
  Value<String?> token,
  Value<DateTime?> createdAt,
});
typedef $$SemaphoreServersTableUpdateCompanionBuilder
    = SemaphoreServersCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> apiUrl,
  Value<String?> username,
  Value<String?> token,
  Value<DateTime?> createdAt,
});

final class $$SemaphoreServersTableReferences extends BaseReferences<
    _$AppDatabase, $SemaphoreServersTable, SemaphoreServer> {
  $$SemaphoreServersTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SemaphoreProjectsTable, List<SemaphoreProject>>
      _semaphoreProjectsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.semaphoreProjects,
              aliasName: $_aliasNameGenerator(
                  db.semaphoreServers.id, db.semaphoreProjects.serverId));

  $$SemaphoreProjectsTableProcessedTableManager get semaphoreProjectsRefs {
    final manager =
        $$SemaphoreProjectsTableTableManager($_db, $_db.semaphoreProjects)
            .filter((f) => f.serverId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_semaphoreProjectsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SemaphoreServersTableFilterComposer
    extends Composer<_$AppDatabase, $SemaphoreServersTable> {
  $$SemaphoreServersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get apiUrl => $composableBuilder(
      column: $table.apiUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get token => $composableBuilder(
      column: $table.token, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  Expression<bool> semaphoreProjectsRefs(
      Expression<bool> Function($$SemaphoreProjectsTableFilterComposer f) f) {
    final $$SemaphoreProjectsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.semaphoreProjects,
        getReferencedColumn: (t) => t.serverId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SemaphoreProjectsTableFilterComposer(
              $db: $db,
              $table: $db.semaphoreProjects,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SemaphoreServersTableOrderingComposer
    extends Composer<_$AppDatabase, $SemaphoreServersTable> {
  $$SemaphoreServersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get apiUrl => $composableBuilder(
      column: $table.apiUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get token => $composableBuilder(
      column: $table.token, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$SemaphoreServersTableAnnotationComposer
    extends Composer<_$AppDatabase, $SemaphoreServersTable> {
  $$SemaphoreServersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get apiUrl =>
      $composableBuilder(column: $table.apiUrl, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get token =>
      $composableBuilder(column: $table.token, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> semaphoreProjectsRefs<T extends Object>(
      Expression<T> Function($$SemaphoreProjectsTableAnnotationComposer a) f) {
    final $$SemaphoreProjectsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.semaphoreProjects,
            getReferencedColumn: (t) => t.serverId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$SemaphoreProjectsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.semaphoreProjects,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }
}

class $$SemaphoreServersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SemaphoreServersTable,
    SemaphoreServer,
    $$SemaphoreServersTableFilterComposer,
    $$SemaphoreServersTableOrderingComposer,
    $$SemaphoreServersTableAnnotationComposer,
    $$SemaphoreServersTableCreateCompanionBuilder,
    $$SemaphoreServersTableUpdateCompanionBuilder,
    (SemaphoreServer, $$SemaphoreServersTableReferences),
    SemaphoreServer,
    PrefetchHooks Function({bool semaphoreProjectsRefs})> {
  $$SemaphoreServersTableTableManager(
      _$AppDatabase db, $SemaphoreServersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SemaphoreServersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SemaphoreServersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SemaphoreServersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> apiUrl = const Value.absent(),
            Value<String?> username = const Value.absent(),
            Value<String?> token = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              SemaphoreServersCompanion(
            id: id,
            name: name,
            apiUrl: apiUrl,
            username: username,
            token: token,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> apiUrl = const Value.absent(),
            Value<String?> username = const Value.absent(),
            Value<String?> token = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              SemaphoreServersCompanion.insert(
            id: id,
            name: name,
            apiUrl: apiUrl,
            username: username,
            token: token,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SemaphoreServersTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({semaphoreProjectsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (semaphoreProjectsRefs) db.semaphoreProjects
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (semaphoreProjectsRefs)
                    await $_getPrefetchedData<SemaphoreServer,
                            $SemaphoreServersTable, SemaphoreProject>(
                        currentTable: table,
                        referencedTable: $$SemaphoreServersTableReferences
                            ._semaphoreProjectsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SemaphoreServersTableReferences(db, table, p0)
                                .semaphoreProjectsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.serverId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SemaphoreServersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SemaphoreServersTable,
    SemaphoreServer,
    $$SemaphoreServersTableFilterComposer,
    $$SemaphoreServersTableOrderingComposer,
    $$SemaphoreServersTableAnnotationComposer,
    $$SemaphoreServersTableCreateCompanionBuilder,
    $$SemaphoreServersTableUpdateCompanionBuilder,
    (SemaphoreServer, $$SemaphoreServersTableReferences),
    SemaphoreServer,
    PrefetchHooks Function({bool semaphoreProjectsRefs})>;
typedef $$SemaphoreProjectsTableCreateCompanionBuilder
    = SemaphoreProjectsCompanion Function({
  Value<int> id,
  required int serverId,
  Value<int?> projectId,
  Value<String?> name,
  Value<bool?> alert,
  Value<String?> alertChat,
  Value<int?> maxParallelTasks,
  Value<DateTime?> createdAt,
});
typedef $$SemaphoreProjectsTableUpdateCompanionBuilder
    = SemaphoreProjectsCompanion Function({
  Value<int> id,
  Value<int> serverId,
  Value<int?> projectId,
  Value<String?> name,
  Value<bool?> alert,
  Value<String?> alertChat,
  Value<int?> maxParallelTasks,
  Value<DateTime?> createdAt,
});

final class $$SemaphoreProjectsTableReferences extends BaseReferences<
    _$AppDatabase, $SemaphoreProjectsTable, SemaphoreProject> {
  $$SemaphoreProjectsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $SemaphoreServersTable _serverIdTable(_$AppDatabase db) =>
      db.semaphoreServers.createAlias($_aliasNameGenerator(
          db.semaphoreProjects.serverId, db.semaphoreServers.id));

  $$SemaphoreServersTableProcessedTableManager get serverId {
    final $_column = $_itemColumn<int>('server_id')!;

    final manager =
        $$SemaphoreServersTableTableManager($_db, $_db.semaphoreServers)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_serverIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$SemaphoreProjectsTableFilterComposer
    extends Composer<_$AppDatabase, $SemaphoreProjectsTable> {
  $$SemaphoreProjectsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get projectId => $composableBuilder(
      column: $table.projectId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get alert => $composableBuilder(
      column: $table.alert, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get alertChat => $composableBuilder(
      column: $table.alertChat, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maxParallelTasks => $composableBuilder(
      column: $table.maxParallelTasks,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$SemaphoreServersTableFilterComposer get serverId {
    final $$SemaphoreServersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.serverId,
        referencedTable: $db.semaphoreServers,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SemaphoreServersTableFilterComposer(
              $db: $db,
              $table: $db.semaphoreServers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SemaphoreProjectsTableOrderingComposer
    extends Composer<_$AppDatabase, $SemaphoreProjectsTable> {
  $$SemaphoreProjectsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get projectId => $composableBuilder(
      column: $table.projectId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get alert => $composableBuilder(
      column: $table.alert, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get alertChat => $composableBuilder(
      column: $table.alertChat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maxParallelTasks => $composableBuilder(
      column: $table.maxParallelTasks,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$SemaphoreServersTableOrderingComposer get serverId {
    final $$SemaphoreServersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.serverId,
        referencedTable: $db.semaphoreServers,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SemaphoreServersTableOrderingComposer(
              $db: $db,
              $table: $db.semaphoreServers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SemaphoreProjectsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SemaphoreProjectsTable> {
  $$SemaphoreProjectsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get projectId =>
      $composableBuilder(column: $table.projectId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<bool> get alert =>
      $composableBuilder(column: $table.alert, builder: (column) => column);

  GeneratedColumn<String> get alertChat =>
      $composableBuilder(column: $table.alertChat, builder: (column) => column);

  GeneratedColumn<int> get maxParallelTasks => $composableBuilder(
      column: $table.maxParallelTasks, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$SemaphoreServersTableAnnotationComposer get serverId {
    final $$SemaphoreServersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.serverId,
        referencedTable: $db.semaphoreServers,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SemaphoreServersTableAnnotationComposer(
              $db: $db,
              $table: $db.semaphoreServers,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SemaphoreProjectsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SemaphoreProjectsTable,
    SemaphoreProject,
    $$SemaphoreProjectsTableFilterComposer,
    $$SemaphoreProjectsTableOrderingComposer,
    $$SemaphoreProjectsTableAnnotationComposer,
    $$SemaphoreProjectsTableCreateCompanionBuilder,
    $$SemaphoreProjectsTableUpdateCompanionBuilder,
    (SemaphoreProject, $$SemaphoreProjectsTableReferences),
    SemaphoreProject,
    PrefetchHooks Function({bool serverId})> {
  $$SemaphoreProjectsTableTableManager(
      _$AppDatabase db, $SemaphoreProjectsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SemaphoreProjectsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SemaphoreProjectsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SemaphoreProjectsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> serverId = const Value.absent(),
            Value<int?> projectId = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<bool?> alert = const Value.absent(),
            Value<String?> alertChat = const Value.absent(),
            Value<int?> maxParallelTasks = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              SemaphoreProjectsCompanion(
            id: id,
            serverId: serverId,
            projectId: projectId,
            name: name,
            alert: alert,
            alertChat: alertChat,
            maxParallelTasks: maxParallelTasks,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int serverId,
            Value<int?> projectId = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<bool?> alert = const Value.absent(),
            Value<String?> alertChat = const Value.absent(),
            Value<int?> maxParallelTasks = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              SemaphoreProjectsCompanion.insert(
            id: id,
            serverId: serverId,
            projectId: projectId,
            name: name,
            alert: alert,
            alertChat: alertChat,
            maxParallelTasks: maxParallelTasks,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SemaphoreProjectsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({serverId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (serverId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.serverId,
                    referencedTable:
                        $$SemaphoreProjectsTableReferences._serverIdTable(db),
                    referencedColumn: $$SemaphoreProjectsTableReferences
                        ._serverIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$SemaphoreProjectsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SemaphoreProjectsTable,
    SemaphoreProject,
    $$SemaphoreProjectsTableFilterComposer,
    $$SemaphoreProjectsTableOrderingComposer,
    $$SemaphoreProjectsTableAnnotationComposer,
    $$SemaphoreProjectsTableCreateCompanionBuilder,
    $$SemaphoreProjectsTableUpdateCompanionBuilder,
    (SemaphoreProject, $$SemaphoreProjectsTableReferences),
    SemaphoreProject,
    PrefetchHooks Function({bool serverId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SemaphoreServersTableTableManager get semaphoreServers =>
      $$SemaphoreServersTableTableManager(_db, _db.semaphoreServers);
  $$SemaphoreProjectsTableTableManager get semaphoreProjects =>
      $$SemaphoreProjectsTableTableManager(_db, _db.semaphoreProjects);
}
