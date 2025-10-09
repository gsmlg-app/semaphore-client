import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../exceptions/exceptions.dart';
import '../models/{{name.snakeCase()}}_model.dart';

/// {@template {{name.snakeCase()}}_local_data_source}
/// Local data source for {{name.sentenceCase()}} operations.
/// Handles local storage and caching.
/// {@endtemplate}
abstract class {{model_name.pascalCase()}}LocalDataSource {
  /// {@macro {{name.snakeCase()}}_local_data_source}
  const {{model_name.pascalCase()}}LocalDataSource();

  /// Caches {{name.sentenceCase()}} locally
  Future<void> cache{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase}});

  /// Gets cached {{name.sentenceCase}}
  Future<{{model_name.pascalCase()}}Model?> getCached{{model_name.pascalCase()}}(String id);

  /// Caches list of {{name.sentenceCase()}}s
  Future<void> cache{{model_name.pascalCase()}}s(List<{{model_name.pascalCase()}}Model> {{name.camelCase}}s);

  /// Gets cached {{name.sentenceCase()}}s
  Future<List<{{model_name.pascalCase()}}Model>?> getCached{{model_name.pascalCase()}}s();

  /// Clears cached {{name.sentenceCase()}}
  Future<void> clearCache();

  /// Checks if cache is valid (not expired)
  bool isCacheValid({DateTime? cacheTime, Duration? maxAge});
}

/// {@template {{name.snakeCase()}}_local_data_source_impl}
/// Implementation of {{model_name.pascalCase()}}LocalDataSource using SharedPreferences and file storage.
/// {@endtemplate}
class {{model_name.pascalCase()}}LocalDataSourceImpl extends {{model_name.pascalCase()}}LocalDataSource {
  /// {@macro {{name.snakeCase()}}_local_data_source_impl}
  {{model_name.pascalCase()}}LocalDataSourceImpl({
    required this.sharedPreferences,
    this.cacheMaxAge = const Duration(minutes: 15),
  });

  /// SharedPreferences instance
  final SharedPreferences sharedPreferences;

  /// Maximum age for cached data
  final Duration cacheMaxAge;

  /// Cache key prefix
  static const String _cacheKeyPrefix = '{{name.snakeCase()}}_cache_';

  /// Cache timestamp key
  static const String _cacheTimestampKey = '${_cacheKeyPrefix}timestamp';

  @override
  Future<void> cache{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase}}) async {
    try {
      final key = '${_cacheKeyPrefix}{{name.camelCase}}_${{name.camelCase}}.id';
      final jsonData = jsonEncode({{name.camelCase}}.toJson());

      await sharedPreferences.setString(key, jsonData);
      await sharedPreferences.setString(_cacheTimestampKey, DateTime.now().toIso8601String());
    } catch (e) {
      throw {{model_name.pascalCase()}}StorageException(
        'Failed to cache {{name.sentenceCase()}}: ${e.toString()}',
        e,
      );
    }
  }

  @override
  Future<{{model_name.pascalCase()}}Model?> getCached{{model_name.pascalCase()}}(String id) async {
    try {
      if (!isCacheValid()) {
        return null;
      }

      final key = '${_cacheKeyPrefix}{{name.camelCase}}_$id';
      final jsonData = sharedPreferences.getString(key);

      if (jsonData == null) {
        return null;
      }

      final jsonMap = jsonDecode(jsonData) as Map<String, dynamic>;
      return {{model_name.pascalCase()}}Model.fromJson(jsonMap);
    } catch (e) {
      throw {{model_name.pascalCase()}}StorageException(
        'Failed to retrieve cached {{name.sentenceCase()}}: ${e.toString()}',
        e,
      );
    }
  }

  @override
  Future<void> cache{{model_name.pascalCase()}}s(List<{{model_name.pascalCase()}}Model> {{name.camelCase}}s) async {
    try {
      // Clear existing cache first
      await clearCache();

      // Cache each {{name.sentenceCase}} individually
      for (final {{name.camelCase}} in {{name.camelCase}}s) {
        await cache{{model_name.pascalCase()}}({{name.camelCase}});
      }

      // Cache the list metadata
      final listKey = '${_cacheKeyPrefix}list';
      final listData = jsonEncode({{name.camelCase}}s.map((u) => u.toJson()).toList());
      await sharedPreferences.setString(listKey, listData);
    } catch (e) {
      throw {{model_name.pascalCase()}}StorageException(
        'Failed to cache {{name.sentenceCase()}}s: ${e.toString()}',
        e,
      );
    }
  }

  @override
  Future<List<{{model_name.pascalCase()}}Model>?> getCached{{model_name.pascalCase()}}s() async {
    try {
      if (!isCacheValid()) {
        return null;
      }

      final listKey = '${_cacheKeyPrefix}list';
      final listData = sharedPreferences.getString(listKey);

      if (listData == null) {
        return null;
      }

      final jsonList = jsonDecode(listData) as List<dynamic>;
      return jsonList
          .map((json) => {{model_name.pascalCase()}}Model.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw {{model_name.pascalCase()}}StorageException(
        'Failed to retrieve cached {{name.sentenceCase()}}s: ${e.toString()}',
        e,
      );
    }
  }

  @override
  Future<void> clearCache() async {
    try {
      final keys = sharedPreferences.getKeys()
          .where((key) => key.startsWith(_cacheKeyPrefix))
          .toList();

      for (final key in keys) {
        await sharedPreferences.remove(key);
      }
    } catch (e) {
      throw {{model_name.pascalCase()}}StorageException(
        'Failed to clear cache: ${e.toString()}',
        e,
      );
    }
  }

  @override
  bool isCacheValid({DateTime? cacheTime, Duration? maxAge}) {
    try {
      final timestampStr = sharedPreferences.getString(_cacheTimestampKey);
      if (timestampStr == null) {
        return false;
      }

      final cacheTimestamp = DateTime.parse(timestampStr);
      final maxCacheAge = maxAge ?? cacheMaxAge;
      final now = DateTime.now();

      return now.difference(cacheTimestamp) <= maxCacheAge;
    } catch (e) {
      return false;
    }
  }
}

