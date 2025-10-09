import 'package:equatable/equatable.dart';

import 'error_severity.dart';

class ErrorState extends Equatable {
  final List<AppError> activeErrors;
  final List<AppError> resolvedErrors;
  final bool isLoading;
  final String? lastErrorMessage;

  const ErrorState({
    this.activeErrors = const [],
    this.resolvedErrors = const [],
    this.isLoading = false,
    this.lastErrorMessage,
  });

  ErrorState copyWith({
    List<AppError>? activeErrors,
    List<AppError>? resolvedErrors,
    bool? isLoading,
    String? lastErrorMessage,
  }) {
    return ErrorState(
      activeErrors: activeErrors ?? this.activeErrors,
      resolvedErrors: resolvedErrors ?? this.resolvedErrors,
      isLoading: isLoading ?? this.isLoading,
      lastErrorMessage: lastErrorMessage ?? this.lastErrorMessage,
    );
  }

  bool get hasErrors => activeErrors.isNotEmpty;
  bool get hasCriticalErrors =>
      activeErrors.any((e) => e.severity == ErrorSeverity.critical);

  @override
  List<Object?> get props => [
    activeErrors,
    resolvedErrors,
    isLoading,
    lastErrorMessage,
  ];
}

class AppError extends Equatable {
  final String id;
  final dynamic error;
  final StackTrace? stackTrace;
  final String? context;
  final ErrorSeverity severity;
  final DateTime timestamp;
  final bool isResolved;
  final String? userMessage;

  AppError({
    required this.id,
    required this.error,
    this.stackTrace,
    this.context,
    required this.severity,
    DateTime? timestamp,
    this.isResolved = false,
    this.userMessage,
  }) : timestamp = timestamp ?? DateTime.now();

  AppError copyWith({
    String? id,
    dynamic error,
    StackTrace? stackTrace,
    String? context,
    ErrorSeverity? severity,
    DateTime? timestamp,
    bool? isResolved,
    String? userMessage,
  }) {
    return AppError(
      id: id ?? this.id,
      error: error ?? this.error,
      stackTrace: stackTrace ?? this.stackTrace,
      context: context ?? this.context,
      severity: severity ?? this.severity,
      timestamp: timestamp ?? this.timestamp,
      isResolved: isResolved ?? this.isResolved,
      userMessage: userMessage ?? this.userMessage,
    );
  }

  String get displayMessage => userMessage ?? _getDefaultMessage();

  String _getDefaultMessage() {
    if (error is String) return error as String;
    if (error is Exception) return error.toString();
    return 'An unexpected error occurred';
  }

  @override
  List<Object?> get props => [
    id,
    error,
    stackTrace,
    context,
    severity,
    timestamp,
    isResolved,
  ];
}
