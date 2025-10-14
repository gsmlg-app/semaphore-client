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
Creates a comprehensive form BLoC package using the advanced `form_bloc` library with dynamic field generation, validation, submission logic, and support for multiple field types.

**Usage:**
```bash
mason make form_bloc --name FormName [options]
```

**Variables:**
- `name` (required): Form name (e.g., "Login", "Registration", "Profile")
- `output_directory` (default: "app_bloc"): Where to create the bloc package
- `fields` (default: ["email:email", "password:password"]): List of fields in format "name:field_type[:options]"

**Field Types:**
| Field Type | Description | Example | Generated FieldBloc |
|------------|-------------|---------|-------------------|
| `text` | Basic text input | `name:text` | TextFieldBloc |
| `email` | Email with validation | `email:email` | TextFieldBloc with email validator |
| `password` | Password with length validation | `password:password` | TextFieldBloc with password validator |
| `number` | Numeric text input | `age:number` | TextFieldBloc with number validator |
| `boolean` | True/false toggle | `isActive:boolean` | BooleanFieldBloc |
| `select` | Single selection dropdown | `country:select:USA,Canada,Mexico` | SelectFieldBloc with items |
| `multiselect` | Multiple selection | `interests:multiselect:sports,music,movies` | MultiSelectFieldBloc |
| `date` | Date picker | `birthDate:date` | InputFieldBloc<DateTime> |
| `file` | File upload | `avatar:file` | InputFieldBloc<dynamic> |

**Examples:**

**Basic Login Form (default):**
```bash
mason make form_bloc --name Login
```
Generates: `email:email`, `password:password`

**User Registration Form:**
```bash
mason make form_bloc --name Registration \
  --fields "name:text,email:email,password:password,confirmPassword:password,agreeTerms:boolean"
```

**Profile Form with Select Options:**
```bash
mason make form_bloc --name Profile \
  --fields "firstName:text,lastName:text,email:email,phone:text,country:select:USA,Canada,Mexico,newsletter:boolean"
```

**Survey Form with Multiple Selection:**
```bash
mason make form_bloc --name Survey \
  --fields "rating:select:1,2,3,4,5,comments:text,interests:multiselect:sports,music,movies,newsletter:boolean"
```

**Complex Form with Mixed Types:**
```bash
mason make form_bloc --name Application \
  --fields "fullName:text,email:email,age:number,birthDate:date,experience:select:Junior,Senior,Expert,skills:multiselect:Flutter,Dart,React,available:boolean,resume:file"
```

**Generated Structure:**
```
{output_directory}/{name}_form_bloc/
├── lib/
│   ├── src/
│   │   ├── bloc.dart (dynamic FormBloc implementation)
│   │   ├── event.dart (dynamic form events)
│   │   └── state.dart (FormBlocState extensions)
│   └── {name}_form_bloc.dart (export file)
├── test/
│   └── {name}_form_bloc_test.dart (dynamic test suite)
├── pubspec.yaml (dependencies include form_bloc, bloc_test)
└── brick.yaml
```

**Features:**
- **Dynamic Field Generation**: Automatically generates fields based on configuration
- **Type-Safe Fields**: Each field type gets appropriate FieldBloc with correct validators
- **Built-in Validation**: Email, password, number, required field validation
- **Select Field Options**: Support for dropdown items and multi-select options
- **Auto-validation**: Real-time validation as users type
- **Submission Handling**: Async form submission with loading states
- **Error Handling**: Comprehensive error management with user-friendly messages
- **State Extensions**: Helper methods for easier state checking
- **Dynamic Testing**: Automatically generates tests for all field types
- **Form Data Access**: Type-safe form data extraction

**Field Validation:**
- **Text Fields**: Required validation
- **Email Fields**: Required + email format validation
- **Password Fields**: Required + minimum 6 characters validation
- **Number Fields**: Required + numeric format validation
- **Boolean Fields**: Required validation (must be true)
- **Select Fields**: Required validation (must select an option)
- **MultiSelect Fields**: Required validation (must select at least one)
- **Date Fields**: Required validation
- **File Fields**: Required validation (must upload file)

**Generated Code Examples:**

**Field Declarations (from Profile Form):**
```dart
late final TextFieldBloc firstName;
late final TextFieldBloc lastName;
late final TextFieldBloc email;
late final TextFieldBloc phone;
late final SelectFieldBloc<String, dynamic> country;
late final BooleanFieldBloc newsletter;
```

