# Testing Guide

This document explains how to run tests across the entire Flutter monorepo using Melos.

## Available Test Commands

### Basic Testing Commands

- `melos run test` - Run Flutter tests for all packages (ignores packages without tests)
- `melos run test:selective` - Run Flutter tests only for packages that have test directories
- `melos run test:coverage` - Run Flutter tests with coverage for all packages
- `melos run test:watch` - Run Flutter tests in watch mode for all packages
- `melos run test:names` - List all available tests in all packages

### Comprehensive Testing

- `melos run test:all` - Run all tests including Flutter tests and brick tests
- `melos run test:report` - Generate a comprehensive test report for all packages
- `melos run test:bricks` - Run Mason brick tests separately from Flutter tests

## Packages with Tests

The following packages in the workspace have test directories:

- `app_theme` - Theme management tests
- `app_provider` - Provider/state management tests  
- `app_database` - Database layer tests
- `app_locale` - Internationalization tests
- `theme_bloc` - BLoC theme management tests
- `settings_ui` - Settings UI component tests
- `form_bloc` - Form BLoC tests
- `flutter_adaptive_scaffold` - Adaptive scaffold tests
- `app_web_view` - WebView component tests
- `app_adaptive_widgets` - Adaptive widget tests
- `app_feedback` - Feedback component tests
- `app_artwork` - Artwork asset tests
- `semaphore_client` - Main app tests (including screen tests)

## Usage Examples

### Run all tests across the workspace
```bash
melos run test:selective
```

### Run tests with coverage
```bash
melos run test:coverage
```

### Run tests in watch mode for development
```bash
melos run test:watch
```

### Run all tests including brick tests
```bash
melos run test:all
```

## Test Results

Tests are executed in dependency order, ensuring that packages are tested after their dependencies. The output shows results for each package individually, making it easy to identify which packages have failing tests.

## Screen Tests

The main application (`semaphore_client`) includes comprehensive screen tests in the `test/screens/` directory covering:
- SplashScreen tests (UI rendering, dimensions, orientation, theming)
- ErrorScreen tests (error display, localization, navigation)
- HomeScreen tests (component rendering, button interactions, exception handling)
- SettingsScreen tests (tile display, icons, navigation)
- AppSettingsScreen tests (SharedPreferences integration, dialogs, user interactions)

All screen tests are passing and provide good coverage of the main user flows.

**Note**: The original `test/widget_test.dart` file has been removed as its functionality is now comprehensively covered by the dedicated screen tests in the `test/screens/` directory.