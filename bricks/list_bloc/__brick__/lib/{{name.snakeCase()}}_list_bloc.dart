/// {{name.pascalCase()}} List BLoC - Comprehensive List Management
///
/// This library provides a complete BLoC implementation for managing {{name.pascalCase()}} lists
/// with advanced features including:
/// - Schema-driven field configuration
/// - Individual item state tracking
/// - Pagination support
/// - Search and filtering
/// - Sorting and reordering
/// - CRUD operations with optimistic updates
/// - Batch operations
/// - Multi-select functionality
///
/// Usage:
/// ```dart
/// // Create the BLoC
/// final userListBloc = UserListBloc();
///
/// // Provide it to your widget tree
/// BlocProvider(
///   create: (context) => userListBloc,
///   child: UserListView(),
/// )
///
/// // Initialize the list
/// userListBloc.add(UserListEventInitialize());
/// ```
library {{name.snakeCase()}}_list_bloc;

export 'src/bloc.dart';
export 'src/event.dart';
export 'src/state.dart';
export 'src/schema.dart';
export 'src/item_state.dart';