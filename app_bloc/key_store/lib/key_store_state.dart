part of 'key_store_bloc.dart';

@immutable
sealed class KeyStoreState {}

final class KeyStoreInitial extends KeyStoreState {}

final class KeyStoreLoading extends KeyStoreState {}

final class KeyStoreLoaded extends KeyStoreState {
  final bool loading;
  final List<AccessKey> accessKeys;

  KeyStoreLoaded({required this.accessKeys, this.loading = false});
}

final class KeyStoreError extends KeyStoreState {
  final Object error;

  KeyStoreError(this.error);
}
