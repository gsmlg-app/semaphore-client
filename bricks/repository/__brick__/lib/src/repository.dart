{{#has_remote_data_source}}
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
{{/has_remote_data_source}}
{{#has_local_data_source}}
import 'package:shared_preferences/shared_preferences.dart';
{{/has_local_data_source}}
import 'exceptions/exceptions.dart';
import 'models/{{name.snakeCase()}}_model.dart';
{{#has_remote_data_source}}
import 'data_sources/remote_data_source.dart';
{{/has_remote_data_source}}
{{#has_local_data_source}}
import 'data_sources/local_data_source.dart';
{{/has_local_data_source}}

/// {@template {{name.snakeCase()}}_repository}
/// Repository that manages {{name.sentenceCase()}} data from multiple sources.
/// Implements the repository pattern with data source abstraction.
/// {@endtemplate}
abstract class {{model_name.pascalCase()}}Repository {
  /// {@macro {{name.snakeCase()}}_repository}
  const {{model_name.pascalCase()}}Repository();

  /// Gets a {{name.sentenceCase()}} by ID
  Future<{{model_name.pascalCase()}}Model> get{{model_name.pascalCase()}}(String id);

  /// Gets all {{name.sentenceCase()}}s
  Future<List<{{model_name.pascalCase()}}Model>> getAll{{model_name.pascalCase()}}s();

  /// Creates a new {{name.sentenceCase}}
  Future<{{model_name.pascalCase()}}Model> create{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase}});

  /// Updates an existing {{name.sentenceCase}}
  Future<{{model_name.pascalCase()}}Model> update{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase}});

  /// Deletes a {{name.sentenceCase}}
  Future<void> delete{{model_name.pascalCase()}}(String id);

  /// Syncs local data with remote
  Future<void> sync{{model_name.pascalCase()}}s();

  /// Clears all cached data
  Future<void> clearCache();
}

/// {@template {{name.snakeCase()}}_repository_impl}
/// Implementation of {{model_name.pascalCase()}}Repository with caching and error handling.
/// {@endtemplate}
class {{model_name.pascalCase()}}RepositoryImpl extends {{model_name.pascalCase()}}Repository {
  /// {@macro {{name.snakeCase()}}_repository_impl}
  {{model_name.pascalCase()}}RepositoryImpl({
{{#has_remote_data_source}}
    required this.remoteDataSource,
{{/has_remote_data_source}}
{{#has_local_data_source}}
    required this.localDataSource,
{{/has_local_data_source}}
    this.enableCache = true,
    this.cachePolicy = CachePolicy.networkFirst,
  });

{{#has_remote_data_source}}
  /// Remote data source
  final {{model_name.pascalCase()}}RemoteDataSource remoteDataSource;
{{/has_remote_data_source}}

{{#has_local_data_source}}
  /// Local data source
  final {{model_name.pascalCase()}}LocalDataSource localDataSource;
{{/has_local_data_source}}

  /// Whether caching is enabled
  final bool enableCache;

  /// Cache policy to use
  final CachePolicy cachePolicy;

  @override
  Future<{{model_name.pascalCase()}}Model> get{{model_name.pascalCase()}}(String id) async {
    try {
      switch (cachePolicy) {
        case CachePolicy.networkFirst:
          return await _get{{model_name.pascalCase()}}NetworkFirst(id);
        case CachePolicy.cacheFirst:
          return await _get{{model_name.pascalCase()}}CacheFirst(id);
        case CachePolicy.networkOnly:
          return await _get{{model_name.pascalCase()}}NetworkOnly(id);
        case CachePolicy.cacheOnly:
          return await _get{{model_name.pascalCase()}}CacheOnly(id);
      }
    } catch (e) {
      // Fallback to cache on network errors (if available)
{{#has_local_data_source}}
      if (enableCache) {
        try {
          final cached{{model_name.pascalCase()}} = await localDataSource.getCached{{model_name.pascalCase()}}(id);
          if (cached{{model_name.pascalCase()}} != null) {
            return cached{{model_name.pascalCase()}};
          }
        } catch (cacheError) {
          // Cache also failed, ignore and throw original error
        }
      }
{{/has_local_data_source}}

      // Re-throw the original error if cache fallback failed
      if (e is {{model_name.pascalCase()}}Exception) {
        rethrow;
      } else {
        throw {{model_name.pascalCase()}}NetworkException(
          'Failed to get {{name.sentenceCase()}}: ${e.toString()}',
          e,
        );
      }
    }
  }

  /// Network-first strategy: Try network first, fallback to cache
  Future<{{model_name.pascalCase()}}Model> _get{{model_name.pascalCase()}}NetworkFirst(String id) async {
{{#has_remote_data_source}}
    try {
      final {{name.camelCase}} = await remoteDataSource.get{{model_name.pascalCase()}}(id);
{{#has_local_data_source}}
      if (enableCache) {
        await localDataSource.cache{{model_name.pascalCase()}}({{name.camelCase}});
      }
{{/has_local_data_source}}
      return {{name.camelCase}};
    } catch (e) {
{{#has_local_data_source}}
      if (enableCache) {
        final cached{{model_name.pascalCase()}} = await localDataSource.getCached{{model_name.pascalCase()}}(id);
        if (cached{{model_name.pascalCase()}} != null) {
          return cached{{model_name.pascalCase()}};
        }
      }
{{/has_local_data_source}}
      rethrow;
    }
{{/has_remote_data_source}}
{{^has_remote_data_source}}
{{#has_local_data_source}}
    final cached{{model_name.pascalCase()}} = await localDataSource.getCached{{model_name.pascalCase()}}(id);
    if (cached{{model_name.pascalCase()}} != null) {
      return cached{{model_name.pascalCase()}};
    }
    throw {{model_name.pascalCase()}}NotFoundException(id);
{{/has_local_data_source}}
{{^has_local_data_source}}
    throw {{model_name.pascalCase()}}NetworkException('No data sources available');
{{/has_local_data_source}}
{{/has_remote_data_source}}
  }

  /// Cache-first strategy: Try cache first, fallback to network
  Future<{{model_name.pascalCase()}}Model> _get{{model_name.pascalCase()}}CacheFirst(String id) async {
{{#has_local_data_source}}
    if (enableCache) {
      final cached{{model_name.pascalCase()}} = await localDataSource.getCached{{model_name.pascalCase()}}(id);
      if (cached{{model_name.pascalCase()}} != null) {
        return cached{{model_name.pascalCase()}};
      }
    }
{{/has_local_data_source}}

{{#has_remote_data_source}}
    final {{name.camelCase}} = await remoteDataSource.get{{model_name.pascalCase()}}(id);
{{#has_local_data_source}}
    if (enableCache) {
      await localDataSource.cache{{model_name.pascalCase()}}({{name.camelCase}});
    }
{{/has_local_data_source}}
    return {{name.camelCase}};
{{/has_remote_data_source}}
{{^has_remote_data_source}}
    throw {{model_name.pascalCase()}}NotFoundException(id);
{{/has_remote_data_source}}
  }

  /// Network-only strategy: Only use network, no caching
  Future<{{model_name.pascalCase()}}Model> _get{{model_name.pascalCase()}}NetworkOnly(String id) async {
{{#has_remote_data_source}}
    return await remoteDataSource.get{{model_name.pascalCase()}}(id);
{{/has_remote_data_source}}
{{^has_remote_data_source}}
    throw {{model_name.pascalCase()}}NetworkException('Network data source not available');
{{/has_remote_data_source}}
  }

  /// Cache-only strategy: Only use cache
  Future<{{model_name.pascalCase()}}Model> _get{{model_name.pascalCase()}}CacheOnly(String id) async {
{{#has_local_data_source}}
    if (enableCache) {
      final cached{{model_name.pascalCase()}} = await localDataSource.getCached{{model_name.pascalCase()}}(id);
      if (cached{{model_name.pascalCase()}} != null) {
        return cached{{model_name.pascalCase()}};
      }
    }
{{/has_local_data_source}}
    throw {{model_name.pascalCase()}}NotFoundException(id);
  }

  @override
  Future<List<{{model_name.pascalCase()}}Model>> getAll{{model_name.pascalCase()}}s() async {
    try {
{{#has_remote_data_source}}
      final {{name.camelCase}}s = await remoteDataSource.getAll{{model_name.pascalCase()}}s();
{{#has_local_data_source}}
      if (enableCache) {
        await localDataSource.cache{{model_name.pascalCase()}}s({{name.camelCase}}s);
      }
{{/has_local_data_source}}
      return {{name.camelCase}}s;
{{/has_remote_data_source}}
{{^has_remote_data_source}}
{{#has_local_data_source}}
      final cached{{model_name.pascalCase()}}s = await localDataSource.getCached{{model_name.pascalCase()}}s();
      if (cached{{model_name.pascalCase()}}s != null) {
        return cached{{model_name.pascalCase()}}s;
      }
      return <{{model_name.pascalCase()}}Model>[];
{{/has_local_data_source}}
{{^has_local_data_source}}
      return <{{model_name.pascalCase()}}Model>[];
{{/has_local_data_source}}
{{/has_remote_data_source}}
    } catch (e) {
{{#has_local_data_source}}
      if (enableCache) {
        try {
          final cached{{model_name.pascalCase()}}s = await localDataSource.getCached{{model_name.pascalCase()}}s();
          if (cached{{model_name.pascalCase()}}s != null) {
            return cached{{model_name.pascalCase()}}s;
          }
        } catch (cacheError) {
          // Cache also failed, ignore
        }
      }
{{/has_local_data_source}}

      if (e is {{model_name.pascalCase()}}Exception) {
        rethrow;
      } else {
        throw {{model_name.pascalCase()}}NetworkException(
          'Failed to get {{name.sentenceCase}}s: ${e.toString()}',
          e,
        );
      }
    }
  }

  @override
  Future<{{model_name.pascalCase()}}Model> create{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase}}) async {
    try {
      // Validate input
      if ({{name.camelCase}}.id.isEmpty) {
        throw {{model_name.pascalCase()}}ValidationException('{{model_name.pascalCase()}} ID cannot be empty');
      }

{{#has_remote_data_source}}
      final created{{model_name.pascalCase()}} = await remoteDataSource.create{{model_name.pascalCase()}}({{name.camelCase}});
{{#has_local_data_source}}
      if (enableCache) {
        await localDataSource.cache{{model_name.pascalCase()}}(created{{model_name.pascalCase()}});
      }
{{/has_local_data_source}}
      return created{{model_name.pascalCase()}};
{{/has_remote_data_source}}
{{^has_remote_data_source}}
{{#has_local_data_source}}
      await localDataSource.cache{{model_name.pascalCase()}}({{name.camelCase}});
      return {{name.camelCase}};
{{/has_local_data_source}}
{{^has_local_data_source}}
      throw {{model_name.pascalCase()}}NetworkException('No data sources available');
{{/has_local_data_source}}
{{/has_remote_data_source}}
    } catch (e) {
      if (e is {{model_name.pascalCase()}}Exception) {
        rethrow;
      } else {
        throw {{model_name.pascalCase()}}NetworkException(
          'Failed to create {{name.sentenceCase}}: ${e.toString()}',
          e,
        );
      }
    }
  }

  @override
  Future<{{model_name.pascalCase()}}Model> update{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase}}) async {
    try {
      // Validate input
      if ({{name.camelCase}}.id.isEmpty) {
        throw {{model_name.pascalCase()}}ValidationException('{{model_name.pascalCase()}} ID cannot be empty');
      }

{{#has_remote_data_source}}
      final updated{{model_name.pascalCase()}} = await remoteDataSource.update{{model_name.pascalCase()}}({{name.camelCase}});
{{#has_local_data_source}}
      if (enableCache) {
        await localDataSource.cache{{model_name.pascalCase()}}(updated{{model_name.pascalCase()}});
      }
{{/has_local_data_source}}
      return updated{{model_name.pascalCase()}};
{{/has_remote_data_source}}
{{^has_remote_data_source}}
{{#has_local_data_source}}
      await localDataSource.cache{{model_name.pascalCase()}}({{name.camelCase}});
      return {{name.camelCase}};
{{/has_local_data_source}}
{{^has_local_data_source}}
      throw {{model_name.pascalCase()}}NetworkException('No data sources available');
{{/has_local_data_source}}
{{/has_remote_data_source}}
    } catch (e) {
      if (e is {{model_name.pascalCase()}}Exception) {
        rethrow;
      } else {
        throw {{model_name.pascalCase()}}NetworkException(
          'Failed to update {{name.sentenceCase}}: ${e.toString()}',
          e,
        );
      }
    }
  }

  @override
  Future<void> delete{{model_name.pascalCase()}}(String id) async {
    try {
      if (id.isEmpty) {
        throw {{model_name.pascalCase()}}ValidationException('{{model_name.pascalCase()}} ID cannot be empty');
      }

{{#has_remote_data_source}}
      await remoteDataSource.delete{{model_name.pascalCase()}}(id);
{{/has_remote_data_source}}
{{#has_local_data_source}}
      if (enableCache) {
        await localDataSource.clearCache();
      }
{{/has_local_data_source}}
    } catch (e) {
      if (e is {{model_name.pascalCase()}}Exception) {
        rethrow;
      } else {
        throw {{model_name.pascalCase()}}NetworkException(
          'Failed to delete {{name.sentenceCase}}: ${e.toString()}',
          e,
        );
      }
    }
  }

  @override
  Future<void> sync{{model_name.pascalCase()}}s() async {
{{#has_remote_data_source}}
{{#has_local_data_source}}
    if (!enableCache) return;

    try {
      // Fetch from remote
      final remote{{model_name.pascalCase()}}s = await remoteDataSource.getAll{{model_name.pascalCase()}}s();

      // Update local cache
      await localDataSource.cache{{model_name.pascalCase()}}s(remote{{model_name.pascalCase()}}s);
    } catch (e) {
      // Sync failed, but don't throw - just log
      // TODO: Add proper logging
      print('Failed to sync {{name.sentenceCase}}s: $e');
    }
{{/has_local_data_source}}
{{^has_local_data_source}}
    // No local storage to sync with
{{/has_local_data_source}}
{{/has_remote_data_source}}
{{^has_remote_data_source}}
    // No remote data source to sync from
{{/has_remote_data_source}}
  }

  @override
  Future<void> clearCache() async {
{{#has_local_data_source}}
    if (enableCache) {
      await localDataSource.clearCache();
    }
{{/has_local_data_source}}
{{^has_local_data_source}}
    // No cache to clear
{{/has_local_data_source}}
  }
}

/// Cache policy for data retrieval
enum CachePolicy {
  /// Try network first, fallback to cache
  networkFirst,

  /// Try cache first, fallback to network
  cacheFirst,

  /// Only use network
  networkOnly,

  /// Only use cache
  cacheOnly,
}

/// Factory for creating repository instances
class {{model_name.pascalCase()}}RepositoryFactory {
  /// Creates a production repository with real data sources
  static Future<{{model_name.pascalCase()}}Repository> create({
{{#has_remote_data_source}}
    String? baseUrl,
    Duration? timeout,
{{/has_remote_data_source}}
{{#has_local_data_source}}
    Duration? cacheMaxAge,
{{/has_local_data_source}}
    CachePolicy? cachePolicy,
    bool? enableCache,
  }) async {
{{#has_remote_data_source}}
    final dio = Dio()
      ..options.connectTimeout = timeout ?? const Duration(seconds: 30)
      ..options.receiveTimeout = timeout ?? const Duration(seconds: 30);

    final connectivity = Connectivity();

    final remoteDataSource = {{model_name.pascalCase()}}RemoteDataSourceFactory.create(
      dio: dio,
      connectivity: connectivity,
      baseUrl: baseUrl,
    );
{{/has_remote_data_source}}

{{#has_local_data_source}}
    final sharedPreferences = await SharedPreferences.getInstance();

    final localDataSource = {{model_name.pascalCase()}}LocalDataSourceFactory.create(
      sharedPreferences: sharedPreferences,
      cacheMaxAge: cacheMaxAge,
    );
{{/has_local_data_source}}

    return {{model_name.pascalCase()}}RepositoryImpl(
{{#has_remote_data_source}}
      remoteDataSource: remoteDataSource,
{{/has_remote_data_source}}
{{#has_local_data_source}}
      localDataSource: localDataSource,
{{/has_local_data_source}}
      cachePolicy: cachePolicy ?? CachePolicy.networkFirst,
      enableCache: enableCache ?? true,
    );
  }

  /// Creates a mock repository for testing
  static {{model_name.pascalCase()}}Repository createMock({
    CachePolicy? cachePolicy,
    bool? enableCache,
  }) {
{{#has_remote_data_source}}
    final remoteDataSource = {{model_name.pascalCase()}}RemoteDataSourceFactory.createMock();
{{/has_remote_data_source}}

{{#has_local_data_source}}
    final localDataSource = {{model_name.pascalCase()}}LocalDataSourceFactory.createMock();
{{/has_local_data_source}}

    return {{model_name.pascalCase()}}RepositoryImpl(
{{#has_remote_data_source}}
      remoteDataSource: remoteDataSource,
{{/has_remote_data_source}}
{{#has_local_data_source}}
      localDataSource: localDataSource,
{{/has_local_data_source}}
      cachePolicy: cachePolicy ?? CachePolicy.networkFirst,
      enableCache: enableCache ?? true,
    );
  }
}