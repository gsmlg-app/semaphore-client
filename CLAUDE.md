# Semaphore Client - Development Guide

A comprehensive Flutter application with monorepo architecture implementing clean architecture principles using BLoC pattern for state management.

## Quick Start Commands

### Essential Development Commands
```bash
# Bootstrap the entire workspace (install all dependencies)
melos bootstrap

# Prepare project (bootstrap + generate code + localization)
melos run prepare

# Generate code (build_runner with delete-conflicting-outputs)
melos run build-runner

# Generate localization files from ARB files
melos run gen-l10n

# Complete linting and formatting
melos run lint:all        # Run all static analysis (analyze + format)
melos run analyze         # Run flutter analyze for all packages
melos run format          # Format all Dart code
melos run fix             # Apply automatic fixes

# Testing
flutter test              # Run all tests
melos exec flutter test   # Run tests across all packages
melos run test            # Run tests with dependency ordering

# Dependency management
melos run upgrade         # Upgrade dependencies in all packages
melos run outdated        # Check for outdated dependencies
```

### Individual Package Development
```bash
# Work in specific package directories
cd app_lib/theme && flutter test
cd app_bloc/server && flutter analyze
cd app_widget/adaptive && dart run build_runner build
```

## Project Architecture

### Monorepo Structure
This is a Melos-managed monorepo with clean architecture separation:

```
semaphore_client/
├── lib/                    # Main application entry point
├── app_lib/               # Shared libraries and utilities
│   ├── api/              # API client and networking
│   ├── database/         # ObjectBox/Drift database layer
│   ├── locale/           # Internationalization (l10n) with ARB files
│   ├── logging/          # Logging utilities and configuration
│   ├── provider/         # Dependency injection and app providers
│   ├── theme/            # Theme management (light/dark, color schemes)
│   └── utils/            # Common utilities and extensions
├── app_bloc/             # BLoC state management packages
│   ├── theme/            # Theme switching BLoC
│   ├── server/           # Server management BLoC
│   ├── project/          # Project management BLoC
│   ├── task/             # Task execution BLoC
│   └── [20+ feature BLoCs]
├── app_widget/           # Reusable UI components
│   ├── adaptive/         # Adaptive/ responsive widgets
│   ├── artwork/          # Icons, images, Lottie animations
│   ├── feedback/         # Snackbars, dialogs, toasts
│   └── web_view/         # WebView components
├── app_plugins/          # Platform-specific plugins
│   └── desktop_tray/     # System tray integration
├── third_party/          # Modified third-party packages
│   ├── form_bloc/        # Enhanced form validation
│   ├── flutter_form_bloc/ # Form UI components
│   └── settings_ui/      # Settings interface components
└── bricks/               # Mason code generation templates
```

### Key Architectural Patterns

#### 1. BLoC Pattern Implementation
- **Standard BLoC**: Events → BLoC → State → UI
- **Form BLoC**: Enhanced form management with validation (see FORM_BLOC.md)
- **List BLoC**: Advanced list management with pagination, search, filtering
- **Repository Pattern**: Clean separation between data sources

#### 2. Dependency Injection
```dart
// Main app setup with MultiRepositoryProvider and MultiBlocProvider
MultiRepositoryProvider(
  providers: [
    RepositoryProvider<AppDatabase>(create: (_) => database),
    RepositoryProvider<SharedPreferences>(create: (_) => sharedPrefs),
  ],
  child: MultiBlocProvider(
    providers: [
      BlocProvider<ThemeBloc>(create: (_) => ThemeBloc(sharedPrefs)),
      BlocProvider<SemaphoreServerBloc>(create: (_) => SemaphoreServerBloc(...)),
      // ... 15+ other BLoCs
    ],
    child: const App(),
  ),
)
```

#### 3. Workspace Dependencies with Melos
- **Mono Repo Management**: This project uses Melos to manage a comprehensive mono repo with 47+ packages
- **Package Dependencies**: When including packages in this project, use `<package_name>: any` format in pubspec.yaml
- **No Path Dependencies**: **Never use path dependencies** (e.g., `path: ../app_lib/theme`) for workspace packages
- **Workspace Resolution**: Melos automatically resolves workspace package dependencies, ensuring consistent versioning across the monorepo
- **Dependency Format Example**:
  ```yaml
  dependencies:
    app_theme: any          # Correct - workspace package
    app_logging: any        # Correct - workspace package
    # path: ../app_lib/theme # WRONG - Never use path for workspace packages
  ```

## Development Patterns

### Code Style Guidelines
- **Linting**: Uses flutter_lints with custom exclusions for generated files
- **Import Order**: dart, flutter, package, local (as seen in main.dart)
- **String Style**: Single quotes enforced in analysis_options.yaml
- **Constructors**: Prefer const constructors where possible
- **Type Safety**: Always specify return types and parameter types
- **Error Handling**: try/catch with logging package integration

### State Management with BLoC
```dart
// Standard BLoC pattern
class FeatureBloc extends Bloc<FeatureEvent, FeatureState> {
  FeatureBloc() : super(FeatureState.initial()) {
    on<FeatureLoad>(_onLoad);
    on<FeatureUpdate>(_onUpdate);
  }
}

// Form BLoC pattern (for complex forms)
class LoginFormBloc extends FormBloc<String, String> {
  final emailField = TextFieldBloc(validators: [FieldBlocValidators.email]);
  final passwordField = TextFieldBloc(validators: [FieldBlocValidators.required]);

  LoginFormBloc() : super() {
    addFieldBlocs([emailField, passwordField]);
    onSubmitting(_handleSubmit);
  }
}
```

