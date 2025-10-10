import 'package:app_database/app_database.dart';

sealed class SemaphoreServerEvent {}

class LoadServers extends SemaphoreServerEvent {}

class UnloadServers extends SemaphoreServerEvent {}

class AddServer extends SemaphoreServerEvent {
  final SemaphoreServer server;

  AddServer(this.server);
}

class UpdateServer extends SemaphoreServerEvent {
  final SemaphoreServer server;

  UpdateServer(this.server);
}

class RemoveServer extends SemaphoreServerEvent {
  final SemaphoreServer server;

  RemoveServer(this.server);
}

class SelectServer extends SemaphoreServerEvent {
  final SemaphoreServer server;
  final SemaphoreProject? project;
  SelectServer(this.server, [this.project]);
}

class NoServerExecption extends SemaphoreServerEvent {}

class ServerNotFound extends SemaphoreServerEvent {}

class LoadProjects extends SemaphoreServerEvent {
  final SemaphoreServer server;

  LoadProjects(this.server);
}
