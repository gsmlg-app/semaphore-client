import 'package:app_api/app_api.dart';
import 'package:flutter/foundation.dart';

@immutable
class ProjectState {
  final List<Project> projects;
  final Project? activeProject;

  final bool loaded;

  bool get hasProject => projects.isNotEmpty;
  bool get hasActiveProject => activeProject != null;

  const ProjectState({
    this.projects = const [],
    this.activeProject,
    this.loaded = false,
  });

  ProjectState copyWith({
    List<Project>? projects,
    Project? activeProject,
    bool? loaded,
  }) {
    return ProjectState(
      projects: projects ?? this.projects,
      activeProject: activeProject ?? this.activeProject,
      loaded: loaded ?? this.loaded,
    );
  }

  ProjectState copyWithGetter({
    List<Project> Function()? projects,
    Project? Function()? activeProject,
    bool Function()? loaded,
  }) {
    return ProjectState(
      projects: projects == null ? this.projects : projects(),
      activeProject:
          activeProject == null ? this.activeProject : activeProject(),
      loaded: loaded == null ? this.loaded : loaded(),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectState &&
          runtimeType == other.runtimeType &&
          listEquals(projects, other.projects) &&
          activeProject == other.activeProject &&
          loaded == other.loaded;

  @override
  int get hashCode =>
      projects.hashCode ^ activeProject.hashCode ^ loaded.hashCode;

  @override
  String toString() {
    return 'ProjectState(projects: $projects, activeProject: $activeProject, loaded: $loaded)';
  }
}