**Field Initialization (with Select Options):**
```dart
void addCountryField() {
  final selectItems = ['USA', 'Canada', 'Mexico'];
  country = SelectFieldBloc<String, dynamic>(
    items: selectItems,
    validators: [
      FieldBlocValidators.required,
    ],
  );
  addFieldBlocs(fieldBlocs: [country]);
}
```

**Dynamic PopulateFormEvent:**
```dart
class PopulateFormEvent extends ProfileFormEvent {
  const PopulateFormEvent({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.country,
    required this.newsletter,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String? country;
  final bool newsletter;
}
```

**Form Data Access:**
```dart
// Get form data as map
final formData = formBloc.getFormData();
print('Name: ${formData['firstName']} ${formData['lastName']}');
print('Email: ${formData['email']}');
print('Country: ${formData['country']}');
print('Newsletter: ${formData['newsletter']}');

// Check form state
if (ProfileFormStateExtensions.isFormValid(formBloc.state)) {
  // Form is valid, can submit
}
```

**Usage in UI:**
```dart
BlocProvider(
  create: (context) => ProfileFormBloc(),
  child: Builder(
    builder: (context) {
      final formBloc = context.read<ProfileFormBloc>();

      return FormBlocListener(
        formBloc: formBloc,
        onSubmitting: () => showLoadingDialog(),
        onSuccess: () => showSuccessMessage(),
        onFailure: (error) => showErrorMessage(error),
        child: Column(
          children: [
            TextFieldBlocBuilder(
              textFieldBloc: formBloc.firstName,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextFieldBlocBuilder(
              textFieldBloc: formBloc.email,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            DropdownFieldBlocBuilder(
              selectFieldBloc: formBloc.country,
              decoration: InputDecoration(labelText: 'Country'),
            ),
            SwitchFieldBlocBuilder(
              booleanFieldBloc: formBloc.newsletter,
              title: Text('Subscribe to newsletter'),
            ),
            ElevatedButton(
              onPressed: () => formBloc.submit(),
              child: Text('Submit'),
            ),
          ],
        ),
      );
    },
  ),
)
```

**Populating Form Data:**
```dart
// Populate form with existing data
formBloc.add(ProfileFormEvent(
  firstName: 'John',
  lastName: 'Doe',
  email: 'john@example.com',
  phone: '+1234567890',
  country: 'USA',
  newsletter: true,
));
```

**Testing:**
The brick automatically generates comprehensive tests for each field type:

```dart
// Example generated tests
test('email field validation', () {
  blocTest<ProfileFormBloc, FormBlocState<String, String>>(
    'emits invalid state when email is invalid format',
    build: () => formBloc,
    act: (bloc) => bloc.email.updateValue('invalid-email'),
    expect: () => [
      predicate<FormBlocState<String, String>>((state) => 
        state.isValid == false && 
        bloc.email.state.isInvalid
      ),
    ],
  );
});

test('select field validation', () {
  blocTest<ProfileFormBloc, FormBlocState<String, String>>(
    'emits valid state when country has a selected value',
    build: () => formBloc,
    act: (bloc) => bloc.country.updateValue('USA'),
    expect: () => [
      predicate<FormBlocState<String, String>>((state) => 
        bloc.country.state.isValid
      ),
    ],
  );
});
```

**Dependencies:**
- `form_bloc`: Path reference to `../../third_party/form_bloc`
- `bloc_test`: For comprehensive testing
- `flutter_test`: For widget testing

**Migration from Previous Version:**
The brick maintains backward compatibility. Existing forms will continue to work:

```bash
# Old way (still works)
mason make form_bloc --name Login

# New equivalent
mason make form_bloc --name Login --fields "email:email,password:password"
```

**Advanced Usage:**
For complex forms, you can combine multiple field types:

```bash
mason make form_bloc --name JobApplication \
  --fields "fullName:text,email:email,phone:text,position:select:Developer,Designer,Manager,experience:number,portfolio:file,available:boolean"
```

This generates a complete form with text inputs, email validation, phone number, position dropdown, years of experience, file upload for portfolio, and availability toggle.

**Best Practices:**
1. Use descriptive field names that clearly indicate their purpose
2. Choose appropriate field types for better UX and validation
3. Provide meaningful select options for dropdown fields
4. Test generated forms thoroughly before integration
5. Customize validation logic in the generated BLoC if needed
6. Use the generated state extensions for cleaner UI code


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