import 'package:app_database/app_database.dart';
import 'package:app_logging/app_logging.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'event.dart';
import 'state.dart';

export 'event.dart';
export 'state.dart';

class SemaphoreServerBloc
    extends Bloc<SemaphoreServerEvent, SemaphoreServerState> {
  final AppDatabase database;
  final SharedPreferences sharedPreferences;

  SemaphoreServerBloc(
    super.initialState,
    this.database,
    this.sharedPreferences,
  ) {
    on<LoadServers>(_onLoadServers);
    on<SelectServer>(_onSelectServer);
    on<AddServer>(_onAddServer);
    on<UpdateServer>(_onUpdateServer);
    on<RemoveServer>(_onRemoveServer);
    on<LoadProjects>(_onLoadProjects);
    on<LoadSavedState>(_onLoadSavedState);
  }

  Future<void> _onLoadSavedState(
    LoadSavedState event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    try {
      final servers = await (database.select(
        database.semaphoreServers,
      )..orderBy([(t) => drift.OrderingTerm(expression: t.id)])).get();

      final activeServerId = sharedPreferences.getInt('active_server_id');
      final activeProjectId = sharedPreferences.getInt(
        'active_server_project_id',
      );

      SemaphoreServer? activeServer;
      SemaphoreProject? activeProject;

      if (activeServerId != null) {
        try {
          activeServer = servers.firstWhere(
            (server) => server.id == activeServerId,
          );
        } catch (e) {
          // Server not found, clear the saved ID
          sharedPreferences.remove('active_server_id');
          sharedPreferences.remove('active_server_project_id');
        }
      }

      if (activeProjectId != null && activeServer != null) {
        final serverId = activeServer.id;
        final projects = await (database.select(
          database.semaphoreProjects,
        )..where((t) => t.serverId.equals(serverId))).get();

        try {
          activeProject = projects.firstWhere(
            (project) => project.projectId == activeProjectId,
          );
        } catch (e) {
          // Project not found, clear the saved project ID
          sharedPreferences.remove('active_server_project_id');
        }
      }

      emitter(
        SemaphoreServerState(
          servers: servers,
          activeServer: activeServer,
          activeProject: activeProject,
          loaded: true,
        ),
      );
    } catch (e) {
      AppLogger().e('Failed to load saved state', e);
      emitter(SemaphoreServerState(loaded: true));
    }
  }

  Future<void> _onLoadServers(
    LoadServers event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    final servers = await (database.select(
      database.semaphoreServers,
    )..orderBy([(t) => drift.OrderingTerm(expression: t.id)])).get();

    emitter(state.copyWith(servers: servers, loaded: true));
  }

  Future<void> _onAddServer(
    AddServer event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    final serverId = await database
        .into(database.semaphoreServers)
        .insert(
          SemaphoreServersCompanion.insert(
            name: drift.Value(event.server.name),
            apiUrl: drift.Value(event.server.apiUrl),
            username: drift.Value(event.server.username),
            token: drift.Value(event.server.token),
            createdAt: drift.Value(event.server.createdAt),
          ),
        );

    final server = await (database.select(
      database.semaphoreServers,
    )..where((t) => t.id.equals(serverId))).getSingle();

    final servers = await (database.select(
      database.semaphoreServers,
    )..orderBy([(t) => drift.OrderingTerm(expression: t.id)])).get();

    emitter(state.copyWith(servers: servers));
    add(LoadProjects(server));
  }

  Future<void> _onUpdateServer(
    UpdateServer event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    await database
        .update(database.semaphoreServers)
        .replace(
          SemaphoreServer(
            id: event.server.id,
            name: event.server.name,
            apiUrl: event.server.apiUrl,
            username: event.server.username,
            token: event.server.token,
            createdAt: event.server.createdAt,
          ),
        );

    final servers = await (database.select(
      database.semaphoreServers,
    )..orderBy([(t) => drift.OrderingTerm(expression: t.id)])).get();

    emitter(state.copyWith(servers: servers));
  }

  Future<void> _onSelectServer(
    SelectServer event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    sharedPreferences.setInt('active_server_id', event.server.id);
    if (event.project?.projectId != null) {
      sharedPreferences.setInt(
        'active_server_project_id',
        event.project!.projectId!,
      );
    } else {
      sharedPreferences.remove('active_server_project_id');
    }

    emitter(
      state.copyWith(activeServer: event.server, activeProject: event.project),
    );
  }

  Future<void> _onRemoveServer(
    RemoveServer event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    // Delete projects first (foreign key constraint)
    await (database.delete(
      database.semaphoreProjects,
    )..where((t) => t.serverId.equals(event.server.id))).go();

    // Delete server
    await (database.delete(
      database.semaphoreServers,
    )..where((t) => t.id.equals(event.server.id))).go();

    final servers = await (database.select(
      database.semaphoreServers,
    )..orderBy([(t) => drift.OrderingTerm(expression: t.id)])).get();

    if (servers.isEmpty) {
      emitter(state.copyWith(servers: [], activeServer: null));
    } else {
      int? serverId = sharedPreferences.getInt('active_server_id');
      if (serverId == event.server.id) {
        sharedPreferences.remove('active_server_id');
      }
      emitter(
        state.copyWith(
          servers: servers,
          activeServer: state.activeServer?.id == event.server.id
              ? null
              : state.activeServer,
        ),
      );
    }
  }

  Future<void> _onLoadProjects(
    LoadProjects event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    try {
      final server = event.server;
      final resp = await server.api.getProjectsApi().projectsGet();
      AppLogger().d('Projects loaded: ${resp.data}');

      // Delete existing projects for this server
      await (database.delete(
        database.semaphoreProjects,
      )..where((t) => t.serverId.equals(server.id))).go();

      // Insert new projects
      for (var project in resp.data!) {
        await database
            .into(database.semaphoreProjects)
            .insert(
              SemaphoreProjectsCompanion.insert(
                serverId: server.id,
                projectId: drift.Value(project.id),
                name: drift.Value(project.name),
                alert: drift.Value(project.alert),
                // alertChat: drift.Value(project.alertChat)
                maxParallelTasks: drift.Value(project.maxParallelTasks),
                // createdAt: drift.Value(project.created),
              ),
            );
      }

      final servers = await (database.select(
        database.semaphoreServers,
      )..orderBy([(t) => drift.OrderingTerm(expression: t.id)])).get();

      emitter(state.copyWith(servers: servers));
    } catch (e, s) {
      AppLogger().e('Failed to load projects', e, s);
    }
  }
}
