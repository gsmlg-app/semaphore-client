import 'package:mason/mason.dart';

final logger = Logger();

void run(HookContext context) {
  final name = context.vars['name'];

  // Validate name parameter
  if (name == null || name.isEmpty) {
    throw ArgumentError('❌ Name parameter is required');
  }

  // Validate naming conventions
  if (!_isValidDartIdentifier(name)) {
    throw ArgumentError(
      '❌ Invalid name: "$name". '
      'Must be a valid Dart identifier (letters, numbers, underscores only, cannot start with number)',
    );
  }

  // Check for reserved keywords
  if (_isDartReservedKeyword(name)) {
    throw ArgumentError('❌ Name "$name" is a Dart reserved keyword');
  }

  // Convert to different cases for template usage
  context.vars['pascalCase'] = _toPascalCase(name);
  context.vars['camelCase'] = _toCamelCase(name);
  context.vars['snakeCase'] = _toSnakeCase(name);
  context.vars['sentenceCase'] = _toSentenceCase(name);

  logger.info('✅ Validating BLoC name: $name');
  logger.info('  - PascalCase: ${context.vars["pascalCase"]}');
  logger.info('  - camelCase: ${context.vars["camelCase"]}');
  logger.info('  - snake_case: ${context.vars["snakeCase"]}');
}

bool _isValidDartIdentifier(String name) {
  // Dart identifier rules: letters, digits, underscore, cannot start with digit
  final identifierRegex = RegExp(r'^[a-zA-Z_][a-zA-Z0-9_]*$');
  return identifierRegex.hasMatch(name);
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
    'set',
  };
  return reservedKeywords.contains(name.toLowerCase());
}

String _toPascalCase(String input) {
  if (input.isEmpty) return input;
  return input
      .split('_')
      .map((word) {
        if (word.isEmpty) return word;
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      })
      .join('');
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

String _toSentenceCase(String input) {
  if (input.isEmpty) return input;
  final snakeCase = _toSnakeCase(input);
  return snakeCase.split('_').join(' ');
}
