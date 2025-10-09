# {{name.pascalCase()}} BLoC Brick

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A Mason brick for generating a complete BLoC (Business Logic Component) package following Flutter best practices.

## Features ✨

- 🏗️ **Complete BLoC Structure**: Generates bloc, event, and state files
- 🧪 **Comprehensive Testing**: Includes bloc_test with meaningful test cases
- 📝 **Full Documentation**: Well-documented code with dartdoc comments
- 🔄 **Status Management**: Built-in loading, completed, and error states
- 🎯 **Best Practices**: Follows BLoC pattern conventions and Flutter guidelines
- 🛡️ **Error Handling**: Built-in error handling and state management

## Generated Structure 📁

```
{{name.snakeCase()}}_bloc/
├── lib/
│   ├── {{name.snakeCase()}}_bloc.dart
│   └── src/
│       ├── bloc.dart          # Main BLoC implementation
│       ├── event.dart         # Event definitions
│       └── state.dart         # State definitions
├── test/
│   └── {{name.snakeCase()}}_bloc_test.dart  # Comprehensive tests
└── pubspec.yaml
```

## Usage 🚀

### Basic Usage

```bash
mason make simple_bloc --name your_feature
```

### Example

```bash
mason make simple_bloc --name user_profile
```

This will generate a `user_profile_bloc` package with:
- `UserProfileBloc` - Main BLoC class
- `UserProfileEvent` - Event classes
- `UserProfileState` - State classes with status management
- Comprehensive tests using `bloc_test`

## Generated Code Example 💻

### State with Status Management
```dart
enum UserProfileStatus { initial, loading, completed, error }

class UserProfileState extends Equatable {
  const UserProfileState({
    this.status = UserProfileStatus.initial,
    this.error,
  });

  final UserProfileStatus status;
  final String? error;

  // ... copyWith and props
}
```

### BLoC with Error Handling
```dart
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc() : super(UserProfileState.initial()) {
    on<UserProfileEventInit>(_onUserProfileEventInit);
  }

  Future<void> _onUserProfileEventInit(
    UserProfileEventInit event,
    Emitter<UserProfileState> emitter,
  ) async {
    try {
      emitter(state.copyWith(status: UserProfileStatus.loading));

      // Your business logic here

      emitter(state.copyWith(status: UserProfileStatus.completed));
    } catch (error, stackTrace) {
      emitter(state.copyWith(
        status: UserProfileStatus.error,
        error: error.toString(),
      ));
      addError(error, stackTrace);
    }
  }
}
```

## Testing 🧪

The generated test file includes:
- Initial state verification
- Loading and completion state testing
- Error state testing
- Proper bloc lifecycle management

Run tests with:
```bash
cd {{name.snakeCase()}}_bloc && flutter test
```

## Adding More Events 📬

To add more events to your BLoC:

1. **Add event in `event.dart`:**
```dart
final class FetchData extends UserProfileEvent {
  const FetchData();
}
```

2. **Handle event in `bloc.dart`:**
```dart
UserProfileBloc() : super(UserProfileState.initial()) {
  on<UserProfileEventInit>(_onUserProfileEventInit);
  on<FetchData>(_onFetchData); // Add this line
}
```

3. **Add handler method:**
```dart
Future<void> _onFetchData(
  FetchData event,
  Emitter<UserProfileState> emitter,
) async {
  // Implementation
}
```

4. **Add tests in test file:**
```dart
blocTest<UserProfileBloc, UserProfileState>(
  'emits correct states when FetchData is added',
  build: () => userProfileBloc,
  act: (bloc) => bloc.add(const FetchData()),
  expect: () => [/* expected states */],
);
```

## Best Practices Included ✅

- **Sealed Classes**: Uses Dart 3.0 sealed classes for events
- **Equatable**: Proper equality comparison for states
- **Error Handling**: Comprehensive error handling with stack traces
- **Async/Await**: Proper async pattern usage
- **State Management**: Status-based state management
- **Testing**: Comprehensive test coverage with bloc_test

## Variables 📋

| Variable | Description | Default | Required |
|----------|-------------|---------|----------|
| `name` | The name of your BLoC (e.g., user_profile) | todo | Yes |

## Output 📤

The brick generates a complete BLoC package ready for:
- ✅ Business logic implementation
- ✅ State management
- ✅ Event handling
- ✅ Testing
- ✅ Documentation

## Troubleshooting 🔧

### Common Issues

1. **Tests not passing**: Make sure you have `flutter_test` and `bloc_test` dependencies
2. **Import errors**: Check that the package name matches your generated name
3. **Build errors**: Run `flutter pub get` to install dependencies

### Next Steps

After generation:
1. Run `flutter pub get` to install dependencies
2. Run tests to ensure everything works: `flutter test`
3. Implement your business logic in the generated TODO comments
4. Add more events and states as needed
5. Write additional tests for your custom logic

---

_This brick was generated with [Mason](https://github.com/felangel/mason) 🧱_