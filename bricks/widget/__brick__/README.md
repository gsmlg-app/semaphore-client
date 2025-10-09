# {{name.pascalCase()}} Widget

A reusable {{name.sentenceCase()}} widget that provides platform-specific implementations for Flutter applications.

## Features

{{#has_platform_adaptive}}- Platform-specific styling (Material for Android/Fuchsia/Linux/Windows, Cupertino for iOS/macOS)
- Adaptive behavior based on the current platform{{/has_platform_adaptive}}
- Comprehensive test coverage
- Well-documented API

## Usage

```dart
import 'package:{{name.snakeCase()}}_widget/{{name.snakeCase()}}_widget.dart';

// Use the widget in your app
{{name.pascalCase()}}Widget(
  // Add your parameters here
)
```

## Testing

Run tests with:

```bash
flutter test
```

## Platform Support

| Platform | Supported |
|----------|-----------|
| Android  | ✅        |
| iOS      | ✅        |
| Linux    | ✅        |
| macOS    | ✅        |
| Web      | ✅        |
| Windows  | ✅        |