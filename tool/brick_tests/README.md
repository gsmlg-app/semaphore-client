# Mason Brick Tests

This directory contains tests for Mason bricks in the Semaphore Client project.

## Status

⚠️ **Note**: These tests are currently incompatible with the current version of the `mason` package (v0.1.1). The Mason API has changed significantly, and these tests need to be updated to work with the new API.

## Issues

The tests were written for an older version of Mason and currently fail due to:

1. `Brick.fromBrickYaml()` method no longer exists in the current API
2. Various type compatibility issues with the new Mason API
3. `ProcessInfo` type issues in performance tests

## Running Tests

When the tests are updated to work with the current Mason API, you can run them using:

```bash
# From the project root
melos run test:bricks

# Or directly
cd tool/brick_tests
dart pub get
dart test
```

## Test Structure

- `all_bricks_test.dart` - Main test runner
- `api_client_test.dart` - API Client brick tests  
- `repository_test.dart` - Repository brick tests
- `simple_bloc_test.dart` - Simple BLoC brick tests
- `performance_test.dart` - Performance and memory tests
- `integration_test.dart` - Cross-brick integration tests
- `test_utils.dart` - Utility functions for testing
- `test_config.dart` - Test configurations and expected values
- `validate_bricks.dart` - Brick structure validation

## Future Updates

To make these tests work again, you'll need to:

1. Update the Mason API calls to use the current version's API
2. Fix type compatibility issues
3. Update the `Brick.fromBrickYaml()` calls to use the new brick loading mechanism
4. Fix the `ProcessInfo` extension issues in performance tests

For now, these tests are kept for reference but are not functional.