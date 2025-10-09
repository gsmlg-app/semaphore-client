import 'package:equatable/equatable.dart';
import 'error_severity.dart';

sealed class ErrorEvent extends Equatable {
  const ErrorEvent();

  @override
  List<Object?> get props => [];
}

class ErrorReported extends ErrorEvent {
  final dynamic error;
  final StackTrace? stackTrace;
  final String? context;
  final bool showToUser;
  final ErrorSeverity severity;

  const ErrorReported({
    required this.error,
    this.stackTrace,
    this.context,
    this.showToUser = true,
    this.severity = ErrorSeverity.high,
  });

  @override
  List<Object?> get props => [error, stackTrace, context, showToUser, severity];
}

class ErrorDismissed extends ErrorEvent {
  final String errorId;

  const ErrorDismissed(this.errorId);

  @override
  List<Object?> get props => [errorId];
}

class ErrorsCleared extends ErrorEvent {
  const ErrorsCleared();
}

class ErrorRecovered extends ErrorEvent {
  final String errorId;

  const ErrorRecovered(this.errorId);

  @override
  List<Object?> get props => [errorId];
}
