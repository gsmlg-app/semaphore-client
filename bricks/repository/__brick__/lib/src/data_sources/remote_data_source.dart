import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../exceptions/exceptions.dart';
import '../models/{{name.snakeCase()}}_model.dart';

/// {@template {{name.snakeCase()}}_remote_data_source}
/// Remote data source for {{name.sentenceCase()}} operations.
/// Handles API calls and network connectivity.
/// {@endtemplate}
abstract class {{model_name.pascalCase()}}RemoteDataSource {
  /// {@macro {{name.snakeCase()}}_remote_data_source}
  const {{model_name.pascalCase()}}RemoteDataSource();

  /// Fetches {{name.sentenceCase()}} from remote API
  Future<{{model_name.pascalCase()}}Model> get{{model_name.pascalCase()}}(String id);

  /// Fetches all {{name.sentenceCase()}}s from remote API
  Future<List<{{model_name.pascalCase()}}Model>> getAll{{model_name.pascalCase()}}s();

  /// Creates a new {{name.sentenceCase()}} via remote API
  Future<{{model_name.pascalCase()}}Model> create{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase()}});

  /// Updates an existing {{name.sentenceCase()}} via remote API
  Future<{{model_name.pascalCase()}}Model> update{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase()}});

  /// Deletes a {{name.sentenceCase()}} via remote API
  Future<void> delete{{model_name.pascalCase()}}(String id);
}

/// {@template {{name.snakeCase()}}_remote_data_source_impl}
/// Implementation of {{model_name.pascalCase()}}RemoteDataSource using Dio.
/// {@endtemplate}
class {{model_name.pascalCase()}}RemoteDataSourceImpl extends {{model_name.pascalCase()}}RemoteDataSource {
  /// {@macro {{name.snakeCase()}}_remote_data_source_impl}
  {{model_name.pascalCase()}}RemoteDataSourceImpl({
    required this.dio,
    required this.connectivity,
    this.baseUrl = 'https://api.example.com',
  });

  /// Dio HTTP client
  final Dio dio;

  /// Connectivity checker
  final Connectivity connectivity;

  /// Base URL for API calls
  final String baseUrl;

  /// Validates network connectivity
  Future<void> _checkConnectivity() async {
    final result = await connectivity.checkConnectivity();
    if (result == ConnectivityResult.none) {
      throw {{model_name.pascalCase()}}NetworkException('No internet connection');
    }
  }

  @override
  Future<{{model_name.pascalCase()}}Model> get{{model_name.pascalCase()}}(String id) async {
    try {
      await _checkConnectivity();

      final response = await dio.get<Map<String, dynamic>>(
        '$baseUrl/{{name.camelCase()}}s/$id',
      );

      if (response.statusCode == 200) {
        return {{model_name.pascalCase()}}Model.fromJson(response.data!);
      } else if (response.statusCode == 404) {
        throw {{model_name.pascalCase()}}NotFoundException(id);
      } else {
        throw {{model_name.pascalCase()}}NetworkException(
          'Failed to fetch {{name.sentenceCase()}}: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw {{model_name.pascalCase()}}NetworkException(
        'Network error while fetching {{name.sentenceCase()}}: ${e.message}',
        e,
      );
    } catch (e) {
      throw {{model_name.pascalCase()}}NetworkException(
        'Unexpected error while fetching {{name.sentenceCase()}}',
        e,
      );
    }
  }

  @override
  Future<List<{{model_name.pascalCase()}}Model>> getAll{{model_name.pascalCase()}}s() async {
    try {
      await _checkConnectivity();

      final response = await dio.get<List<dynamic>>(
        '$baseUrl/{{name.camelCase()}}s',
      );

      if (response.statusCode == 200) {
        return response.data!
            .map((json) => {{model_name.pascalCase()}}Model.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw {{model_name.pascalCase()}}NetworkException(
          'Failed to fetch {{name.sentenceCase()}}s: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw {{model_name.pascalCase()}}NetworkException(
        'Network error while fetching {{name.sentenceCase()}}s: ${e.message}',
        e,
      );
    } catch (e) {
      throw {{model_name.pascalCase()}}NetworkException(
        'Unexpected error while fetching {{name.sentenceCase()}}s',
        e,
      );
    }
  }

  @override
  Future<{{model_name.pascalCase()}}Model> create{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase()}}) async {
    try {
      await _checkConnectivity();

      final response = await dio.post<Map<String, dynamic>>(
        '$baseUrl/{{name.camelCase()}}s',
        data: {{name.camelCase()}}.toJson(),
      );

      if (response.statusCode == 201) {
        return {{model_name.pascalCase()}}Model.fromJson(response.data!);
      } else {
        throw {{model_name.pascalCase()}}NetworkException(
          'Failed to create {{name.sentenceCase()}}: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw {{model_name.pascalCase()}}NetworkException(
        'Network error while creating {{name.sentenceCase()}}: ${e.message}',
        e,
      );
    } catch (e) {
      throw {{model_name.pascalCase()}}NetworkException(
        'Unexpected error while creating {{name.sentenceCase()}}',
        e,
      );
    }
  }

  @override
  Future<{{model_name.pascalCase()}}Model> update{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase()}}) async {
    try {
      await _checkConnectivity();

      final response = await dio.put<Map<String, dynamic>>(
        '$baseUrl/{{name.camelCase()}}s/${{name.camelCase()}}.id',
        data: {{name.camelCase()}}.toJson(),
      );

      if (response.statusCode == 200) {
        return {{model_name.pascalCase()}}Model.fromJson(response.data!);
      } else if (response.statusCode == 404) {
        throw {{model_name.pascalCase()}}NotFoundException({{name.camelCase()}}.id);
      } else {
        throw {{model_name.pascalCase()}}NetworkException(
          'Failed to update {{name.sentenceCase()}}: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw {{model_name.pascalCase()}}NetworkException(
        'Network error while updating {{name.sentenceCase()}}: ${e.message}',
        e,
      );
    } catch (e) {
      throw {{model_name.pascalCase()}}NetworkException(
        'Unexpected error while updating {{name.sentenceCase()}}',
        e,
      );
    }
  }

  @override
  Future<void> delete{{model_name.pascalCase()}}(String id) async {
    try {
      await _checkConnectivity();

      final response = await dio.delete<void>(
        '$baseUrl/{{name.camelCase()}}s/$id',
      );

      if (response.statusCode == 204 || response.statusCode == 200) {
        return;
      } else if (response.statusCode == 404) {
        throw {{model_name.pascalCase()}}NotFoundException(id);
      } else {
        throw {{model_name.pascalCase()}}NetworkException(
          'Failed to delete {{name.sentenceCase()}}: ${response.statusCode}',
        );
      }
    } on DioException catch (e) {
      throw {{model_name.pascalCase()}}NetworkException(
        'Network error while deleting {{name.sentenceCase()}}: ${e.message}',
        e,
      );
    } catch (e) {
      throw {{model_name.pascalCase()}}NetworkException(
        'Unexpected error while deleting {{name.sentenceCase()}}',
        e,
      );
    }
  }
}

/// Mock implementation for testing
class Mock{{model_name.pascalCase()}}RemoteDataSource extends {{model_name.pascalCase()}}RemoteDataSource {
  final List<{{model_name.pascalCase()}}Model> _mockData = [];

