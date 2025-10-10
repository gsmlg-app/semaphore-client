import 'package:flutter_bloc/flutter_bloc.dart';
import 'event.dart';
import 'state.dart';
import 'package:app_database/app_database.dart';
import 'package:app_database/objectbox.g.dart';
import 'package:app_database/objectbox_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

export 'event.dart';
export 'state.dart';

class SemaphoreServerBloc
    extends Bloc<SemaphoreServerEvent, SemaphoreServerState> {
  final ObjectBox objectBox;
  final SharedPreferences sharedPreferences;

  SemaphoreServerBloc(
    super.initialState,
    this.objectBox,
    this.sharedPreferences,
  ) {
    on<LoadServers>(_onLoadServers);
    on<SelectServer>(_onSelectServer);
    on<AddServer>(_onAddServer);
    on<UpdateServer>(_onUpdateServer);
    on<RemoveServer>(_onRemoveServer);
    on<LoadProjects>(_onLoadProjects);
  }

  _onLoadServers(
    LoadServers event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    Box<SemaphoreServer> serverBox = objectBox.store.box<SemaphoreServer>();
    final servers = serverBox.getAll();
    if (servers.isEmpty) {
      emitter(state.copyWith(servers: [], activeServer: null, loaded: true));
    } else {
      int? serverId = sharedPreferences.getInt('active_server_id');
      SemaphoreServer activeServer = servers.firstWhere(
          (server) => server.id == serverId,
          orElse: () => servers.first);
      int? projectId = sharedPreferences.getInt('active_server_project_id');
      final activeProject = activeServer.projects
          .where((project) => project.projectId == projectId)
          .firstOrNull;
      sharedPreferences.setInt('active_server_id', activeServer.id);
      emitter(state.copyWith(
          servers: servers,
          activeServer: activeServer,
          activeProject: activeProject,
          loaded: true));
    }
  }

  _onSelectServer(
    SelectServer event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    sharedPreferences.setInt('active_server_id', event.server.id);
    if (event.project?.projectId != null) {
      sharedPreferences.setInt(
          'active_server_project_id', event.project!.projectId!);
    } else {
      sharedPreferences.remove('active_server_project_id');
    }

    emitter(state.copyWith(
        activeServer: event.server, activeProject: event.project));
  }

  _onAddServer(
    AddServer event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    Box<SemaphoreServer> serverBox = objectBox.store.box<SemaphoreServer>();
    serverBox.put(event.server);
    final servers = serverBox.getAll();
    emitter(state.copyWith(servers: servers));
    add(LoadProjects(event.server));
  }

  _onUpdateServer(
    UpdateServer event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    Box<SemaphoreServer> serverBox = objectBox.store.box<SemaphoreServer>();
    serverBox.put(event.server);
    final servers = serverBox.getAll();
    emitter(state.copyWith(servers: servers));
  }

  _onRemoveServer(
    RemoveServer event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    Box<SemaphoreServer> serverBox = objectBox.store.box<SemaphoreServer>();
    final servers = serverBox.getAll();
    if (servers.isEmpty) {
      emitter(state.copyWith(servers: [], activeServer: null));
    } else {
      int? serverId = sharedPreferences.getInt('active_server_id');
      if (serverId == event.server.id) {
        sharedPreferences.remove('active_server_id');
      }
      final servers =
          state.servers.where((s) => s.id != event.server.id).toList();
      emitter(state.copyWith(
          servers: servers,
          activeServer: state.activeServer?.id == event.server.id
              ? null
              : state.activeServer));
    }
  }

  _onLoadProjects(
    LoadProjects event,
    Emitter<SemaphoreServerState> emitter,
  ) async {
    try {
      Box<SemaphoreServer> serverBox = objectBox.store.box<SemaphoreServer>();
      final server = event.server;
      final resp = await server.api.getProjectsApi().projectsGet();
      print('projects: ${resp.data}');
      server.projects.clear();
      for (var project in resp.data!) {
        final semaphoreProject = SemaphoreProject()
          ..projectId = project.id
          ..name = project.name
          ..alert = project.alert
          // ..alertChat = project.alertChat
          ..maxParallelTasks = project.maxParallelTasks;
        // ..createdAt = project.created;
        server.projects.add(semaphoreProject);
      }
      serverBox.put(server);
      final servers = serverBox.getAll();
      emitter(state.copyWith(servers: servers));
    } catch (e, s) {
      print(e);
      print(s);
    }
  }
}
