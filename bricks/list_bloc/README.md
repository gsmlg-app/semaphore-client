# {{name.pascalCase()}} List BLoC

A comprehensive BLoC implementation for managing {{name.pascalCase()}} lists with advanced features including schema management, pagination, search, filtering, reordering, and individual item state tracking.

## Features

### 🎯 Core Features
- **Schema-driven Configuration**: Dynamic field configuration with visibility, sorting, and filtering options
- **Individual Item State Tracking**: Track updating, removing, selecting, expanding, and editing states per item
- **Optimistic Updates**: Immediate UI feedback during CRUD operations
- **Comprehensive Error Handling**: Per-item error states with recovery options

### 📋 List Management
{{#has_pagination}}
- **Pagination Support**: Efficient loading of large datasets with cursor/offset pagination
{{/has_pagination}}
{{#has_search}}
- **Real-time Search**: Debounced search with loading states
{{/has_search}}
{{#has_filters}}
- **Advanced Filtering**: Multiple filter types with AND/OR logic support
{{/has_filters}}
{{#has_reorder}}
- **Drag & Drop Reordering**: Manual item reordering with position persistence
{{/has_search}}
- **Multiple Sort Options**: Configurable sort criteria and directions

### 🔧 Operations
{{#has_crud}}
- **CRUD Operations**: Create, read, update, delete with optimistic updates
{{/has_crud}}
- **Batch Operations**: Multi-select with batch delete/update capabilities
- **Multi-select Mode**: Select multiple items for batch operations
- **Progress Tracking**: Operation progress indicators for better UX

### 🎨 UI Features
- **Multiple Display Modes**: List, grid, table, and card layouts
- **Field Visibility**: Toggle field visibility dynamically
- **Responsive Design**: Adapts to different screen sizes
- **Loading States**: Granular loading indicators for different operations

## Installation

Add this package to your workspace in `pubspec.yaml`:

```yaml
workspace:
  - {{output_directory}}/{{name.snakeCase()}}_list_bloc
```

Then run:

```bash
melos bootstrap
```

## Usage

### Basic Setup

```dart
import 'package:{{name.snakeCase()}}_list_bloc/{{name.snakeCase()}}_list_bloc.dart';

// Create the BLoC
final {{name.camelCase()}Bloc = {{name.pascalCase()}}ListBloc();

// Provide it to your widget tree
BlocProvider(
  create: (context) => {{name.camelCase()}Bloc,
  child: {{name.pascalCase()}}ListView(),
)

// Initialize the list
{{name.camelCase()}Bloc.add(const {{name.pascalCase()}}ListEventInitialize());
```

### Repository Implementation

Create your own repository by extending `{{name.pascalCase()}}ListRepository`:

```dart
class My{{name.pascalCase()}}Repository extends {{name.pascalCase()}}ListRepository {
  @override
  Future<List<{{item_type.pascalCase()}}>> fetchAllItems() async {
    // Implement your data fetching logic
    return await myApiService.fetch{{name.pascalCase()}}();
  }

  {{#has_pagination}}
  @override
  Future<List<{{item_type.pascalCase()}}>> fetchItems({
    required int page,
    required int limit,
  }) async {
    return await myApiService.fetch{{name.pascalCase()}}(page: page, limit: limit);
  }
  {{/has_pagination}}

  {{#has_crud}}
  @override
  Future<{{item_type.pascalCase()}}> createItem({{item_type.pascalCase()}} item) async {
    return await myApiService.create{{name.pascalCase()}}(item);
  }

  @override
  Future<{{item_type.pascalCase()}}> updateItem(String id, {{item_type.pascalCase()}} item) async {
    return await myApiService.update{{name.pascalCase()}}(id, item);
  }

  @override
  Future<void> deleteItem(String id) async {
    await myApiService.delete{{name.pascalCase()}}(id);
  }
  {{/has_crud}}

  @override
  Future<{{name.pascalCase()}}ListSchema> fetchSchema() async {
    // Return your schema configuration
    return {{name.pascalCase()}}ListSchema(
      fields: [
        {{name.pascalCase()}}ListFieldSchema(
          id: 'name',
          name: 'name',
          type: {{name.pascalCase()}}FieldType.text,
          label: 'Name',
          isVisible: true,
          isSortable: true,
          isFilterable: true,
          order: 0,
        ),
        // Add more fields...
      ],
    );
  }
}
```

### UI Integration

#### Basic List View

```dart
class {{name.pascalCase()}}ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
      builder: (context, state) {
        // Initial state
        if (state.isInitial) {
          return Center(
            child: ElevatedButton(
              onPressed: () => context.read<{{name.pascalCase()}}ListBloc>()
                .add(const {{name.pascalCase()}}ListEventInitialize()),
              child: const Text('Load {{name.pascalCase()}}'),
            ),
          );
        }

        // Loading state
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        // Error state
        if (state.hasError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error: ${state.error}'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => context.read<{{name.pascalCase()}}ListBloc>()
                    .add(const {{name.pascalCase()}}ListEventRefresh()),
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        // Data loaded
        return RefreshIndicator(
          onRefresh: () async {
            context.read<{{name.pascalCase()}}ListBloc>()
              .add(const {{name.pascalCase()}}ListEventRefresh());
          },
          child: ListView.builder(
            itemCount: state.displayItemStates.length,
            itemBuilder: (context, index) {
              final itemState = state.displayItemStates[index];
              return {{name.pascalCase()}}ListItemTile(
                itemState: itemState,
                schema: state.schema,
              );
            },
          ),
        );
      },
    );
  }
}
```

#### Search and Filter UI

```dart
{{#has_search}}
// Search bar
TextField(
  onChanged: (query) => context.read<{{name.pascalCase()}}ListBloc>()
    .add({{name.pascalCase()}}ListEventSearch(query)),
  decoration: InputDecoration(
    hintText: 'Search {{name.snakeCase()}}...',
    prefixIcon: const Icon(Icons.search),
    {{#has_filters}}
    suffixIcon: PopupMenuButton<String>(
      onSelected: (filterType) => _showFilterDialog(filterType),
      itemBuilder: (context) => [
        const PopupMenuItem(value: 'category', child: Text('Category')),
        const PopupMenuItem(value: 'status', child: Text('Status')),
      ],
    ),
    {{/has_filters}}
  ),
)
{{/has_search}}

{{#has_filters}}
// Active filters
Wrap(
  children: state.activeFilters.map((filter) {
    return Chip(
      label: Text('${filter.type}: ${filter.value}'),
      onDeleted: () => context.read<{{name.pascalCase()}}ListBloc>()
        .add({{name.pascalCase()}}ListEventRemoveFilter(filter.type)),
    );
  }).toList(),
)
{{/has_filters}}
```

#### Item Tile with State Management

```dart
class {{name.pascalCase()}}ListItemTile extends StatelessWidget {
  const {{name.pascalCase()}}ListItemTile({
    super.key,
    required this.itemState,
    this.schema,
  });

  final {{name.pascalCase()}}ListItemState itemState;
  final {{name.pascalCase()}}ListSchema? schema;

  @override
  Widget build(BuildContext context) {
    final item = itemState.displayItem;
    
    return Card(
      child: ListTile(
        leading: itemState.isUpdating
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : itemState.isRemoving
                ? const Icon(Icons.delete_outline)
                : Checkbox(
                    value: itemState.isSelected,
                    onChanged: itemState.canSelect
                        ? (value) => context.read<{{name.pascalCase()}}ListBloc>().add(
                              {{name.pascalCase()}}ListEventSelectItem(
                                item.id,
                                value ?? false,
                              ),
                            )
                        : null,
                  ),
        title: Text(item.name),
        subtitle: itemState.hasError
            ? Text(
                itemState.currentError ?? '',
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              )
            : null,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            {{#has_crud}}
            if (itemState.canEdit)
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => _editItem(context, item),
              ),
            if (itemState.canDelete)
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => _deleteItem(context, item.id),
              ),
            {{/has_crud}}
            IconButton(
              icon: Icon(itemState.isExpanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () => context.read<{{name.pascalCase()}}ListBloc>().add(
                    {{name.pascalCase()}}ListEventExpandItem(
                      item.id,
                      !itemState.isExpanded,
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  {{#has_crud}}
  void _editItem(BuildContext context, {{item_type.pascalCase()}} item) {
    // Implement edit dialog/navigation
  }

  void _deleteItem(BuildContext context, String itemId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Item'),
        content: const Text('Are you sure you want to delete this item?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              context.read<{{name.pascalCase()}}ListBloc>()
                .add({{name.pascalCase()}}ListEventDelete(itemId));
              Navigator.pop(context);
            },
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
  {{/has_crud}}
}
```

## Advanced Usage

### Schema Configuration

```dart
// Define custom schema
final customSchema = {{name.pascalCase()}}ListSchema(
  fields: [
    {{name.pascalCase()}}ListFieldSchema(
      id: 'name',
      name: 'name',
      type: {{name.pascalCase()}}FieldType.text,
      label: 'Name',
      isVisible: true,
      isSortable: true,
      isFilterable: true,
      order: 0,
    ),
    {{name.pascalCase()}}ListFieldSchema(
      id: 'email',
      name: 'email',
      type: {{name.pascalCase()}}FieldType.email,
      label: 'Email',
      isVisible: true,
      isSortable: true,
      isFilterable: false,
      order: 1,
    ),
    {{name.pascalCase()}}ListFieldSchema(
      id: 'status',
      name: 'status',
      type: {{name.pascalCase()}}FieldType.select,
      label: 'Status',
      isVisible: true,
      isSortable: true,
      isFilterable: true,
      order: 2,
    ),
    {{name.pascalCase()}}ListFieldSchema(
      id: 'createdAt',
      name: 'createdAt',
      type: {{name.pascalCase()}}FieldType.date,
      label: 'Created',
      isVisible: true,
      isSortable: true,
      isFilterable: true,
      format: 'MMM dd, yyyy',
      order: 3,
    ),
  ],
  defaultSortField: 'createdAt',
  defaultSortDirection: false, // Descending
  pageSize: 20,
  allowReorder: true,
  allowMultiSelect: true,
  displayMode: {{name.pascalCase()}}ListDisplayMode.list,
);

// Update schema
context.read<{{name.pascalCase()}}ListBloc>()
  .add({{name.pascalCase()}}ListEventUpdateSchema(customSchema));
```

### Batch Operations

```dart
// Select multiple items
context.read<{{name.pascalCase()}}ListBloc>()
  .add({{name.pascalCase()}}ListEventBatchSelect(['id1', 'id2', 'id3']));

// Batch update
context.read<{{name.pascalCase()}}ListBloc>()
  .add({{name.pascalCase()}}ListEventBatchUpdate(
    ['id1', 'id2'],
    {'status': 'archived'},
  ));

// Batch delete
context.read<{{name.pascalCase()}}ListBloc>()
  .add({{name.pascalCase()}}ListEventBatchDelete(['id1', 'id2']));
```

### Custom Filtering

```dart
// Set text filter
context.read<{{name.pascalCase()}}ListBloc>()
  .add(const {{name.pascalCase()}}ListEventSetFilter('name', 'John'));

// Set date range filter
context.read<{{name.pascalCase()}}ListBloc>()
  .add({{name.pascalCase()}}ListEventSetFilter(
    'createdAt',
    DateTime.now().subtract(const Duration(days: 30)),
    operator: 'greaterThan',
  ));

// Clear specific filter
context.read<{{name.pascalCase()}}ListBloc>()
  .add(const {{name.pascalCase()}}ListEventRemoveFilter('name'));

// Clear all filters
context.read<{{name.pascalCase()}}ListBloc>()
  .add(const {{name.pascalCase()}}ListEventClearAllFilters());
```

## Model Requirements

Your `{{item_type.pascalCase()}}` model must have:

```dart
class {{item_type.pascalCase()}} {
  const {{item_type.pascalCase()}}({
    required this.id,
    required this.name,
    this.description,
    {{#has_crud}}
    this.createdAt,
    this.category,
    this.status,
    this.position,
    {{/has_crud}}
  });

  final String id;
  final String name;
  final String? description;
  {{#has_crud}}
  final DateTime? createdAt;
  final String? category;
  final String? status;
  final int? position;
  {{/has_crud}}

  // Required for optimistic updates
  {{item_type.pascalCase()}} copyWith(Map<String, dynamic> data) {
    return {{item_type.pascalCase()}}(
      id: data['id'] as String? ?? id,
      name: data['name'] as String? ?? name,
      description: data['description'] as String? ?? description,
      {{#has_crud}}
      createdAt: data['createdAt'] as DateTime? ?? createdAt,
      category: data['category'] as String? ?? category,
      status: data['status'] as String? ?? status,
      position: data['position'] as int? ?? position,
      {{/has_crud}}
    );
  }
}
```

## Testing

Run the test suite:

```bash
cd {{output_directory}}/{{name.snakeCase()}}_list_bloc
flutter test
```

The brick includes comprehensive tests covering:
- State management
- Event handling
- CRUD operations
- Search and filtering
- Batch operations
- Error scenarios

## Architecture

The BLoC follows a clean architecture pattern:

```
lib/
├── src/
│   ├── bloc.dart          # Main BLoC implementation
│   ├── event.dart         # All events
│   ├── state.dart         # State classes and enums
│   ├── schema.dart        # Schema configuration
│   └── item_state.dart    # Individual item state
└── {{name.snakeCase()}}_list_bloc.dart  # Export file
```

### Key Components

- **{{name.pascalCase()}}ListBloc**: Main BLoC handling all business logic
- **{{name.pascalCase()}}ListRepository**: Abstract repository for data operations
- **{{name.pascalCase()}}ListSchema**: Configuration for fields and display
- **{{name.pascalCase()}}ListItemState**: Individual item state tracking
- **{{name.pascalCase()}}ListState**: Global list state

## Best Practices

1. **Repository Implementation**: Always implement proper error handling and caching in your repository
2. **Optimistic Updates**: Use the built-in optimistic updates for better UX
3. **Error Recovery**: Implement proper error recovery using the per-item error states
4. **Schema Management**: Use schema to drive UI configuration for flexibility
5. **Testing**: Test your repository implementation thoroughly
6. **Performance**: Use pagination for large datasets
7. **Accessibility**: Provide proper labels and semantic descriptions

## Contributing

When modifying this brick:

1. Follow the existing code style and patterns
2. Update tests for any new functionality
3. Update documentation for any API changes
4. Test with different use cases
5. Ensure backward compatibility when possible

## License

This brick is part of the Flutter App Template project. See the main project license for details.