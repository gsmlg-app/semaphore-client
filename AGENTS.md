# Build/Lint/Test Commands
- Run single test: `flutter test test/widget_test.dart`
- Run all tests: `flutter test` or `melos exec flutter test`
- Lint: `melos run lint:all` (analyze + format)
- Format: `melos run format`
- Analyze: `melos run analyze`
- Build: `melos run build-all`

# Code Style Guidelines
- Use flutter_lints from analysis_options.yaml
- Import order: dart, package, local
- Use single quotes for strings
- Prefer const constructors
- Use BLoC pattern for state management
- Error handling: try/catch with logging
- Naming: PascalCase for classes, camelCase for variables
- Types: always specify return types and parameter types