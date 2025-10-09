# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter monorepo managed by Melos, providing a comprehensive template for building Flutter applications with modular architecture. The project follows clean architecture principles with separation of concerns across multiple packages.

## Architecture Structure

### Monorepo Organization
- **Main App**: `lib/` - Entry point and main application code
- **State Management**: `app_bloc/` - BLoC pattern implementations for business logic
- **Shared Libraries**: `app_lib/` - Core utilities, themes, localization, database, logging
- **UI Components**: `app_widget/` - Reusable widgets and UI elements
- **Code Generation**: `bricks/` - Mason templates for scaffolding
- **Third-party**: `third_party/` - Modified/custom third-party packages

### Key Packages
- **app_database**: Database management and data persistence
- **app_theme**: Theme management with multiple color schemes (fire, green, violet, wheat)
- **app_locale**: Internationalization support with ARB files, outputs to `lib/gen_l10n/`
- **app_provider**: Dependency injection and app-level providers using `MainProvider`
- **app_logging**: Structured logging with file output support
- **theme_bloc**: State management for theme switching
- **app_adaptive_widgets**: Responsive/adaptive UI components
- **app_artwork**: Asset management (icons, lottie animations)
- **app_feedback**: User feedback mechanisms (snackbars, dialogs, toasts)
- **app_web_view**: Web view integration components
- **settings_ui**: Custom settings UI components

## Development Commands

### Setup & Installation
```bash
# Install global dependencies
dart pub global activate melos
dart pub global activate mason_cli

# Bootstrap the project
melos bootstrap

# Initialize mason
mason get
```

### Development Workflow
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

# Check dependencies
melos run validate-dependencies
melos run outdated
```

### Individual Package Commands
```bash
# Run tests for specific package
cd app_lib/theme && flutter test

# Analyze specific package
cd app_widget/adaptive && flutter analyze

# Build specific package
cd app_lib/theme && dart run build_runner build --delete-conflicting-outputs

# Run single test
flutter test test/widget_test.dart
```

### Code Generation
```bash
# Generate API client
mason make api_client -o app_api/app_api --package_name=app_api
# Then add openapi spec to app_api/app_api/openapi.yaml

# Generate new BLoC
mason make simple_bloc -o app_bloc/feature_name --name=feature_name

# Generate new screen
mason make screen --name ScreenName --folder subfolder

# Generate new widget
mason make widget --name WidgetName --type stateless --folder components
```

### Running the App
```bash
# Development
flutter run

# Specific platform
flutter run -d chrome
flutter run -d android
flutter run -d ios

# Generate app icons
dart run flutter_launcher_icons:main
```

## Key Files & Entry Points

- **Main Entry**: `lib/main.dart` - App initialization with `MainProvider`, logging setup, database initialization
- **App Shell**: `lib/app.dart` - Root widget with `ThemeBloc` integration and `MaterialApp.router`
- **Routing**: `lib/router.dart` - GoRouter configuration with declarative routing and `NoTransitionPage`
- **Screens**: `lib/screens/` - Feature screens organized by domain (app/, home/, settings/)
- **Localization**: `lib/arb/` - ARB files for i18n, generated to `lib/gen_l10n/`

## Configuration Files

- **Melos**: `pubspec.yaml` (workspace configuration with scripts)
- **Mason**: `mason.yaml` (code generation templates: api_client, simple_bloc, repository, screen, widget)
- **Analysis**: `analysis_options.yaml` (linting rules, excludes generated files)
- **Localization**: `app_lib/locale/l10n.yaml` (i18n configuration)
- **Environment**: `.envrc`, `devenv.nix` (development environment setup)

## Testing Structure

Tests are co-located with their respective packages:
- Unit tests: `test/` directory in each package
- Widget tests: `test/` directory in main app
- Integration tests: Use `flutter test` at root level

## Package Dependencies

The workspace uses path-based dependencies for internal packages (marked as `any` in pubspec.yaml). All packages are managed through Melos workspace configuration.

## Key Architecture Patterns

### Provider Pattern
The app uses `MainProvider` at the root level to provide shared instances:
- `SharedPreferences` for local storage
- `AppDatabase` for data persistence
- Theme and locale management through BLoC

### Logging System
Structured logging with:
- File-based logging to app support directory
- Configurable log levels
- Centralized `AppLogger` instance

### Theme Management
Dynamic theme switching through:
- `ThemeBloc` for state management
- Multiple predefined color schemes
- Light/dark theme support

### Routing
Declarative routing with GoRouter:
- Route definitions with static paths and names
- `NoTransitionPage` for consistent navigation
- Error handling with dedicated error screen