### Database Layer (ObjectBox/Drift)
- **AppDatabase**: Centralized database with migration support
- **Entity Models**: Defined in app_lib/database/lib/
- **Type Converters**: Custom type conversion in src/type_converter.dart
- **Queries**: Repository pattern for data access

### Localization (l10n)
- **ARB Files**: Located in app_lib/locale/lib/arb/
- **Configuration**: app_lib/locale/l10n.yaml
- **Supported Languages**: English, Chinese (Simplified/Traditional), Ukrainian, Czech, German, French, Korean
- **Generation**: `melos run gen-l10n` or `flutter gen-l10n`

### Theme Management
- **Multiple Themes**: Fire, Green, Violet, Wheat color schemes
- **Theme BLoC**: Manages theme switching and persistence
- **Adaptive UI**: Platform-specific adaptations (Material/Cupertino)
- **Dark Mode**: Full dark/light theme support

## Code Generation with Mason

### Available Bricks
```bash
# Screen generation
mason make screen --name ScreenName --folder user

# Widget generation
mason make widget --name CustomButton --type stateful

# BLoC generation
mason make simple_bloc --name Feature
mason make list_bloc --name Users --has_pagination true
mason make form_bloc --name Login --field_names "email,password"

# Repository generation
mason make repository --name User --has_remote_data_source true

# API client generation
mason make api_client --package_name app_api
```

### Generated Package Structure
All generated packages follow consistent patterns:
```
package_name/
├── lib/
│   ├── src/           # Implementation files
│   └── package_name.dart  # Export file
├── test/              # Test files
├── pubspec.yaml       # Dependencies with workspace resolution
└── README.md          # Package documentation
```

## Testing Strategy

### Test Organization
- **Unit Tests**: Co-located with packages in test/ directories
- **Widget Tests**: Main app widget tests in test/
- **Integration Tests**: Use `flutter test` at root level
- **BLoC Tests**: blocTest pattern for BLoC testing
- **Form Tests**: Comprehensive form validation testing

### Test Execution
```bash
# Run all tests
flutter test

# Run tests for specific package
cd app_lib/theme && flutter test

# Run tests with coverage
flutter test --coverage
```

## Platform Support

### Desktop Integration
- **System Tray**: Windows, macOS, Linux support via desktop_tray plugin
- **Window Management**: Window sizing, positioning, controls
- **Quick Actions**: Mobile quick actions integration

### Adaptive Design
- **Responsive Layouts**: AppAdaptiveScaffold for different screen sizes
- **Platform-Specific UI**: Material Design for Android/iOS, native desktop
- **Navigation**: GoRouter with declarative routing

## Development Workflow

### Setting Up Development Environment
```bash
# 1. Install global dependencies
dart pub global activate melos
dart pub global activate mason_cli

# 2. Bootstrap the workspace
melos bootstrap

# 3. Initialize Mason
mason get

# 4. Generate code and localization
melos run prepare
```

### Adding New Features
1. Create BLoC using Mason: `mason make simple_bloc --name Feature`
2. Add BLoC to main.dart providers
3. Create screen using Mason: `mason make screen --name FeatureScreen`
4. Add navigation route in router.dart
5. Write tests for BLoC and UI
6. Run `melos run lint:all` before committing

### Adding New Packages to Workspace
When adding new internal packages to this mono repo:
1. Create package directory in appropriate location (app_lib/, app_bloc/, app_widget/, etc.)
2. Add package to workspace section in root pubspec.yaml
3. Use `<package_name>: any` format when depending on workspace packages
4. **Never use path dependencies** for workspace packages
5. Run `melos bootstrap` to update dependencies

### Common Issues and Solutions
- **Build Issues**: Run `melos run prepare` to regenerate all code
- **Dependency Conflicts**: Use `melos run validate-dependencies`
- **Localization Issues**: Run `melos run gen-l10n` after ARB file changes
- **Import Errors**: Ensure workspace packages use `resolution: workspace`

## Package Dependencies

### Core Dependencies
- **flutter_bloc**: BLoC state management
- **go_router**: Declarative routing
- **drift**: Type-safe SQL database
- **shared_preferences**: Simple persistent storage
- **google_fonts**: Typography
- **window_manager**: Desktop window controls

### Internal Dependencies
All workspace packages are managed through Melos with workspace resolution. When adding internal package dependencies, always use `<package_name>: any` format - **never use path dependencies** as Melos handles workspace package resolution automatically.

## Best Practices

### Performance
- Use const constructors for widgets and models
- Implement proper BLoC disposal in dispose() methods
- Use BlocBuilder selectively for specific state changes
- Optimize database queries with proper indexing

### Code Organization
- Keep BLoCs focused on single responsibilities
- Use repository pattern for data access
- Implement proper error handling with user feedback
- Follow the established package structure

### Accessibility
- Use semantic labels for screen readers
- Implement proper focus management
- Ensure color contrast meets WCAG standards
- Test with accessibility tools

## Additional Documentation

- **[BRICKS.md](./BRICKS.md)**: Complete Mason bricks guide
- **[FORM_BLOC.md](./FORM_BLOC.md)**: Comprehensive form management documentation
- **[README.md](./README.md)**: Project overview and setup instructions
- **[TESTING.md](./TESTING.md)**: Testing strategies and patterns

## Troubleshooting

### Common Development Issues
1. **Code not generating**: Run `melos run build-runner --delete-conflicting-outputs`
2. **Localization not working**: Check ARB file syntax and run `melos run gen-l10n`
3. **BLoC not updating**: Ensure BLoC is provided in widget tree and context is correct
4. **Database migration issues**: Check AppDatabase migration logic

### Getting Help
- Check existing code patterns in respective packages
- Review Mason brick templates for code generation examples
- Consult package documentation for specific implementation details
- Use `melos run analyze` to identify code issues early