part of 'template_bloc.dart';

@immutable
sealed class TemplateEvent {}

final class TemplateLoad extends TemplateEvent {
  final SemaphoreApi api;
  final int projectId;

  TemplateLoad(this.api, this.projectId);
}