/// Mock implementation for testing
class Mock{{model_name.pascalCase()}}LocalDataSource extends {{model_name.pascalCase()}}LocalDataSource {
  final Map<String, {{model_name.pascalCase()}}Model> _cache = {};
  final Map<String, List<{{model_name.pascalCase()}}Model>> _listCache = {};
  DateTime? _cacheTimestamp;

  @override
  Future<void> cache{{model_name.pascalCase()}}({{model_name.pascalCase()}}Model {{name.camelCase}}) async {
    _cache[{{name.camelCase}}.id] = {{name.camelCase}};
    _cacheTimestamp = DateTime.now();
  }

  @override
  Future<{{model_name.pascalCase()}}Model?> getCached{{model_name.pascalCase()}}(String id) async {
    if (!isCacheValid()) {
      return null;
    }
    return _cache[id];
  }

  @override
  Future<void> cache{{model_name.pascalCase()}}s(List<{{model_name.pascalCase()}}Model> {{name.camelCase}}s) async {
    _listCache['list'] = List.from({{name.camelCase}}s);
    for (final {{name.camelCase}} in {{name.camelCase}}s) {
      await cache{{model_name.pascalCase()}}({{name.camelCase}});
    }
    _cacheTimestamp = DateTime.now();
  }

  @override
  Future<List<{{model_name.pascalCase()}}Model>?> getCached{{model_name.pascalCase()}}s() async {
    if (!isCacheValid()) {
      return null;
    }
    return _listCache['list'];
  }

  @override
  Future<void> clearCache() async {
    _cache.clear();
    _listCache.clear();
    _cacheTimestamp = null;
  }

  @override
  bool isCacheValid({DateTime? cacheTime, Duration? maxAge}) {
    if (_cacheTimestamp == null) return false;

    final maxCacheAge = maxAge ?? const Duration(minutes: 15);
    final now = DateTime.now();

    return now.difference(_cacheTimestamp!) <= maxCacheAge;
  }

  // Helper methods for tests
  void setCacheTimestamp(DateTime timestamp) {
    _cacheTimestamp = timestamp;
  }

  void addMockData({{model_name.pascalCase()}}Model {{name.camelCase}}) {
    _cache[{{name.camelCase}}.id] = {{name.camelCase}};
  }

  void clearMockData() {
    _cache.clear();
    _listCache.clear();
    _cacheTimestamp = null;
  }
}