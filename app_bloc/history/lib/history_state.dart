part of 'history_bloc.dart';

@immutable
sealed class HistoryState {}

final class HistoryInitial extends HistoryState {}

final class HistoryLoading extends HistoryState {}

final class HistoryLoaded extends HistoryState {
  final List<Task> history;
  final bool loading;

  HistoryLoaded({required this.history, this.loading = false});
}

final class HistoryError extends HistoryState {
  final Object error;

  HistoryError(this.error);
}
