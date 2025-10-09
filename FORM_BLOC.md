# Form BLoC Guide

This guide provides comprehensive documentation for using the `form_bloc` and `flutter_form_bloc` packages in this Flutter project. These packages provide a powerful, BLoC-based approach to form management with validation, submission handling, and state management.

## Table of Contents

1. [Introduction](#introduction)
2. [Core Concepts](#core-concepts)
3. [Available Field Types](#available-field-types)
4. [Validation System](#validation-system)
5. [Form Submission](#form-submission)
6. [UI Integration Examples](#ui-integration-examples)
7. [Best Practices](#best-practices)
8. [Using the Form BLoC Brick](#using-the-form-bloc-brick)

## Introduction

### What is Form BLoC?

Form BLoC is a state management solution for forms that provides:
- **Reactive Form Management**: Real-time validation and state updates
- **Separation of Concerns**: Clean separation between UI logic and business logic
- **Type Safety**: Strongly typed form fields and values
- **Extensible Validation**: Built-in and custom validation support
- **Submission Handling**: Async submission with loading and error states

### Key Benefits

- 🚀 **Performance**: Optimized rendering with selective rebuilds
- 🧪 **Testability**: Easy to unit test form logic
- 🔄 **Reusability**: Reusable form components across the app
- 📱 **Responsive**: Works seamlessly with different screen sizes
- ♿ **Accessible**: Built with accessibility in mind

## Core Concepts

### FormBloc Architecture

```dart
abstract class FormBloc<String, String> extends Bloc<FormBlocEvent, FormBlocState<String, String>> {
  // Form fields management
  // Submission handling
  // Validation logic
}
```

### Key Components

1. **FieldBloc**: Individual form field management
2. **FormBloc**: Overall form state and logic
3. **FieldBlocBuilder**: UI widget for field rendering
4. **FormBlocListener**: Handles form state changes

### State Management Flow

```
User Input → FieldBloc → FormBloc → UI Update
     ↓                                    ↓
Validation ← FieldBlocBuilder ← FormBlocState
```

## Available Field Types

### Basic Input Fields

#### 1. TextFieldBloc - Text Input

**Use Case**: Single-line text input with validation

```dart
// In your FormBloc
final emailField = TextFieldBloc(
  name: 'email',
  validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.email,
  ],
);

// In your UI
TextFieldBlocBuilder(
  textFieldBloc: context.read<LoginFormBloc>().emailField,
  decoration: InputDecoration(
    labelText: 'Email',
    hintText: 'Enter your email',
  ),
  keyboardType: TextInputType.emailAddress,
)
```

**Available Properties**:
- `initialValue`: Starting value
- `validators`: List of validation functions
- `suggestions`: Text suggestions for autocomplete
- `asyncValidators`: Async validation functions

#### 2. InputFieldBloc - General Input

**Use Case**: Type-safe input for any data type

```dart
final ageField = InputFieldBloc<int, dynamic>(
  name: 'age',
  initialValue: 18,
  validators: [
    FieldBlocValidators.required,
    (value) => value != null && value >= 18 ? null : 'Must be 18+',
  ],
);
```

#### 3. BooleanFieldBloc - Toggle/Checkbox

**Use Case**: Boolean values, switches, and checkboxes

```dart
final agreeToTermsField = BooleanFieldBloc(
  name: 'agreeToTerms',
  initialValue: false,
  validators: [
    FieldBlocValidators.required,
  ],
);

// UI Implementation
CheckboxFieldBlocBuilder(
  booleanFieldBloc: formBloc.agreeToTermsField,
  body: Text('I agree to the terms and conditions'),
)

// Or as Switch
SwitchFieldBlocBuilder(
  booleanFieldBloc: formBloc.notificationsField,
  body: Text('Enable notifications'),
)
```

### Selection Fields

#### 4. SelectFieldBloc & DropdownFieldBlocBuilder

**Use Case**: Single selection from predefined options

```dart
final countryField = SelectFieldBloc<String, dynamic>(
  name: 'country',
  items: ['USA', 'Canada', 'UK', 'Australia'],
  initialValue: 'USA',
  validators: [FieldBlocValidators.required],
);

// UI Implementation
DropdownFieldBlocBuilder<String>(
  selectFieldBloc: formBloc.countryField,
  itemBuilder: (context, value) => Text(value),
  showEmptyItem: true,
  emptyItemLabel: 'Select a country',
)
```

#### 5. Multi-Select Fields

**Use Case**: Multiple selections from options

```dart
final interestsField = MultiSelectFieldBloc<String, dynamic>(
  name: 'interests',
  items: ['Sports', 'Music', 'Technology', 'Art'],
  validators: [
    (items) => items.isNotEmpty ? null : 'Select at least one interest',
  ],
);
```

### Group Fields

#### 6. CheckboxGroupFieldBlocBuilder

**Use Case**: Multiple checkbox selections

```dart
final featuresField = CheckboxGroupFieldBloc<bool, dynamic>(
  name: 'features',
  items: [
    FieldItem(value: 'wifi', label: 'WiFi'),
    FieldItem(value: 'parking', label: 'Parking'),
    FieldItem(value: 'pool', label: 'Pool'),
  ],
);

// UI Implementation
CheckboxGroupFieldBlocBuilder(
  checkboxGroupFieldBloc: formBloc.featuresField,
  itemBuilder: (context, item) => CheckboxListTile(
    title: Text(item.label),
    value: item.isSelected,
    onChanged: (value) => item.select(),
  ),
)
```

#### 7. RadioButtonGroupFieldBloc

**Use Case**: Single selection with radio buttons

```dart
final genderField = SelectFieldBloc<String, dynamic>(
  name: 'gender',
  items: ['Male', 'Female', 'Other'],
  validators: [FieldBlocValidators.required],
);

// UI Implementation
RadioButtonGroupFieldBloc(
  selectFieldBloc: formBloc.genderField,
  itemBuilder: (context, item) => RadioListTile<String>(
    title: Text(item),
    value: item,
    groupValue: formBloc.genderField.value,
    onChanged: (value) => formBloc.genderField.updateValue(value),
  ),
)
```

### Chip Fields

#### 8. ChoiceChipFieldBlocBuilder

**Use Case**: Single selection from chip options

```dart
final categoryField = SelectFieldBloc<String, dynamic>(
  name: 'category',
  items: ['Work', 'Personal', 'Family', 'Friends'],
  validators: [FieldBlocValidators.required],
);

// UI Implementation
ChoiceChipFieldBlocBuilder<String>(
  selectFieldBloc: formBloc.categoryField,
  itemBuilder: (context, value) => Chip(
    label: Text(value),
  ),
)
```

#### 9. FilterChipFieldBlocBuilder

**Use Case**: Multiple selections with chips

```dart
final tagsField = MultiSelectFieldBloc<String, dynamic>(
  name: 'tags',
  items: ['Urgent', 'Important', 'Follow-up', 'Review'],
);

// UI Implementation
FilterChipFieldBlocBuilder<String>(
  multiSelectFieldBloc: formBloc.tagsField,
  itemBuilder: (context, item) => FilterChip(
    label: Text(item),
    selected: item.isSelected,
    onSelected: (selected) => item.select(),
  ),
)
```

### Date and Time Fields

#### 10. DateTimeFieldBlocBuilder

**Use Case**: Date and time selection

```dart
final birthDateField = InputFieldBloc<DateTime, dynamic>(
  name: 'birthDate',
  validators: [FieldBlocValidators.required],
);

// UI Implementation
DateTimeFieldBlocBuilder(
  inputFieldBloc: formBloc.birthDateField,
  firstDate: DateTime(1900),
  lastDate: DateTime.now(),
  format: DateFormat('yyyy-MM-dd'),
  canSelectTime: false, // Date only
)
```

#### 11. TimeFieldBlocBuilder

**Use Case**: Time selection only

```dart
final appointmentTimeField = InputFieldBloc<TimeOfDay, dynamic>(
  name: 'appointmentTime',
  validators: [FieldBlocValidators.required],
);

// UI Implementation
TimeFieldBlocBuilder(
  inputFieldBloc: formBloc.appointmentTimeField,
  builder: (context, value) => Text(value?.format(context) ?? 'Select time'),
)
```

### Slider Fields

#### 12. SliderFieldBlocBuilder

**Use Case**: Numeric range selection

```dart
final budgetField = InputFieldBloc<double, dynamic>(
  name: 'budget',
  initialValue: 50.0,
  validators: [FieldBlocValidators.required],
);

// UI Implementation
SliderFieldBlocBuilder(
  inputFieldBloc: formBloc.budgetField,
  min: 0.0,
  max: 100.0,
  divisions: 10,
  valueBuilder: (value) => '$value%',
)
```

### Complex Components

#### 13. StepperFormBlocBuilder

**Use Case**: Multi-step forms

```dart
class RegistrationFormBloc extends FormBloc<String, String> {
  RegistrationFormBloc() : super() {
    // Step 1 fields
    addFieldBloc(emailField);
    addFieldBloc(passwordField);

    // Step 2 fields
    addFieldBloc(firstNameField);
    addFieldBloc(lastNameField);

    // Step 3 fields
    addFieldBloc(phoneField);
    addFieldBloc(addressField);
  }
}

// UI Implementation
StepperFormBlocBuilder(
  formBloc: context.read<RegistrationFormBloc>(),
  steps: [
    FormBlocStep(
      title: Text('Account'),
      content: Column(
        children: [
          TextFieldBlocBuilder(textFieldBloc: formBloc.emailField),
          TextFieldBlocBuilder(textFieldBloc: formBloc.passwordField),
        ],
      ),
    ),
    FormBlocStep(
      title: Text('Personal'),
      content: Column(
        children: [
          TextFieldBlocBuilder(textFieldBloc: formBloc.firstNameField),
          TextFieldBlocBuilder(textFieldBloc: formBloc.lastNameField),
        ],
      ),
    ),
    // ... more steps
  ],
)
```

## Validation System

### Built-in Validators

```dart
FieldBlocValidators.required           // Required field
FieldBlocValidators.email              // Email format
FieldBlocValidators.passwordMin6Chars  // Password minimum 6 characters
FieldBlocValidators.confirmPassword    // Password confirmation
```

### Custom Validators

```dart
// Simple custom validator
String? ageValidator(dynamic value) {
  if (value == null) return 'Age is required';
  if (value < 18) return 'Must be at least 18 years old';
  if (value > 120) return 'Please enter a valid age';
  return null;
}

// Async validator
Future<String?> usernameValidator(String? username) async {
  if (username == null || username.isEmpty) return 'Username is required';

  // Simulate API call
  await Future.delayed(Duration(seconds: 1));

  if (username == 'admin') return 'Username already taken';
  return null;
}

// Usage
final usernameField = TextFieldBloc(
  name: 'username',
  validators: [FieldBlocValidators.required, usernameValidator],
  asyncValidators: [usernameValidator],
);
```

### Validation Triggers

```dart
// Manual validation
emailField.validate();

// Validate all fields
validateAll();

// Clear validation errors
emailField.clearValidation();
```

## Form Submission

### Basic Submission Pattern

```dart
class LoginFormBloc extends FormBloc<String, String> {
  LoginFormBloc() : super() {
    addFieldBloc(emailField);
    addFieldBloc(passwordField);

    onSubmitting(_handleSubmit);
  }

  final emailField = TextFieldBloc(
    name: 'email',
    validators: [FieldBlocValidators.required, FieldBlocValidators.email],
  );

  final passwordField = TextFieldBloc(
    name: 'password',
    validators: [FieldBlocValidators.required],
  );

  Future<void> _handleSubmit() async {
    try {
      // Show loading state automatically

      // Perform login
      final result = await authService.login(
        email: emailField.value,
        password: passwordField.value,
      );

      // Success
      emitSuccess(successResponse: 'Login successful!');

    } catch (error) {
      // Failure
      emitFailure(failureResponse: error.toString());
    }
  }
}
```

### FormBlocListener for UI Updates

```dart
BlocProvider(
  create: (context) => LoginFormBloc(),
  child: Builder(
    builder: (context) {
      return FormBlocListener<LoginFormBloc, String, String>(
        onSubmitting: (context, state) {
          // Show loading dialog
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              content: Row(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 16),
                  Text('Logging in...'),
                ],
              ),
            ),
          );
        },
        onSuccess: (context, state) {
          // Hide loading dialog
          Navigator.of(context).pop();

          // Show success message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.successResponse!)),
          );

          // Navigate to next screen
          Navigator.of(context).pushReplacementNamed('/home');
        },
        onFailure: (context, state) {
          // Hide loading dialog
          Navigator.of(context).pop();

          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.failureResponse!),
              backgroundColor: Colors.red,
            ),
          );
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFieldBlocBuilder(
                textFieldBloc: context.read<LoginFormBloc>().emailField,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextFieldBlocBuilder(
                textFieldBloc: context.read<LoginFormBloc>().passwordField,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () => context.read<LoginFormBloc>().submit(),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      );
    },
  ),
)
```

## UI Integration Examples

### Complete Login Form Example

```dart
// login_form_bloc.dart
class LoginFormBloc extends FormBloc<String, String> {
  LoginFormBloc() : super() {
    addFieldBloc(emailField);
    addFieldBloc(passwordField);
    addFieldBloc(rememberMeField);

    onSubmitting(_handleSubmit);
  }

  final emailField = TextFieldBloc(
    name: 'email',
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.email,
    ],
  );

  final passwordField = TextFieldBloc(
    name: 'password',
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.passwordMin6Chars,
    ],
  );

  final rememberMeField = BooleanFieldBloc(
    name: 'rememberMe',
    initialValue: false,
  );

  Future<void> _handleSubmit() async {
    try {
      final result = await authService.login(
        email: emailField.value,
        password: passwordField.value,
        rememberMe: rememberMeField.value,
      );

      emitSuccess(successResponse: 'Welcome back!');
    } catch (error) {
      emitFailure(failureResponse: error.toString());
    }
  }
}

// login_screen.dart
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: BlocProvider(
        create: (context) => LoginFormBloc(),
        child: LoginView(),
      ),
    );
  }
}

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FormBlocListener<LoginFormBloc, String, String>(
      onSubmitting: (context, state) => _showLoadingDialog(context),
      onSuccess: (context, state) => _handleSuccess(context, state),
      onFailure: (context, state) => _handleFailure(context, state),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldBlocBuilder(
              textFieldBloc: context.read<LoginFormBloc>().emailField,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            TextFieldBlocBuilder(
              textFieldBloc: context.read<LoginFormBloc>().passwordField,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                suffixIcon: ObscureSuffixButton(
                  textFieldBloc: context.read<LoginFormBloc>().passwordField,
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            CheckboxFieldBlocBuilder(
              booleanFieldBloc: context.read<LoginFormBloc>().rememberMeField,
              body: Text('Remember me'),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.read<LoginFormBloc>().submit(),
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        content: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 16),
            Text('Logging in...'),
          ],
        ),
      ),
    );
  }

  void _handleSuccess(BuildContext context, FormBlocSuccessState<String, String> state) {
    Navigator.of(context).pop(); // Close loading dialog
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(state.successResponse!)),
    );
    Navigator.of(context).pushReplacementNamed('/home');
  }

  void _handleFailure(BuildContext context, FormBlocFailureState<String, String> state) {
    Navigator.of(context).pop(); // Close loading dialog
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(state.failureResponse!),
        backgroundColor: Colors.red,
      ),
    );
  }
}
```

### Multi-Step Registration Form

```dart
class RegistrationFormBloc extends FormBloc<String, String> {
  RegistrationFormBloc() : super() {
    // Account step
    addFieldBloc(emailField);
    addFieldBloc(passwordField);
    addFieldBloc(confirmPasswordField);

    // Personal step
    addFieldBloc(firstNameField);
    addFieldBloc(lastNameField);
    addFieldBloc(birthDateField);

    // Preferences step
    addFieldBloc(interestsField);
    addFieldBloc(newsletterField);

    onSubmitting(_handleSubmit);
  }

  // Account fields
  final emailField = TextFieldBloc(
    name: 'email',
    validators: [FieldBlocValidators.required, FieldBlocValidators.email],
  );

  final passwordField = TextFieldBloc(
    name: 'password',
    validators: [FieldBlocValidators.required, FieldBlocValidators.passwordMin6Chars],
  );

  final confirmPasswordField = TextFieldBloc(
    name: 'confirmPassword',
    validators: [
      FieldBlocValidators.required,
      (value) {
        if (value != passwordField.value) {
          return 'Passwords do not match';
        }
        return null;
      },
    ],
  );

  // Personal fields
  final firstNameField = TextFieldBloc(
    name: 'firstName',
    validators: [FieldBlocValidators.required],
  );

  final lastNameField = TextFieldBloc(
    name: 'lastName',
    validators: [FieldBlocValidators.required],
  );

  final birthDateField = InputFieldBloc<DateTime, dynamic>(
    name: 'birthDate',
    validators: [FieldBlocValidators.required],
  );

  // Preferences fields
  final interestsField = MultiSelectFieldBloc<String, dynamic>(
    name: 'interests',
    items: ['Sports', 'Music', 'Technology', 'Art', 'Travel'],
  );

  final newsletterField = BooleanFieldBloc(
    name: 'newsletter',
    initialValue: true,
  );

  Future<void> _handleSubmit() async {
    try {
      final userData = {
        'email': emailField.value,
        'password': passwordField.value,
        'firstName': firstNameField.value,
        'lastName': lastNameField.value,
        'birthDate': birthDateField.value,
        'interests': interestsField.value,
        'newsletter': newsletterField.value,
      };

      await authService.register(userData);
      emitSuccess(successResponse: 'Registration successful!');
    } catch (error) {
      emitFailure(failureResponse: error.toString());
    }
  }
}

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: BlocProvider(
        create: (context) => RegistrationFormBloc(),
        child: RegistrationView(),
      ),
    );
  }
}

class RegistrationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FormBlocListener<RegistrationFormBloc, String, String>(
      onSubmitting: (context, state) => _showLoadingDialog(context),
      onSuccess: (context, state) => _handleSuccess(context, state),
      onFailure: (context, state) => _handleFailure(context, state),
      child: StepperFormBlocBuilder(
        formBloc: context.read<RegistrationFormBloc>(),
        onStepContinue: () => _continueStep(context),
        onStepCancel: () => _cancelStep(context),
        steps: [
          // Account Step
          FormBlocStep(
            title: Text('Account'),
            content: Column(
              children: [
                TextFieldBlocBuilder(
                  textFieldBloc: context.read<RegistrationFormBloc>().emailField,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: context.read<RegistrationFormBloc>().passwordField,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: context.read<RegistrationFormBloc>().confirmPasswordField,
                  decoration: InputDecoration(labelText: 'Confirm Password'),
                  obscureText: true,
                ),
              ],
            ),
          ),
          // Personal Step
          FormBlocStep(
            title: Text('Personal'),
            content: Column(
              children: [
                TextFieldBlocBuilder(
                  textFieldBloc: context.read<RegistrationFormBloc>().firstNameField,
                  decoration: InputDecoration(labelText: 'First Name'),
                ),
                TextFieldBlocBuilder(
                  textFieldBloc: context.read<RegistrationFormBloc>().lastNameField,
                  decoration: InputDecoration(labelText: 'Last Name'),
                ),
                DateTimeFieldBlocBuilder(
                  inputFieldBloc: context.read<RegistrationFormBloc>().birthDateField,
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  format: DateFormat('yyyy-MM-dd'),
                  decoration: InputDecoration(labelText: 'Birth Date'),
                ),
              ],
            ),
          ),
          // Preferences Step
          FormBlocStep(
            title: Text('Preferences'),
            content: Column(
              children: [
                Text('Select your interests:'),
                SizedBox(height: 8),
                FilterChipFieldBlocBuilder<String>(
                  multiSelectFieldBloc: context.read<RegistrationFormBloc>().interestsField,
                  itemBuilder: (context, item) => FilterChip(
                    label: Text(item),
                    selected: item.isSelected,
                    onSelected: (selected) => item.select(),
                  ),
                ),
                SizedBox(height: 16),
                CheckboxFieldBlocBuilder(
                  booleanFieldBloc: context.read<RegistrationFormBloc>().newsletterField,
                  body: Text('Subscribe to newsletter'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _continueStep(BuildContext context) {
    final formBloc = context.read<RegistrationFormBloc>();
    final currentStep = StepperFormBlocBuilder.of(context).currentStep;

    if (currentStep == 2) {
      // Last step, submit form
      formBloc.submit();
    } else {
      // Continue to next step
      StepperFormBlocBuilder.of(context).continueStep();
    }
  }

  void _cancelStep(BuildContext context) {
    final currentStep = StepperFormBlocBuilder.of(context).currentStep;
    if (currentStep > 0) {
      StepperFormBlocBuilder.of(context).cancelStep();
    }
  }

  // Loading dialog and success/failure handlers similar to login example
  void _showLoadingDialog(BuildContext context) { /* ... */ }
  void _handleSuccess(BuildContext context, FormBlocSuccessState<String, String> state) { /* ... */ }
  void _handleFailure(BuildContext context, FormBlocFailureState<String, String> state) { /* ... */ }
}
```

## Best Practices

### 1. Form Organization

```dart
// ✅ Good: Organize related fields in logical groups
class UserProfileFormBloc extends FormBloc<String, String> {
  // Personal Information
  final firstNameField = TextFieldBloc(...);
  final lastNameField = TextFieldBloc(...);
  final birthDateField = InputFieldBloc<DateTime, dynamic>(...);

  // Contact Information
  final emailField = TextFieldBloc(...);
  final phoneField = TextFieldBloc(...);
  final addressField = TextFieldBloc(...);

  // Preferences
  final newsletterField = BooleanFieldBloc(...);
  final notificationsField = BooleanFieldBloc(...);
}
```

### 2. Validation Strategy

```dart
// ✅ Good: Combine multiple validators
final passwordField = TextFieldBloc(
  name: 'password',
  validators: [
    FieldBlocValidators.required,
    FieldBlocValidators.passwordMin6Chars,
    _customPasswordValidator,
  ],
);

String? _customPasswordValidator(String? value) {
  if (value == null) return null;

  if (!value.contains(RegExp(r'[A-Z]'))) {
    return 'Password must contain at least one uppercase letter';
  }

  if (!value.contains(RegExp(r'[0-9]'))) {
    return 'Password must contain at least one number';
  }

  return null;
}
```

### 3. Error Handling

```dart
// ✅ Good: Comprehensive error handling
Future<void> _handleSubmit() async {
  try {
    emitSubmitting();

    final result = await apiService.submitForm(getFormData());

    if (result.success) {
      emitSuccess(successResponse: 'Form submitted successfully!');
    } else {
      emitFailure(failureResponse: result.errorMessage ?? 'Submission failed');
    }
  } on NetworkException catch (e) {
    emitFailure(failureResponse: 'Network error: ${e.message}');
  } on ValidationException catch (e) {
    emitFailure(failureResponse: 'Validation error: ${e.message}');
  } catch (e) {
    emitFailure(failureResponse: 'An unexpected error occurred');
  }
}
```

### 4. Performance Optimization

```dart
// ✅ Good: Use BlocBuilder selectively
BlocBuilder<LoginFormBloc, FormBlocState<String, String>>(
  builder: (context, state) {
    // Only rebuild when specific fields change
    return Column(
      children: [
        TextFieldBlocBuilder(
          textFieldBloc: context.read<LoginFormBloc>().emailField,
          // This widget handles its own rebuilding
        ),
        if (state.isSubmitting)
          CircularProgressIndicator()
        else
          ElevatedButton(
            onPressed: () => context.read<LoginFormBloc>().submit(),
            child: Text('Submit'),
          ),
      ],
    );
  },
)
```

### 5. Testing Forms

```dart
// ✅ Good: Comprehensive test coverage
void main() {
  group('LoginFormBloc', () {
    late LoginFormBloc formBloc;

    setUp(() {
      formBloc = LoginFormBloc();
    });

    tearDown(() {
      formBloc.close();
    });

    test('initial state is correct', () {
      expect(formBloc.state.status, FormBlocStatus.initial);
    });

    test('validates email field', () {
      formBloc.emailField.updateValue('');
      expect(formBloc.emailField.state.isValid, isFalse);

      formBloc.emailField.updateValue('invalid-email');
      expect(formBloc.emailField.state.isValid, isFalse);

      formBloc.emailField.updateValue('valid@example.com');
      expect(formBloc.emailField.state.isValid, isTrue);
    });

    blocTest<LoginFormBloc, FormBlocState<String, String>>(
      'emits submitting and success when form is submitted successfully',
      build: () => formBloc,
      setUp: () {
        formBloc.emailField.updateValue('test@example.com');
        formBloc.passwordField.updateValue('password123');
      },
      act: (bloc) => bloc.submit(),
      expect: () => [
        isA<FormBlocState<String, String>>()
            .having((state) => state.status, 'status', FormBlocStatus.submitting),
        isA<FormBlocState<String, String>>()
            .having((state) => state.status, 'status', FormBlocStatus.success),
      ],
    );
  });
}
```

## Using the Form BLoC Brick

### Quick Start with Mason

The easiest way to create a new form is to use the `form_bloc` Mason brick:

```bash
# Basic login form
mason make form_bloc --name Login --output_directory app_bloc/auth

# Registration form with custom fields
mason make form_bloc --name Registration \
  --field_names "email,password,confirmPassword,firstName,lastName,birthDate" \
  --output_directory app_bloc/auth

# Contact form without submission
mason make form_bloc --name Contact \
  --field_names "name,email,subject,message" \
  --has_submission false \
  --output_directory app_bloc/contact
```

### Generated Structure

The brick creates a complete form package with:

```
app_bloc/login_form_bloc/
├── lib/
│   ├── src/
│   │   ├── bloc.dart      # Main FormBloc implementation
│   │   ├── event.dart     # Form events
│   │   └── state.dart     # Form state
│   └── login_form_bloc.dart
├── test/
│   └── login_form_bloc_test.dart
├── README.md
└── pubspec.yaml
```

### Post-Generation Customization

After generating the form, you'll typically need to:

1. **Implement submission logic** in the `_submitForm` method
2. **Add custom validators** for business-specific rules
3. **Create UI widgets** using the appropriate FieldBlocBuilders
4. **Add form to navigation** and dependency injection

### Integration with Existing Code

```dart
// In your screen or widget
BlocProvider(
  create: (context) => LoginFormBloc(),
  child: FormBlocListener<LoginFormBloc, String, String>(
    onSubmitting: (context, state) => showLoadingDialog(),
    onSuccess: (context, state) => navigateToHome(),
    onFailure: (context, state) => showErrorMessage(state.failureResponse!),
    child: LoginFormView(),
  ),
)
```

---

## Additional Resources

- [Official Form Bloc Documentation](https://pub.dev/packages/form_bloc)
- [Flutter Form Bloc Documentation](https://pub.dev/packages/flutter_form_bloc)
- [BLoC Library Documentation](https://pub.dev/packages/bloc)
- [Mason CLI Documentation](https://pub.dev/packages/mason_cli)

For specific questions or issues, refer to the package documentation or create an issue in the respective GitHub repositories.