import 'package:app_api/app_api.dart';

sealed class ProjectEvent {}

class LoadProjects extends ProjectEvent {}

class UnloadProjects extends ProjectEvent {}

class AddProject extends ProjectEvent {
  final ProjectRequest projectRequest;

  AddProject(this.projectRequest);
}

class UpdateProject extends ProjectEvent {
  final int projectId;
  final ProjectRequest projectRequest;

  UpdateProject(this.projectId, this.projectRequest);
}

class GetProject extends ProjectEvent {
  final int projectId;

  GetProject(this.projectId);
}

class RemoveProject extends ProjectEvent {
  final int projectId;

  RemoveProject(this.projectId);
}

class SelectProject extends ProjectEvent {
  final Project project;

  SelectProject(this.project);
}

class NoProjectExecption extends ProjectEvent {}

class ProjectNotFount extends ProjectEvent {}
