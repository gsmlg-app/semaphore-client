//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import '../deserialize.dart';
import 'package:dio/dio.dart';

import '../model/integration_extract_value.dart';
import '../model/integration_extract_value_request.dart';
import '../model/integration_matcher.dart';
import '../model/integration_matcher_request.dart';

class IntegrationApi {
  final Dio _dio;

  const IntegrationApi(this._dio);

  /// Get Integration Matcher linked to integration extractor
  ///
  ///
  /// Parameters:
  /// * [projectId] - Project ID
  /// * [integrationId] - integration ID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<IntegrationMatcher>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<IntegrationMatcher>>>
  projectProjectIdIntegrationsIntegrationIdMatchersGet({
    required int projectId,
    required int integrationId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final path = r'/project/{project_id}/integrations/{integration_id}/matchers'
        .replaceAll(
          '{'
          r'project_id'
          '}',
          projectId.toString(),
        )
        .replaceAll(
          '{'
          r'integration_id'
          '}',
          integrationId.toString(),
        );
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'cookie',
            'keyName': 'Cookie',
            'where': 'header',
          },
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final response = await _dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<IntegrationMatcher>? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<List<IntegrationMatcher>, IntegrationMatcher>(
              rawData,
              'List<IntegrationMatcher>',
              growable: true,
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<IntegrationMatcher>>(
      data: responseData,
      headers: response.headers,
      isRedirect: response.isRedirect,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }

  /// Removes integration matcher
  ///
  ///
  /// Parameters:
  /// * [projectId] - Project ID
  /// * [integrationId] - integration ID
  /// * [matcherId] - matcher ID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>>
  projectProjectIdIntegrationsIntegrationIdMatchersMatcherIdDelete({
    required int projectId,
    required int integrationId,
    required int matcherId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final path =
        r'/project/{project_id}/integrations/{integration_id}/matchers/{matcher_id}'
            .replaceAll(
              '{'
              r'project_id'
              '}',
              projectId.toString(),
            )
            .replaceAll(
              '{'
              r'integration_id'
              '}',
              integrationId.toString(),
            )
            .replaceAll(
              '{'
              r'matcher_id'
              '}',
              matcherId.toString(),
            );
    final options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'cookie',
            'keyName': 'Cookie',
            'where': 'header',
          },
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final response = await _dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return response;
  }

  /// Updates Integration Matcher
  ///
  ///
  /// Parameters:
  /// * [projectId] - Project ID
  /// * [integrationId] - integration ID
  /// * [matcherId] - matcher ID
  /// * [integrationMatcher]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>>
  projectProjectIdIntegrationsIntegrationIdMatchersMatcherIdPut({
    required int projectId,
    required int integrationId,
    required int matcherId,
    required IntegrationMatcherRequest integrationMatcher,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final path =
        r'/project/{project_id}/integrations/{integration_id}/matchers/{matcher_id}'
            .replaceAll(
              '{'
              r'project_id'
              '}',
              projectId.toString(),
            )
            .replaceAll(
              '{'
              r'integration_id'
              '}',
              integrationId.toString(),
            )
            .replaceAll(
              '{'
              r'matcher_id'
              '}',
              matcherId.toString(),
            );
    final options = Options(
      method: r'PUT',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'cookie',
            'keyName': 'Cookie',
            'where': 'header',
          },
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = jsonEncode(integrationMatcher);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: options.compose(_dio.options, path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final response = await _dio.request<Object>(
      path,
      data: bodyData,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return response;
  }

  /// Removes integration extract value
  ///
  ///
  /// Parameters:
  /// * [projectId] - Project ID
  /// * [integrationId] - integration ID
  /// * [extractvalueId] - extractValue ID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>>
  projectProjectIdIntegrationsIntegrationIdValuesExtractvalueIdDelete({
    required int projectId,
    required int integrationId,
    required int extractvalueId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final path =
        r'/project/{project_id}/integrations/{integration_id}/values/{extractvalue_id}'
            .replaceAll(
              '{'
              r'project_id'
              '}',
              projectId.toString(),
            )
            .replaceAll(
              '{'
              r'integration_id'
              '}',
              integrationId.toString(),
            )
            .replaceAll(
              '{'
              r'extractvalue_id'
              '}',
              extractvalueId.toString(),
            );
    final options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'cookie',
            'keyName': 'Cookie',
            'where': 'header',
          },
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final response = await _dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return response;
  }

  /// Updates Integration ExtractValue
  ///
  ///
  /// Parameters:
  /// * [projectId] - Project ID
  /// * [integrationId] - integration ID
  /// * [extractvalueId] - extractValue ID
  /// * [integrationExtractValue]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>>
  projectProjectIdIntegrationsIntegrationIdValuesExtractvalueIdPut({
    required int projectId,
    required int integrationId,
    required int extractvalueId,
    required IntegrationExtractValueRequest integrationExtractValue,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final path =
        r'/project/{project_id}/integrations/{integration_id}/values/{extractvalue_id}'
            .replaceAll(
              '{'
              r'project_id'
              '}',
              projectId.toString(),
            )
            .replaceAll(
              '{'
              r'integration_id'
              '}',
              integrationId.toString(),
            )
            .replaceAll(
              '{'
              r'extractvalue_id'
              '}',
              extractvalueId.toString(),
            );
    final options = Options(
      method: r'PUT',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'cookie',
            'keyName': 'Cookie',
            'where': 'header',
          },
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic bodyData;

    try {
      bodyData = jsonEncode(integrationExtractValue);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: options.compose(_dio.options, path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final response = await _dio.request<Object>(
      path,
      data: bodyData,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return response;
  }

  /// Get Integration Extracted Values linked to integration extractor
  ///
  ///
  /// Parameters:
  /// * [projectId] - Project ID
  /// * [integrationId] - integration ID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<IntegrationExtractValue>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<IntegrationExtractValue>>>
  projectProjectIdIntegrationsIntegrationIdValuesGet({
    required int projectId,
    required int integrationId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final path = r'/project/{project_id}/integrations/{integration_id}/values'
        .replaceAll(
          '{'
          r'project_id'
          '}',
          projectId.toString(),
        )
        .replaceAll(
          '{'
          r'integration_id'
          '}',
          integrationId.toString(),
        );
    final options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'cookie',
            'keyName': 'Cookie',
            'where': 'header',
          },
          {
            'type': 'apiKey',
            'name': 'bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final response = await _dio.request<Object>(
      path,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<IntegrationExtractValue>? responseData;

    try {
      final rawData = response.data;
      responseData = rawData == null
          ? null
          : deserialize<List<IntegrationExtractValue>, IntegrationExtractValue>(
              rawData,
              'List<IntegrationExtractValue>',
              growable: true,
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<IntegrationExtractValue>>(
      data: responseData,
      headers: response.headers,
      isRedirect: response.isRedirect,
      requestOptions: response.requestOptions,
      redirects: response.redirects,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }
}
