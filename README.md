# Semaphore Client

A comprehensive Flutter application template with monorepo architecture, providing a robust foundation for building scalable Flutter applications with clean architecture principles.

## Features

- 🏗️ **Monorepo Architecture** - Managed by Melos for modular development
- 🎨 **Theme Management** - Multiple color schemes (fire, green, violet, wheat) with dynamic switching
- 🌍 **Internationalization** - Full i18n support with ARB files
- 🔄 **State Management** - BLoC pattern implementation
- 📱 **Responsive Design** - Adaptive widgets for multiple platforms
- 🔧 **Code Generation** - Mason templates for scaffolding
- 🧪 **Testing** - Comprehensive test setup
- 📦 **Dependency Injection** - Clean architecture with separation of concerns

## Architecture Overview

This project follows clean architecture principles with a monorepo structure managed by Melos, providing separation of concerns across multiple specialized packages.

### Monorepo Organization

- **Main App**: `lib/` - Entry point and main application code
- **API Layer**: `app_api/` - Generated API client code (OpenAPI/Swagger based)
- **State Management**: `app_bloc/` - BLoC pattern implementations for business logic
- **Shared Libraries**: `app_lib/` - Core utilities, themes, localization
- **UI Components**: `app_widget/` - Reusable widgets and UI elements
- **Code Generation**: `bricks/` - Mason templates for scaffolding
- **Third-party**: `third_party/` - Modified/custom third-party packages

### Key Packages

- **app_theme**: Theme management with multiple color schemes
- **app_locale**: Internationalization support with ARB files
- **app_provider**: Dependency injection and app-level providers
- **theme_bloc**: State management for theme switching
- **app_adaptive_widgets**: Responsive/adaptive UI components
- **app_artwork**: Asset management (icons, lottie animations)
- **app_feedback**: User feedback mechanisms (snackbars, dialogs, toasts)

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- Git

### Installation

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/semaphore-client.git
    cd semaphore-client
    ```

2.  **Install global dependencies:**

    ```bash
    dart pub global activate melos
    dart pub global activate mason_cli
    ```

3.  **Bootstrap the project:**

    This will install all the dependencies for the root project and all the packages in the workspace.

    ```bash
    melos bootstrap
    ```

4.  **Initialize Mason:**

    ```bash
    mason get
    ```

## Development Workflow

### Setup & Code Generation

```bash
# Install global dependencies
dart pub global activate melos
dart pub global activate mason_cli

# Bootstrap the project
melos bootstrap

# Initialize mason
mason get
```

### Development Commands

```bash
# Run all static analysis
melos run lint:all

# Format all code
melos run format

# Run tests across all packages
flutter test
melos exec flutter test

# Generate code (build_runner, l10n)
melos run prepare
melos run build-all
```

### Individual Package Commands

```bash
# Run tests for specific package
cd app_lib/theme && flutter test

# Analyze specific package
cd app_widget/adaptive && flutter analyze

# Build specific package
cd app_lib/theme && dart run build_runner build --delete-conflicting-outputs
```

## Key Files & Entry Points

- **Main Entry**: `lib/main.dart` - App initialization with providers
- **App Shell**: `lib/app.dart` - Root widget with theme management
- **Routing**: `lib/router.dart` - GoRouter configuration with declarative routing
- **Screens**: `lib/screens/` - Feature screens organized by domain

## Configuration Files

- **Melos**: `pubspec.yaml` (workspace configuration)
- **Mason**: `mason.yaml` (code generation templates)
- **Analysis**: `analysis_options.yaml` (linting rules)
- **Localization**: `app_lib/locale/l10n.yaml` (i18n configuration)

## Available Melos Scripts

This project uses Melos to manage the monorepo. Here are some of the available scripts:

-   `melos run lint:all`: Run all static analysis checks
-   `melos run analyze`: Run `flutter analyze` for all packages
-   `melos run fix`: Run `dart fix` for all packages
-   `melos run format`: Run `dart format` for all packages
-   `melos run upgrade`: Upgrade dependencies in all packages
-   `melos run outdated`: Check for outdated dependencies in all packages
-   `melos run validate-dependencies`: Validate dependencies usage
-   `melos run prepare`: Generate code (build_runner, l10n)
-   `melos run test:bricks`: Run Mason brick tests (see [BRICK_TESTING.md](BRICK_TESTING.md))
-   `melos run build-all`: Build all packages

## Code Generation with Mason

This project uses Mason for code generation to maintain consistency and speed up development. For a complete guide to all available bricks and their usage, see [BRICKS.md](./BRICKS.md).

### Testing Mason Bricks

For comprehensive documentation on testing Mason bricks, including test structure, running tests, and writing new tests, see [BRICK_TESTING.md](./BRICK_TESTING.md).

### Initialize Mason

```bash
dart pub global activate mason_cli
mason get
```

### Generate API Client

Create API client code from OpenAPI specification:

```bash
mason make api_client -o app_api/app_api --package_name=app_api
# Then add OpenAPI spec to `app_api/app_api/openapi.yaml`
```

### Generate BLoC

Create a simple BLoC package:

```bash
mason make simple_bloc -o app_bloc/feature_name --name=feature_name
```

### Generate Form BLoC

Create a complete form BLoC with validation and submission logic:

```bash
mason make form_bloc --name Login --field_names "email,password"
```

## 📚 Additional Documentation

- **[🧱 Mason Bricks Guide](./BRICKS.md)** - Complete guide to all available Mason bricks for code generation
- **[📝 Form BLoC Guide](./FORM_BLOC.md)** - Comprehensive documentation for form validation and submission
- **[📋 CLAUDE.md](./CLAUDE.md)** - Development guidance and project architecture for AI assistants

### Running the App

```bash
# Development
flutter run

# Specific platform
flutter run -d chrome
flutter run -d android
flutter run -d ios
```

### Running Tests

```bash
# Run all tests
flutter test

# Run tests for all packages
melos exec flutter test

# Run tests for specific package
cd app_lib/theme && flutter test
```

## Testing Structure

Tests are co-located with their respective packages:
- **Unit tests**: `test/` directory in each package
- **Widget tests**: `test/` directory in main app
- **Integration tests**: Use `flutter test` at root level

## Package Dependencies

The workspace uses path-based dependencies for internal packages (marked as `any` in pubspec.yaml). All packages are managed through Melos workspace configuration, ensuring consistent versioning and dependency resolution across the monorepo.

## Contributing

Contributions are welcome! Please feel free to submit a pull request. For major changes, please open an issue first to discuss what you would like to change.

### Development Guidelines

1. Follow the existing code style and architecture patterns
2. Write tests for new features
3. Update documentation as needed
4. Run `melos run lint:all` before submitting PRs
5. Ensure all tests pass with `melos exec flutter test`

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any issues or have questions, please file an issue on the GitHub repository.