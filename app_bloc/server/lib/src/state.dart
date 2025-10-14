import 'package:flutter/foundation.dart';
import 'package:app_database/app_database.dart';

class SemaphoreServerState {
  final List<SemaphoreServer> servers;
  final SemaphoreServer? activeServer;
  final SemaphoreProject? activeProject;

  final bool loaded;

  bool get hasServer => servers.isNotEmpty;
  bool get hasActiveServer => activeServer != null;
  bool get hasActiveProject => activeProject != null;



  SemaphoreServerState({
    this.servers = const [],
    this.activeServer,
    this.activeProject,
    this.loaded = false,
  });

  SemaphoreServerState copyWith({
    List<SemaphoreServer>? servers,
    SemaphoreServer? activeServer,
    SemaphoreProject? activeProject,
    bool? loaded,
  }) {
    return SemaphoreServerState(
      servers: servers ?? this.servers,
      activeServer: activeServer ?? this.activeServer,
      activeProject: activeProject ?? this.activeProject,
      loaded: loaded ?? this.loaded,
    );
  }

  SemaphoreServerState copyWithGetter({
    List<SemaphoreServer> Function()? servers,
    SemaphoreServer? Function()? activeServer,
    SemaphoreProject? Function()? activeProject,
    bool Function()? loaded,
  }) {
    return SemaphoreServerState(
      servers: servers == null ? this.servers : servers(),
      activeServer: activeServer == null ? this.activeServer : activeServer(),
      activeProject: activeProject == null
          ? this.activeProject
          : activeProject(),
      loaded: loaded == null ? this.loaded : loaded(),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SemaphoreServerState &&
          runtimeType == other.runtimeType &&
          listEquals(servers, other.servers) &&
          activeServer == other.activeServer &&
          activeProject == other.activeProject &&
          loaded == other.loaded;

  @override
  int get hashCode =>
      servers.hashCode ^ activeServer.hashCode ^ loaded.hashCode;

  @override
  String toString() {
    return 'SemaphoreServerState(servers: $servers, activeServer: $activeServer, activeProject: $activeProject, loaded: $loaded)';
  }
}
