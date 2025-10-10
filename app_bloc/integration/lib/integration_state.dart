part of 'integration_bloc.dart';

@immutable
sealed class IntegrationState {}

final class IntegrationInitial extends IntegrationState {}

final class IntegrationLoading extends IntegrationState {}

final class IntegrationLoaded extends IntegrationState {
  final bool loading;
  final List<Integration> integrations;

  IntegrationLoaded({required this.integrations, this.loading = false});
}

final class IntegrationError extends IntegrationState {
  final Object error;

  IntegrationError(this.error);
}
