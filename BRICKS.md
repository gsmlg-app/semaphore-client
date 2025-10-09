# Mason Bricks Guide

This project uses [Mason](https://pub.dev/packages/mason_cli) for code generation to maintain consistency and speed up development. This guide explains how to use the available bricks.

## Available Bricks

### 1. Screen Brick (`screen`)
Creates a new screen file in the `lib/screens/` directory with proper navigation and theming integration.

**Usage:**
```bash
mason make screen --name ScreenName [options]
```

**Variables:**
- `name` (required): Screen name (e.g., "Profile", "UserSettings")
- `folder` (optional): Subfolder name (e.g., "user" creates `lib/screens/user/profile_screen.dart`)
- `has_adaptive_scaffold` (default: true): Use AppAdaptiveScaffold for responsive layout
- `has_app_bar` (default: true): Include SliverAppBar in the screen

**Examples:**
```bash
# Basic screen in root screens folder
mason make screen --name Home

# Screen in subfolder with custom options
mason make screen --name Profile --folder user --has_adaptive_scaffold true --has_app_bar true

# Simple screen without adaptive scaffold
mason make screen --name Login --has_adaptive_scaffold false
```

**Generated File:**
- `lib/screens/{folder}/{name}_screen.dart`

**Features:**
- Static `name` and `path` constants for GoRouter integration
- AppAdaptiveScaffold integration with navigation
- SafeArea and CustomScrollView with SliverAppBar
- Proper imports and theming support
- Localization ready with `context.l10n`

---

### 2. Widget Brick (`widget`)
Creates a complete reusable widget package in the `app_widget/` directory with platform-specific implementations.

**Usage:**
```bash
mason make widget --name WidgetName [options]
```

**Variables:**
- `name` (required): Widget name (e.g., "CustomButton", "LoadingSpinner")
- `type` (default: stateless): Widget type (`stateless` or `stateful`)
- `folder` (optional): Subfolder name (e.g., "buttons" creates `app_widget/buttons/custom_button_widget/`)
- `has_platform_adaptive` (default: true): Include platform-specific implementation

**Examples:**
```bash
# Basic stateless widget
mason make widget --name CustomButton

# Stateful widget with platform adaptation
mason make widget --name LoadingSpinner --type stateful --has_platform_adaptive true

# Widget in specific folder
mason make widget --name Card --folder cards --type stateless
```

**Generated Structure:**
```
app_widget/{folder}/{name}_widget/
├── lib/
│   ├── src/
│   │   └── {name}_widget.dart
│   └── {name}_widget.dart (export file)
├── test/
│   └── {name}_widget_test.dart
├── .gitignore
├── .metadata
├── README.md
├── CHANGELOG.md
├── LICENSE
├── analysis_options.yaml
└── pubspec.yaml
```

**Features:**
- Platform-specific implementations (Material vs Cupertino)
- Comprehensive test scaffolding
- Proper documentation and changelog
- Export pattern following project conventions
- MIT license included

---

### 3. Simple BLoC Brick (`simple_bloc`)
Creates a simple BLoC package with state management components.

**Usage:**
```bash
mason make simple_bloc --name BlocName
```

**Variables:**
- `name` (required): BLoC name (e.g., "User", "Settings")

**Generated Structure:**
```
{name}_bloc/
├── lib/
│   ├── src/
│   │   ├── bloc.dart
│   │   ├── event.dart
│   │   └── state.dart
│   └── {name}_bloc.dart
├── test/
│   └── {name}_bloc_test.dart
└── pubspec.yaml
```

---

### 4. List BLoC Brick (`list_bloc`)
Creates a comprehensive list BLoC package with advanced features including schema management, pagination, search, filtering, reordering, and individual item state tracking.

**Usage:**
```bash
mason make list_bloc --name ListName [options]
```

**Variables:**
- `name` (required): List name (e.g., "Users", "Products", "Tasks")
- `item_type` (default: "User"): Type of items in the list (singular form)
- `has_pagination` (default: true): Include pagination support
- `has_search` (default: true): Include search functionality
- `has_filters` (default: true): Include advanced filtering
- `has_reorder` (default: false): Include drag & drop reordering
- `has_crud` (default: true): Include CRUD operations
- `filter_types` (default: ["category", "status"]): Types of filters to include
- `sort_options` (default: ["name", "date"]): Available sort options
- `output_directory` (default: "app_bloc"): Where to create the bloc package

**Examples:**
```bash
# Complete feature list for users
mason make list_bloc --name Users --item_type User --has_pagination true --has_search true --has_filters true --has_reorder true

# Simple product list without pagination
mason make list_bloc --name Products --item_type Product --has_pagination false --has_search false --has_filters false

# Task list with basic features
mason make list_bloc --name Tasks --item_type Task --has_crud true --filter_types "status,priority"
```

**Generated Structure:**
```
{output_directory}/{name}_list_bloc/
├── lib/
│   ├── src/
│   │   ├── bloc.dart (main BLoC implementation)
│   │   ├── event.dart (comprehensive event definitions)
│   │   ├── state.dart (enhanced state with schema and item tracking)
│   │   ├── schema.dart (field and list schema models)
│   │   └── item_state.dart (individual item state tracking)
│   └── {name}_list_bloc.dart (export file)
├── test/
│   └── {name}_list_bloc_test.dart (comprehensive test suite)
├── hooks/
│   └── post_gen.dart (post-generation hook)
├── README.md (detailed usage documentation)
├── pubspec.yaml (dependencies include bloc, flutter_bloc, equatable)
└── brick.yaml
```

**Features:**
- **Schema Management**: Dynamic field configuration with visibility, sorting, and filtering
- **Individual Item States**: Track updating, removing, selecting, expanding, editing per item
- **Optimistic Updates**: Immediate UI feedback during CRUD operations
- **Pagination Support**: Efficient loading of large datasets
- **Real-time Search**: Debounced search with loading states
- **Advanced Filtering**: Multiple filter types with AND/OR logic
- **Drag & Drop Reordering**: Manual item reordering with position persistence
- **Batch Operations**: Multi-select with batch delete/update capabilities
- **Multiple Display Modes**: List, grid, table, and card layouts
- **Comprehensive Error Handling**: Per-item error states with recovery
- **Full Test Coverage**: Complete test suite for all functionality

**Usage in UI:**
```dart
// Create and provide the BLoC
BlocProvider(
  create: (context) => UserListBloc(),
  child: UserListView(),
)

// Initialize the list
context.read<UserListBloc>().add(UserListEventInitialize());

// Search functionality
context.read<UserListBloc>().add(UserListEventSearch('john'));

// Filter items
context.read<UserListBloc>().add(UserListEventSetFilter('status', 'active'));

// Select items
context.read<UserListBloc>().add(UserListEventSelectItem('user-123', true));

// Batch operations
context.read<UserListBloc>().add(UserListEventBatchDelete(['user-1', 'user-2']));
```

---

### 5. Form BLoC Brick (`form_bloc`)
Creates a form BLoC package with validation and submission logic for managing form state.

**Usage:**
```bash
mason make form_bloc --name FormName [options]
```

**Variables:**
- `name` (required): Form name (e.g., "Login", "Registration", "Profile")
- `output_directory` (default: "app_bloc"): Where to create the bloc package
- `has_submission` (default: true): Include form submission logic
- `has_validation` (default: true): Include field validation

**Examples:**
```bash
# Basic login form with email and password fields
mason make form_bloc --name Login

# Form with only validation (no submission logic)
mason make form_bloc --name Contact --has_submission false
```

**Generated Structure:**
```
{output_directory}/{name}_form_bloc/
├── lib/
│   ├── src/
│   │   ├── bloc.dart (main BLoC implementation)
│   │   ├── event.dart (form events: field changes, submit, reset, validate)
│   │   └── state.dart (form state with email/password fields and status enum)
│   └── {name}_form_bloc.dart (export file)
├── test/
│   └── {name}_form_bloc_test.dart (test suite)
├── pubspec.yaml (dependencies include bloc, equatable)
└── brick.yaml
```

**Features:**
- **Form State Management**: Manages email and password field states
- **Event Handling**: Field changes, form submission, validation, and reset events
- **Status Tracking**: Initial, validating, inProgress, success, and failure states
- **Error Handling**: Error state management for failed submissions
- **Conditional Logic**: Optional submission and validation based on configuration
- **Test Ready**: Includes test file structure for comprehensive testing

**Default Fields:**
- `email`: Email field with nullable string type
- `password`: Password field with nullable string type

**Usage in UI:**
```dart

**Usage in UI:**
```dart
BlocProvider(
  create: (context) => LoginFormBloc(),
  child: Builder(
    builder: (context) {
      final formBloc = context.read<LoginFormBloc>();

      return FormBlocListener(
        formBloc: formBloc,
        onSubmitting: () => showLoadingDialog(),
        onSuccess: () => showSuccessMessage(),
        onFailure: (error) => showErrorMessage(error),
        child: Column(
          children: [
            TextFieldBlocBuilder(
              textFieldBloc: formBloc.emailFieldBloc,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFieldBlocBuilder(
              textFieldBloc: formBloc.passwordFieldBloc,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () => formBloc.add(LoginFormEventSubmitted()),
              child: Text('Submit'),
            ),
          ],
        ),
      );
    },
  ),
)
```

---

### 6. List BLoC Brick (`list_bloc`)
Creates a comprehensive list management BLoC with advanced features like pagination, search, filtering, and individual item state tracking.

**Usage:**
```bash
mason make list_bloc --name ListName [options]
```

**Variables:**
- `name` (required): List name (e.g., "Users", "Products", "Tasks")
- `item_type` (required): Type of items in the list (e.g., "User", "Product", "Task")
- `has_pagination` (default: false): Enable pagination support
- `has_search` (default: false): Enable search functionality
- `has_filters` (default: false): Enable filtering capabilities
- `has_reorder` (default: false): Enable drag-and-drop reordering
- `has_crud` (default: false): Enable create/update/delete operations
- `has_batch_operations` (default: false): Enable batch operations
- `has_multi_select` (default: false): Enable multi-selection mode

**Generated Structure:**
```
{output_directory}/{name}_list_bloc/
├── lib/
│   ├── src/
│   │   ├── bloc.dart (main BLoC implementation)
│   │   ├── event.dart (event definitions)
│   │   ├── state.dart (state management)
│   │   ├── schema.dart (field and list schema)
│   │   └── item_state.dart (individual item tracking)
│   └── {name}_list_bloc.dart (export file)
├── test/
│   └── {name}_list_bloc_test.dart (comprehensive test suite)
├── hooks/
│   └── post_gen.dart (post-generation hook)
├── README.md (usage documentation)
├── pubspec.yaml (dependencies include bloc, flutter_bloc, equatable)
└── brick.yaml
```

**Features:**
- **Schema Management**: Dynamic field configuration with visibility, sorting, and filtering
- **Individual Item States**: Track updating/removing/selecting/expanding/editing per item
- **Optional Features**: Pagination, search, filters, reordering, CRUD operations (all configurable)
- **Advanced Operations**: Batch operations, multi-select, optimistic updates
- **State Management**: Comprehensive states (initial, loading, loaded, error)
- **Error Handling**: Per-item error states with recovery options

**Usage Example:**
```dart
// Create the BLoC
BlocProvider(
  create: (context) => UsersListBloc(
    repository: context.read<UserRepository>(),
  ),
  child: Builder(
    builder: (context) {
      final listBloc = context.read<UsersListBloc>();
      
      return BlocBuilder<UsersListBloc, UsersListState>(
        builder: (context, state) {
          return Column(
            children: [
              // Search bar (if enabled)
              if (listBloc.schema.hasSearch)
                TextField(
                  onChanged: (query) => listBloc.add(
                    UsersListEventSearchQueryChanged(query),
                  ),
                ),
              
              // Items list
              ListView.builder(
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  final item = state.items[index];
                  final itemState = state.itemStates[item.id] ?? ItemState();
                  
                  return ListTile(
                    title: Text(item.name),
                    trailing: itemState.isUpdating
                        ? CircularProgressIndicator()
                        : IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => listBloc.add(
                              UsersListEventItemRemoved(item.id),
                            ),
                          ),
                  );
                },
              ),
            ],
          );
        },
      );
    },
  ),
)
```

---

### 7. Repository Brick (`repository`)
Creates a complete repository pattern implementation with data sources and models.

**Usage:**
```bash
mason make repository --name RepositoryName [options]
```

**Variables:**
- `name` (required): Repository name (e.g., "User", "Product")
- `has_remote_data_source` (default: true): Include remote data source
- `has_local_data_source` (default: true): Include local data source
- `model_name` (optional): Model name (defaults to repository name)

---

### 8. API Client Brick (`api_client`)
Generates a complete API client package from OpenAPI/Swagger specifications.

**Usage:**
```bash
mason make api_client --package_name api_package_name
```

**Variables:**
- `package_name` (required): Package name for the API client

---

## Getting Started

### Prerequisites
Ensure you have Mason CLI installed:
```bash
dart pub global activate mason_cli
```

### Initialize Mason
If you haven't already initialized Mason in your project:
```bash
mason init
```

### Install Bricks
The bricks are already configured in `mason.yaml`. To ensure they're available:
```bash
mason get
```

### Using Bricks
1. Choose the appropriate brick for your needs
2. Run the mason make command with required variables
3. Follow the prompts for optional variables
4. The generated code will be created in the appropriate location

## Best Practices

### Screen Creation
- Use descriptive names that clearly indicate the screen's purpose
- Place related screens in subfolders (e.g., all user-related screens in `user/`)
- Keep screens focused on a single responsibility
- Use the adaptive scaffold for consistent navigation

### Widget Creation
- Create reusable widgets for common UI patterns
- Use platform adaptation for better user experience
- Include comprehensive tests for widget behavior
- Document public APIs thoroughly
- Follow the existing widget patterns in `app_widget/`

### General Guidelines
- Always review generated code before committing
- Customize the generated code to fit your specific needs
- Add proper error handling and edge case management
- Include accessibility features in your widgets
- Follow the project's coding standards and conventions

## Troubleshooting

### Common Issues
1. **Brick not found**: Run `mason get` to ensure bricks are installed
2. **Template variables not resolving**: Check variable names and syntax
3. **Generated code has errors**: Review the template and your variable inputs

### Getting Help
- Check the [Mason documentation](https://pub.dev/packages/mason_cli)
- Review existing code patterns in the project
- Ensure your mason.yaml is properly configured

## Contributing

When adding new bricks or modifying existing ones:
1. Follow the existing brick structure and conventions
2. Test the brick thoroughly before committing
3. Update this documentation with new brick information
4. Consider adding examples and best practices
5. Ensure backward compatibility when possible

## Brick Development

To create a new brick:
1. Create a new directory in `bricks/`
2. Add `brick.yaml` with appropriate variables
3. Create template files in `__brick__/` directory
4. Update `mason.yaml` to include the new brick
5. Test the brick thoroughly
6. Document the brick in this guide

For more information on creating bricks, refer to the [Mason documentation](https://github.com/felangel/mason).