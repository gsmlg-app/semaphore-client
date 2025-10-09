import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart' as logging;

import 'error_event.dart';
import 'error_severity.dart';
import 'error_state.dart';

class ErrorBloc extends Bloc<ErrorEvent, ErrorState> {
  final logging.Logger _logger = logging.Logger('ErrorBloc');

  ErrorBloc() : super(const ErrorState()) {
    on<ErrorReported>(_onErrorReported);
    on<ErrorDismissed>(_onErrorDismissed);
    on<ErrorsCleared>(_onErrorsCleared);
    on<ErrorRecovered>(_onErrorRecovered);
  }

  Future<void> _onErrorReported(
    ErrorReported event,
    Emitter<ErrorState> emit,
  ) async {
    final errorId = _generateErrorId();
    final appError = AppError(
      id: errorId,
      error: event.error,
      stackTrace: event.stackTrace,
      context: event.context,
      severity: event.severity,
      userMessage: _getUserMessage(event.error, event.severity),
    );

    _logger.severe(
      'Error reported: ${event.error}',
      event.error,
      event.stackTrace,
    );

    final newActiveErrors = List<AppError>.from(state.activeErrors)
      ..add(appError);

    emit(
      state.copyWith(
        activeErrors: newActiveErrors,
        lastErrorMessage: appError.displayMessage,
      ),
    );
  }

  void _onErrorDismissed(ErrorDismissed event, Emitter<ErrorState> emit) {
    final activeErrors = state.activeErrors
        .where((error) => error.id != event.errorId)
        .toList();

    emit(state.copyWith(activeErrors: activeErrors));
  }

  void _onErrorsCleared(ErrorsCleared event, Emitter<ErrorState> emit) {
    emit(state.copyWith(activeErrors: const []));
  }

  void _onErrorRecovered(ErrorRecovered event, Emitter<ErrorState> emit) {
    final errorToResolve = state.activeErrors.firstWhere(
      (error) => error.id == event.errorId,
    );

    final resolvedError = errorToResolve.copyWith(isResolved: true);

    final activeErrors = state.activeErrors
        .where((error) => error.id != event.errorId)
        .toList();

    final resolvedErrors = List<AppError>.from(state.resolvedErrors)
      ..add(resolvedError);

    emit(
      state.copyWith(
        activeErrors: activeErrors,
        resolvedErrors: resolvedErrors,
      ),
    );
  }

  String _generateErrorId() {
    return 'err_${DateTime.now().millisecondsSinceEpoch}_${DateTime.now().microsecond}';
  }

  String? _getUserMessage(dynamic error, ErrorSeverity severity) {
    if (error is String) return error;

    switch (severity) {
      case ErrorSeverity.critical:
        return 'A critical error occurred. Please restart the app.';
      case ErrorSeverity.high:
        return 'Something went wrong. Please try again.';
      case ErrorSeverity.medium:
        return 'We encountered a small issue. It should resolve shortly.';
      case ErrorSeverity.low:
        return null; // Don't show low severity errors to users
    }
  }

  // Helper methods for common error patterns
  void reportError(
    dynamic error, {
    StackTrace? stackTrace,
    String? context,
    bool showToUser = true,
    ErrorSeverity severity = ErrorSeverity.high,
  }) {
    add(
      ErrorReported(
        error: error,
        stackTrace: stackTrace,
        context: context,
        showToUser: showToUser,
        severity: severity,
      ),
    );
  }

  void reportNetworkError(
    dynamic error, {
    StackTrace? stackTrace,
    String? context,
    bool showToUser = true,
  }) {
    reportError(
      error,
      stackTrace: stackTrace,
      context: context ?? 'Network request failed',
      showToUser: showToUser,
      severity: ErrorSeverity.medium,
    );
  }

  void reportValidationError(String message, {String? context}) {
    reportError(
      message,
      context: context ?? 'Validation error',
      showToUser: true,
      severity: ErrorSeverity.low,
    );
  }

  void reportUnexpectedError(
    dynamic error, {
    StackTrace? stackTrace,
    String? context,
  }) {
    reportError(
      error,
      stackTrace: stackTrace,
      context: context ?? 'Unexpected error',
      showToUser: true,
      severity: ErrorSeverity.high,
    );
  }
}
