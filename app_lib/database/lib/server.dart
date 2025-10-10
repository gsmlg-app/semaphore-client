import 'package:app_api/app_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:objectbox/objectbox.dart';
import 'package:app_utils/app_utils.dart';

@Entity()
class SemaphoreServer {
  @Id()
  int id = 0;

  String? name;

  String? apiUrl;

  String? username;

  @Transient()
  String? password;

  String? token;

  @Property(type: PropertyType.date) // Store as int in milliseconds
  DateTime? createdAt = DateTime.now();

  @Backlink('server')
  final projects = ToMany<SemaphoreProject>();

  @Transient()
  SemaphoreApi get api {
    final dio = Dio(BaseOptions(
        baseUrl: apiUrl!, headers: {'Authorization': 'Bearer $token'}));
    if (!kReleaseMode) {
      dio.interceptors.add(DioInterceptToCurl(printOnSuccess: true));
    }

    return SemaphoreApi(dio: dio);
  }

  @override
  String toString() {
    return 'SempahoreServer{name: $name, apiUrl: $apiUrl, username: $username, createdAt: $createdAt, projectCount: ${projects.length}';
  }
}

@Entity()
class SemaphoreProject {
  final server = ToOne<SemaphoreServer>();

  @Id()
  int id = 0;

  int? projectId;

  String? name;

  bool? alert;

  String? alertChat;

  int? maxParallelTasks;

  @Property(type: PropertyType.date) // Store as int in milliseconds
  DateTime? createdAt;

  @override
  String toString() {
    return 'SempahoreProject{name: $name}';
  }
}
