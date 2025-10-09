/// Configuration for mason brick testing
///
/// This file contains test configurations and expected values
/// for validating generated brick output.

class BrickTestConfig {
  // API Client Brick Configuration
  static const Map<String, dynamic> apiClientVars = {
    'package_name': 'test_api',
  };

  static const List<String> apiClientExpectedFiles = [
    'pubspec.yaml',
    'lib/test_api.dart',
    'lib/openapi.yaml',
    'swagger_parser.yaml',
    'test/test_api_test.dart',
  ];

  static const List<String> apiClientExpectedDependencies = [
    'dio: ^5.7.0',
    'json_annotation: ^4.9.0',
    'freezed_annotation: ^3.0.0',
    'retrofit: ^4.4.2',
  ];

  static const List<String> apiClientExpectedDevDependencies = [
    'build_runner: any',
    'json_serializable: ^6.9.3',
    'swagger_parser: ^1.26.1',
    'retrofit_generator: ^9.1.9',
  ];

  // Simple BLoC Brick Configuration
  static const Map<String, dynamic> simpleBlocVars = {'name': 'counter'};

  static const List<String> simpleBlocExpectedFiles = [
    'pubspec.yaml',
    'lib/counter_bloc.dart',
    'lib/src/bloc.dart',
    'lib/src/event.dart',
    'lib/src/state.dart',
    'test/counter_bloc_test.dart',
    '.gitignore',
    '.metadata',
    'README.md',
  ];

  static const List<String> simpleBlocExpectedDependencies = [
    'bloc: ^9.0.0',
    'equatable: ^2.0.7',
  ];

  static const List<String> simpleBlocExpectedDevDependencies = [
    'bloc_test: ^10.0.0',
    'mocktail: ^1.0.3',
    'flutter_lints: ^6.0.0',
  ];

  // Repository Brick Configuration
  static const Map<String, dynamic> repositoryVars = {
    'name': 'user',
    'has_remote_data_source': true,
    'has_local_data_source': true,
    'model_name': 'User',
  };

  static const List<String> repositoryExpectedFiles = [
    'pubspec.yaml',
    'lib/user_repository.dart',
    'lib/src/repository.dart',
    'lib/src/data_sources/remote_data_source.dart',
    'lib/src/data_sources/local_data_source.dart',
    'lib/src/models/user_model.dart',
    'lib/src/exceptions/exceptions.dart',
  ];

  static const List<String> repositoryExpectedDependencies = [
    'equatable: ^2.0.7',
    'dio: ^5.7.0',
    'connectivity_plus: ^6.0.5',
    'shared_preferences: ^2.3.5',
    'path_provider: ^2.1.5',
  ];

  static const List<String> repositoryExpectedDevDependencies = [
    'mocktail: ^1.0.3',
    'flutter_lints: ^6.0.0',
  ];

  // Test Scenarios
  static const List<Map<String, dynamic>> testScenarios = [
    {
      'name': 'API Client - Basic',
      'brick': 'api_client',
      'vars': apiClientVars,
      'expected_files': apiClientExpectedFiles,
    },
    {
      'name': 'Simple BLoC - Basic',
      'brick': 'simple_bloc',
      'vars': simpleBlocVars,
      'expected_files': simpleBlocExpectedFiles,
    },
    {
      'name': 'Repository - Full',
      'brick': 'repository',
      'vars': repositoryVars,
      'expected_files': repositoryExpectedFiles,
    },
  ];

  // Validation Patterns
  static const Map<String, List<String>> validationPatterns = {
    'api_client': [
      'library test_api;',
      'openapi: 3.0.0',
      'schema_path: ./lib/openapi.yaml',
      'name: TestApi',
    ],
    'simple_bloc': [
      'class CounterBloc extends Bloc<CounterEvent, CounterState>',
      'sealed class CounterEvent',
      'enum CounterStatus',
      'class CounterState extends Equatable',
    ],
    'repository': [
      'abstract class UserRepository',
      'class UserRepositoryImpl extends UserRepository',
      'enum CachePolicy',
      'abstract class UserException',
    ],
  };
}

/// Test data for edge cases and validation
class BrickTestData {
  static const List<Map<String, dynamic>> invalidInputs = [
    {
      'brick': 'api_client',
      'vars': {'package_name': 'Invalid-Name'},
      'expected_error': 'Invalid package name',
    },
    {
      'brick': 'simple_bloc',
      'vars': {'name': ''},
      'expected_error': 'Name parameter is required',
    },
    {
      'brick': 'repository',
      'vars': {'name': ''},
      'expected_error': 'Name parameter is required',
    },
  ];

  static const List<Map<String, dynamic>> validVariations = [
    {
      'name': 'API Client - snake_case name',
      'brick': 'api_client',
      'vars': {'package_name': 'user_service_api'},
    },
    {
      'name': 'Simple BLoC - multi word name',
      'brick': 'simple_bloc',
      'vars': {'name': 'user_authentication'},
    },
    {
      'name': 'Repository - remote only',
      'brick': 'repository',
      'vars': {
        'name': 'product',
        'has_remote_data_source': true,
        'has_local_data_source': false,
        'model_name': 'Product',
      },
    },
    {
      'name': 'Repository - local only',
      'brick': 'repository',
      'vars': {
        'name': 'settings',
        'has_remote_data_source': false,
        'has_local_data_source': true,
        'model_name': 'Settings',
      },
    },
  ];
}
