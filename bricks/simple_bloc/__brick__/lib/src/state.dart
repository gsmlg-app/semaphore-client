part of 'bloc.dart';

enum {{name.pascalCase()}}Status { initial, loading, completed, error }

class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State({
    this.status = {{name.pascalCase()}}Status.initial,
    this.error,
  });

  final {{name.pascalCase()}}Status status;
  final String? error;

  factory {{name.pascalCase()}}State.initial() {
    return const {{name.pascalCase()}}State();
  }

  {{name.pascalCase()}}State copyWith({
    {{name.pascalCase()}}Status? status,
    String? error,
  }) {
    return {{name.pascalCase()}}State(
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, error];
}
