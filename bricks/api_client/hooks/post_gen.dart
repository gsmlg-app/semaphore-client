import 'dart:io';
import 'package:mason/mason.dart';

final logger = Logger();

void run(HookContext context) {
  final packageName = context.vars['package_name'];
  final pascalCaseName = context.vars['pascalCase'];

  logger.info('✅ Generated API client package: $packageName');

  // Post-generation instructions
  logger.info('''
🎉 API client generation completed!

Next steps for $packageName:

1. 📦 Install dependencies:
   cd $packageName && flutter pub get

2. 📝 Add your OpenAPI specification:
   - Open lib/openapi.yaml
   - Replace with your OpenAPI 3.0 specification
   - Or copy your existing spec file to this location

3. 🔧 Configure swagger_parser.yaml (optional):
   - Update output settings
   - Configure authentication
   - Set up custom headers

4. 🏗️ Generate API client code:
   dart run swagger_parser

5. 🧪 Test the generated client:
   - Write tests in test/${packageName}_test.dart
   - Test API calls with mock data

6. 📚 Use your API client:
   - Import: import 'package:$packageName/$packageName.dart';
   - Create: ${pascalCaseName}Client()
   - Make calls: await client.getUsers()

📋 Configuration Tips:
   - Set up authentication interceptors for JWT/API keys
   - Configure base URL for different environments
   - Add logging interceptors for debugging
   - Set up retry logic for failed requests
   - Configure timeouts and connection settings

💡 Example OpenAPI spec structure:
```yaml
openapi: 3.0.0
info:
  title: Your API
  version: 1.0.0
servers:
  - url: https://api.example.com
paths:
  /users:
    get:
      summary: Get users
      responses:
        '200':
          description: Success
```
''');

  // Check if running in a Flutter project
  if (!File('pubspec.yaml').existsSync()) {
    logger.warn(
        '⚠️  Not in a Flutter project directory. Make sure to run flutter pub get manually.');
  }

  // Validate that the generated structure is correct
  final expectedFiles = [
    '$packageName/lib/$packageName.dart',
    '$packageName/lib/src/$packageName.dart',
    '$packageName/lib/openapi.yaml',
    '$packageName/swagger_parser.yaml',
    '$packageName/pubspec.yaml',
  ];

  for (final file in expectedFiles) {
    if (!File(file).existsSync()) {
      logger.err('❌ Missing expected file: $file');
    }
  }

  logger.info('✅ All expected files generated successfully');
  logger.info(
      '⚠️  Remember to add your OpenAPI specification and run code generation!');
}
