import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final logger = context.logger;

  // Get the brick variables
  final name = context.vars['name'] as String;
  final itemType = context.vars['item_type'] as String;
  final outputDirectory = context.vars['output_directory'] as String? ?? 'app_bloc';
  final hasPagination = context.vars['has_pagination'] as bool? ?? false;
  final hasSearch = context.vars['has_search'] as bool? ?? false;
  final hasFilters = context.vars['has_filters'] as bool? ?? false;
  final hasReorder = context.vars['has_reorder'] as bool? ?? false;
  final hasCrud = context.vars['has_crud'] as bool? ?? false;
  
  // Convert name to PascalCase and camelCase
  final pascalName = name.split('_').map((word) => word[0].toUpperCase() + word.substring(1)).join('');
  var camelName = name.split('_').map((word) => word[0].toUpperCase() + word.substring(1)).join('');
  camelName = camelName[0].toLowerCase() + camelName.substring(1);
  
  final pascalItemType = itemType.split('_').map((word) => word[0].toUpperCase() + word.substring(1)).join('');
  
  logger.info('🎯 Generated $pascalName List BLoC successfully!');
  logger.info('');
  
  logger.info('📁 Generated files:');
  logger.info('  • $outputDirectory/${name}_list_bloc/lib/src/bloc.dart');
  logger.info('  • $outputDirectory/${name}_list_bloc/lib/src/event.dart');
  logger.info('  • $outputDirectory/${name}_list_bloc/lib/src/state.dart');
  logger.info('  • $outputDirectory/${name}_list_bloc/lib/src/schema.dart');
  logger.info('  • $outputDirectory/${name}_list_bloc/lib/src/item_state.dart');
  logger.info('  • $outputDirectory/${name}_list_bloc/lib/${name}_list_bloc.dart');
  logger.info('  • $outputDirectory/${name}_list_bloc/pubspec.yaml');
  logger.info('  • $outputDirectory/${name}_list_bloc/test/${name}_list_bloc_test.dart');
  logger.info('');
  
  logger.info('🚀 Next steps:');
  logger.info('');
  logger.info('1. Add the package to your workspace:');
  logger.info('   Add to your root pubspec.yaml workspace section:');
  logger.info('   - $outputDirectory/${name}_list_bloc');
  logger.info('');
  
  logger.info('2. Implement the repository:');
  logger.info('   Replace _Default$pascalName ListRepository with your actual implementation');
  logger.info('   in $outputDirectory/${name}_list_bloc/lib/src/bloc.dart');
  logger.info('');
  
  logger.info('3. Update your $pascalItemType model:');
  logger.info('   Make sure your $pascalItemType class has:');
  logger.info('   • id: String');
  logger.info('   • name: String');
  logger.info('   • copyWith method');
  if (hasCrud) {
    logger.info('   • createdAt: DateTime? (optional)');
    logger.info('   • category: String? (optional)');
    logger.info('   • status: String? (optional)');
    logger.info('   • position: int? (optional)');
  }
  logger.info('');
  
  logger.info('4. Run melos bootstrap:');
  logger.info('   melos bootstrap');
  logger.info('');
  
  logger.info('5. Run tests:');
  logger.info('   cd $outputDirectory/${name}_list_bloc && flutter test');
  logger.info('');
  
  logger.info('💡 Usage example:');
  logger.info('');
  logger.info('```dart');
  logger.info('// Create the BLoC');
  logger.info('final $camelName ListBloc = $pascalName ListBloc();');
  logger.info('');
  logger.info('// Provide it to your widget tree');
  logger.info('BlocProvider(');
  logger.info('  create: (context) => $camelName ListBloc,');
  logger.info('  child: $pascalName ListView(),');
  logger.info(')');
  logger.info('');
  logger.info('// Initialize the list');
  logger.info('$camelName ListBloc.add($pascalName ListEventInitialize());');
  logger.info('```');
  logger.info('');
  
  logger.info('📚 Features included:');
  if (hasPagination) logger.info('  ✅ Pagination support');
  if (hasSearch) logger.info('  ✅ Search functionality with debouncing');
  if (hasFilters) logger.info('  ✅ Advanced filtering');
  if (hasReorder) logger.info('  ✅ Drag & drop reordering');
  if (hasCrud) logger.info('  ✅ CRUD operations with optimistic updates');
  logger.info('  ✅ Schema-driven field configuration');
  logger.info('  ✅ Individual item state tracking');
  logger.info('  ✅ Multi-select and batch operations');
  logger.info('  ✅ Comprehensive error handling');
  logger.info('  ✅ Full test coverage');
  logger.info('');
  
  logger.info('🎉 Happy coding!');
}