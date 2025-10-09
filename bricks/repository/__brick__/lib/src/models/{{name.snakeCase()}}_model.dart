import 'package:equatable/equatable.dart';

/// {@template {{name.snakeCase()}}_model}
/// Model representing {{name.sentenceCase()}} data.
/// {@endtemplate}
class {{model_name.pascalCase()}}Model extends Equatable {
  /// {@macro {{name.snakeCase()}}_model}
  const {{model_name.pascalCase()}}Model({
    required this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Unique identifier
  final String id;

  /// Creation timestamp
  final DateTime? createdAt;

  /// Last update timestamp
  final DateTime? updatedAt;

  /// Creates a copy of this model with the given fields updated.
  {{model_name.pascalCase()}}Model copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return {{model_name.pascalCase()}}Model(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// Converts the model to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  /// Creates a model from a JSON map.
  factory {{model_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) {
    return {{model_name.pascalCase()}}Model(
      id: json['id'] as String,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'] as String)
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'] as String)
          : null,
    );
  }

  /// Creates an empty model for testing purposes.
  factory {{model_name.pascalCase()}}Model.empty() {
    return {{model_name.pascalCase()}}Model(
      id: '',
      createdAt: null,
      updatedAt: null,
    );
  }

  @override
  List<Object?> get props => [id, createdAt, updatedAt];

  @override
  bool get stringify => true;
}