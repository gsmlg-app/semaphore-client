part of 'template_bloc.dart';

@immutable
sealed class TemplateState {}

final class TemplateInitial extends TemplateState {}

final class TemplateLoading extends TemplateState {}

final class TemplateLoaded extends TemplateState {
  final List<Template> templates;
  final bool loading;

  TemplateLoaded({required this.templates, this.loading = false});
}

final class TemplateError extends TemplateState {
  final Object error;

  TemplateError(this.error);
}
