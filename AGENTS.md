# Build/Lint/Test Commands
- Run single test: `flutter test test/widget_test.dart`
- Run all tests: `flutter test` or `melos exec flutter test`
- Lint: `melos run analyze && melos run format`
- Format: `melos run format`
- Analyze: `melos run analyze`
- Build: `melos run build-runner` (build_runner with delete-conflicting-outputs)
- Prepare project: `melos run prepare` (bootstrap + gen-l10n + build-runner)
- Fix code: `melos run fix`

# Code Style Guidelines
- Use flutter_lints from analysis_options.yaml
- Import order: dart, flutter, package, local (as seen in main.dart)
- Use single quotes for strings (enabled in analysis_options.yaml)
- Prefer const constructors
- Use BLoC pattern for state management (flutter_bloc dependency)
- Error handling: try/catch with logging (logging package available)
- Naming: PascalCase for classes, camelCase for variables
- Types: always specify return types and parameter types
- Workspace structure: monorepo with app_lib, app_bloc, app_widget packages
- Use melos for workspace management and dependency coordination
- When including packages in this project, use `<package_name>: any` in pubspec.yaml, don't use path dependencies