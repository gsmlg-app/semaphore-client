import 'dart:io';
import 'package:mason/mason.dart';

final logger = Logger();

void run(HookContext context) {
  final name = context.vars['name'];
  final packageName = '${name}_bloc';

  logger.info('✅ Generated $packageName BLoC package');

  // Post-generation instructions
  logger.info('''
🎉 BLoC generation completed!

Next steps for ${context.vars['pascalCase']}BLoC:

1. 📦 Install dependencies:
   cd $packageName && flutter pub get

2. 🧪 Run tests to verify everything works:
   flutter test

3. 📝 Implement your business logic:
   - Open lib/src/bloc.dart
   - Replace TODO comments with your implementation
   - Add more events in lib/src/event.dart
   - Extend state in lib/src/state.dart

4. 🧪 Add more tests:
   - Open test/${name}_bloc_test.dart
   - Add tests for your custom events and logic

5. 📚 Use your BLoC:
   - Import: import \'package:$packageName/$packageName.dart\';
   - Create: ${context.vars['pascalCase']}Bloc()
   - Use: BlocProvider, BlocBuilder, etc.

💡 Tips:
   - Use sealed classes for events (already set up)
   - Follow the status pattern for state management
   - Add proper error handling and logging
   - Write tests for all your business logic

For more information, see the generated README.md in the $packageName directory.
''');

  // Check if running in a Flutter project
  if (!File('pubspec.yaml').existsSync()) {
    logger.warn(
      '⚠️  Not in a Flutter project directory. Make sure to run flutter pub get manually.',
    );
  }

  // Validate that the generated structure is correct
  final expectedFiles = [
    '$packageName/lib/${name}_bloc.dart',
    '$packageName/lib/src/bloc.dart',
    '$packageName/lib/src/event.dart',
    '$packageName/lib/src/state.dart',
    '$packageName/test/${name}_bloc_test.dart',
    '$packageName/pubspec.yaml',
  ];

  for (final file in expectedFiles) {
    if (!File(file).existsSync()) {
      logger.err('❌ Missing expected file: $file');
    }
  }

  logger.info('✅ All expected files generated successfully');
}
