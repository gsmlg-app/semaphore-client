//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:semaphore_api/src/serializers.dart';
import 'package:semaphore_api/src/auth/api_key_auth.dart';
import 'package:semaphore_api/src/auth/basic_auth.dart';
import 'package:semaphore_api/src/auth/bearer_auth.dart';
import 'package:semaphore_api/src/auth/oauth.dart';
import 'package:semaphore_api/src/api/authentication_api.dart';
import 'package:semaphore_api/src/api/default_api.dart';
import 'package:semaphore_api/src/api/integration_api.dart';
import 'package:semaphore_api/src/api/inventory_api.dart';
import 'package:semaphore_api/src/api/key_store_api.dart';
import 'package:semaphore_api/src/api/project_api.dart';
import 'package:semaphore_api/src/api/repository_api.dart';
import 'package:semaphore_api/src/api/schedule_api.dart';
import 'package:semaphore_api/src/api/task_api.dart';
import 'package:semaphore_api/src/api/template_api.dart';
import 'package:semaphore_api/src/api/user_api.dart';
import 'package:semaphore_api/src/api/variable_group_api.dart';

class SemaphoreApi {
  static const String basePath = r'/api';

  final Dio dio;
  final Serializers serializers;

  SemaphoreApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AuthenticationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthenticationApi getAuthenticationApi() {
    return AuthenticationApi(dio, serializers);
  }

  /// Get DefaultApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DefaultApi getDefaultApi() {
    return DefaultApi(dio, serializers);
  }

  /// Get IntegrationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IntegrationApi getIntegrationApi() {
    return IntegrationApi(dio, serializers);
  }

  /// Get InventoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InventoryApi getInventoryApi() {
    return InventoryApi(dio, serializers);
  }

  /// Get KeyStoreApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  KeyStoreApi getKeyStoreApi() {
    return KeyStoreApi(dio, serializers);
  }

  /// Get ProjectApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProjectApi getProjectApi() {
    return ProjectApi(dio, serializers);
  }

  /// Get RepositoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RepositoryApi getRepositoryApi() {
    return RepositoryApi(dio, serializers);
  }

  /// Get ScheduleApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ScheduleApi getScheduleApi() {
    return ScheduleApi(dio, serializers);
  }

  /// Get TaskApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TaskApi getTaskApi() {
    return TaskApi(dio, serializers);
  }

  /// Get TemplateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TemplateApi getTemplateApi() {
    return TemplateApi(dio, serializers);
  }

  /// Get UserApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserApi getUserApi() {
    return UserApi(dio, serializers);
  }

  /// Get VariableGroupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VariableGroupApi getVariableGroupApi() {
    return VariableGroupApi(dio, serializers);
  }
}
