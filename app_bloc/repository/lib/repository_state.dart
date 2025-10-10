part of 'repository_bloc.dart';

@immutable
sealed class RepositoryState {}

final class RepositoryInitial extends RepositoryState {}

final class RepositoryLoading extends RepositoryState {}

final class RepositoryLoaded extends RepositoryState {
  final bool loading;
  final List<Repository> repositorys;

  RepositoryLoaded({required this.repositorys, this.loading = false});
}

final class RepositoryError extends RepositoryState {
  final Object error;

  RepositoryError(this.error);
}
