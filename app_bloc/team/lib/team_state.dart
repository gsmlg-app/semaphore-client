part of 'team_bloc.dart';

@immutable
sealed class TeamState {}

final class TeamInitial extends TeamState {}

final class TeamLoading extends TeamState {}

final class TeamLoaded extends TeamState {
  final bool loading;
  final List<ProjectUser> users;

  TeamLoaded({required this.users, this.loading = false});
}

final class TeamError extends TeamState {
  final Object error;

  TeamError(this.error);
}
