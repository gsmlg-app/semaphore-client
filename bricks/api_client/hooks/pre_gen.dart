import 'package:mason/mason.dart';

final logger = Logger();

void run(HookContext context) {
  final packageName = context.vars['package_name'];

  // Validate package name parameter
  if (packageName == null || packageName.isEmpty) {
    throw ArgumentError('❌ Package name parameter is required');
  }

  // Validate package naming conventions
  if (!_isValidPackageName(packageName)) {
    throw ArgumentError('❌ Invalid package name: "$packageName". '
        'Must be a valid Dart package name (lowercase letters, numbers, underscores only)');
  }

  // Check for reserved keywords
  if (_isDartReservedKeyword(packageName)) {
    throw ArgumentError(
        '❌ Package name "$packageName" is a Dart reserved keyword');
  }

  // Convert to different cases for template usage
  context.vars['pascalCase'] = _toPascalCase(packageName);
  context.vars['camelCase'] = _toCamelCase(packageName);
  context.vars['snakeCase'] = _toSnakeCase(packageName);

  logger.info('✅ Validating API client package name: $packageName');
  logger.info('  - PascalCase: ${context.vars["pascalCase"]}');
  logger.info('  - camelCase: ${context.vars["camelCase"]}');
  logger.info('  - snake_case: ${context.vars["snakeCase"]}');

  // Add configuration suggestions
  logger.info('''
📋 API Client Configuration Tips:
  1. Update openapi.yaml with your OpenAPI 3.0 specification
  2. Configure swagger_parser.yaml for your needs
  3. Add authentication interceptors if needed
  4. Configure base URL and timeouts
  5. Add custom headers and interceptors
''');
}

bool _isValidPackageName(String name) {
  // Dart package name rules: lowercase letters, numbers, underscores only
  final packageNameRegex = RegExp(r'^[a-z][a-z0-9_]*$');
  return packageNameRegex.hasMatch(name);
}

bool _isDartReservedKeyword(String name) {
  const reservedKeywords = {
    'abstract',
    'else',
    'import',
    'show',
    'as',
    'enum',
    'in',
    'static',
    'assert',
    'export',
    'interface',
    'super',
    'async',
    'extends',
    'is',
    'switch',
    'await',
    'extension',
    'late',
    'sync',
    'break',
    'external',
    'library',
    'this',
    'case',
    'factory',
    'mixin',
    'throw',
    'catch',
    'false',
    'new',
    'true',
    'class',
    'final',
    'null',
    'try',
    'const',
    'finally',
    'on',
    'typedef',
    'continue',
    'for',
    'operator',
    'var',
    'covariant',
    'Function',
    'part',
    'void',
    'default',
    'get',
    'required',
    'while',
    'deferred',
    'hide',
    'rethrow',
    'with',
    'do',
    'if',
    'return',
    'yield',
    'dynamic',
    'implements',
    'set'
  };
  return reservedKeywords.contains(name.toLowerCase());
}

String _toPascalCase(String input) {
  if (input.isEmpty) return input;
  return input.split('_').map((word) {
    if (word.isEmpty) return word;
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).join('');
}

String _toCamelCase(String input) {
  final pascalCase = _toPascalCase(input);
  if (pascalCase.isEmpty) return pascalCase;
  return pascalCase[0].toLowerCase() + pascalCase.substring(1);
}

String _toSnakeCase(String input) {
  if (input.isEmpty) return input;
  // Already snake_case
  if (input.contains('_')) return input.toLowerCase();
  // camelCase or PascalCase
  return input
      .replaceAllMapped(
        RegExp(r'([A-Z])'),
        (match) => '_${match.group(0)!.toLowerCase()}',
      )
      .replaceFirst('_', '');
}
