import 'package:semaphore_api/semaphore_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:app_utils/app_utils.dart';
import 'src/database.dart';

// Extension methods for Drift-generated classes to add API functionality
extension SemaphoreServerExtensions on SemaphoreServer {
  SemaphoreApi get api {
    final dio = Dio(BaseOptions(
        baseUrl: apiUrl!, headers: {'Authorization': 'Bearer $token'}));
    if (!kReleaseMode) {
      dio.interceptors.add(DioInterceptToCurl(printOnSuccess: true));
    }

    return SemaphoreApi(dio: dio);
  }

  String get displayString {
    return 'SemaphoreServer{name: $name, apiUrl: $apiUrl, username: $username, createdAt: $createdAt}';
  }

  // Getter to provide projects - needs to be loaded from database
  Future<List<SemaphoreProject>> getProjects(AppDatabase database) async {
    return await (database.select(database.semaphoreProjects)
          ..where((t) => t.serverId.equals(id)))
        .get();
  }
}

extension SemaphoreProjectExtensions on SemaphoreProject {
  String get displayString {
    return 'SemaphoreProject{name: $name}';
  }
}