  @override
  Future<{{model_name.pascalCase()}}Model> get{{model_name.pascalCase()}}(String id) async {
    final {{name.camelCase()}} = _mockData.firstWhere(
      (u) => u.id == id,
      orElse: () => throw {{model_name.pascalCase()}}NotFoundException(id),
    );
    return {{name.camelCase}};
  }

  @override
  Future<List<{{model_name.pascalCase()}}Model>> getAll{{model_name.pascalCase()}}s() async {
    return List.from(_mockData);
  }

  @override
  Future<{{model_name.pascalCase()}}Model> create{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase}}) async {
    final new{{model_name.pascalCase()}} = {{name.camelCase}}.copyWith(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      createdAt: DateTime.now(),
    );
    _mockData.add(new{{model_name.pascalCase()}});
    return new{{model_name.pascalCase()}};
  }

  @override
  Future<{{model_name.pascalCase()}}Model> update{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase}}) async {
    final index = _mockData.indexWhere((u) => u.id == {{name.camelCase}}.id);
    if (index == -1) {
      throw {{model_name.pascalCase()}}NotFoundException({{name.camelCase}}.id);
    }
    final updated{{model_name.pascalCase()}} = {{name.camelCase}}.copyWith(updatedAt: DateTime.now());
    _mockData[index] = updated{{model_name.pascalCase()}};
    return updated{{model_name.pascalCase()}};
  }

  @override
  Future<void> delete{{model_name.pascalCase()}}(String id) async {
    final index = _mockData.indexWhere((u) => u.id == id);
    if (index == -1) {
      throw {{model_name.pascalCase()}}NotFoundException(id);
    }
    _mockData.removeAt(index);
  }

  // Helper method for tests
  void addMockData({{model_name.pascalCase()}}Model {{name.camelCase}}) {
    _mockData.add({{name.camelCase}});
  }

  // Helper method to clear mock data
  void clearMockData() {
    _mockData.clear();
  }
}

/// Factory for creating data sources
class {{model_name.pascalCase()}}RemoteDataSourceFactory {
  static {{model_name.pascalCase()}}RemoteDataSource create({
    required Dio dio,
    required Connectivity connectivity,
    String? baseUrl,
  }) {
    return {{model_name.pascalCase()}}RemoteDataSourceImpl(
      dio: dio,
      connectivity: connectivity,
      baseUrl: baseUrl ?? 'https://api.example.com',
    );
  }

  static {{model_name.pascalCase()}}RemoteDataSource createMock() {
    return Mock{{model_name.pascalCase()}}RemoteDataSource();
  }
}