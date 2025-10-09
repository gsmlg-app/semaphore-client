# API Client Brick

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A Mason brick for generating a complete API client package from OpenAPI/Swagger specifications with Dio, Retrofit, and JSON serialization support.

## Features ✨

- 🔧 **OpenAPI Integration**: Generate API clients from OpenAPI 3.0 specifications
- 🚀 **Modern Stack**: Uses Dio, Retrofit, and JSON serialization
- 📦 **Complete Setup**: Includes all necessary dependencies and configuration
- 🧪 **Testing Ready**: Includes test structure for API client
- 🔒 **Type Safety**: Strong typing with generated models and clients
- ⚙️ **Configurable**: Customizable generation options via swagger_parser

## Generated Structure 📁

```
{{package_name.snakeCase()}}/
├── lib/
│   ├── {{package_name.snakeCase()}}.dart
│   ├── src/
│   │   └── {{package_name.snakeCase()}}.dart
│   └── openapi.yaml              # Your OpenAPI specification
├── swagger_parser.yaml          # Code generation configuration
├── test/
│   └── {{package_name.snakeCase()}}_test.dart
└── pubspec.yaml
```

## Usage 🚀

### Basic Usage

```bash
mason make api_client --package_name your_api
```

### Example

```bash
mason make api_client --package_name user_api
```

This will generate a `user_api` package ready for your OpenAPI specification.

## Quick Start 🏃‍♂️

1. **Generate the API client package:**
   ```bash
   mason make api_client --package_name my_api
   ```

2. **Navigate to the generated package:**
   ```bash
   cd my_api
   ```

3. **Install dependencies:**
   ```bash
   flutter pub get
   ```

4. **Add your OpenAPI specification:**
   - Open `lib/openapi.yaml`
   - Replace with your OpenAPI 3.0 specification
   - Or copy your existing spec file to this location

5. **Generate the API client code:**
   ```bash
   dart run swagger_parser
   ```

6. **Use your generated API client:**
   ```dart
   import 'package:my_api/my_api.dart';

   final client = MyApiClient();
   final users = await client.getUsers();
   ```

## Configuration ⚙️

### swagger_parser.yaml

The generated `swagger_parser.yaml` file includes comprehensive configuration options:

```yaml
swagger_parser:
  schema_path: ./openapi.yaml          # Path to your OpenAPI spec
  output_directory: lib/src            # Output directory for generated files
  name: "{{package_name.pascalCase()}}" # API name
  language: dart                       # Target language
  json_serializer: json_serializable   # JSON serialization method
  root_client: true                    # Generate root client
  root_client_name: "{{package_name.pascalCase()}}" # Root client name
  export_file: true                    # Generate export file
  # ... many more options
```

### Key Configuration Options

| Option | Description | Default |
|--------|-------------|---------|
| `schema_path` | Path to OpenAPI specification | `./openapi.yaml` |
| `output_directory` | Directory for generated files | `lib/src` |
| `json_serializer` | JSON serialization method | `json_serializable` |
| `root_client` | Generate root client | `true` |
| `enums_to_json` | Include toJson() in enums | `false` |
| `original_http_response` | Wrap responses in HttpResponse | `false` |

## Dependencies 📦

The generated package includes these key dependencies:

```yaml
dependencies:
  dio: ^5.7.0                    # HTTP client
  json_annotation: ^4.9.0        # JSON serialization annotations
  freezed_annotation: ^3.0.0     # Immutable models
  retrofit: ^4.4.2               # Type-safe HTTP client

dev_dependencies:
  build_runner: any              # Code generation
  json_serializable: ^6.9.3      # JSON serialization generator
  freezed: ^3.0.6                # Immutable models generator
  swagger_parser: ^1.26.1        # OpenAPI parser
  retrofit_generator: ^9.1.9     # Retrofit generator
```

## Example OpenAPI Specification 📋

Here's a minimal OpenAPI 3.0 specification example:

```yaml
openapi: 3.0.0
info:
  title: User API
  version: 1.0.0
  description: User management API

servers:
  - url: https://api.example.com
    description: Production server

paths:
  /users:
    get:
      summary: Get all users
      operationId: getUsers
      responses:
        '200':
          description: List of users
          content:
            application/json:
              schema:
                type: array
                items:
                  $ref: '#/components/schemas/User'

    post:
      summary: Create a new user
      operationId: createUser
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/CreateUserRequest'
      responses:
        '201':
          description: User created
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/User'

components:
  schemas:
    User:
      type: object
      properties:
        id:
          type: integer
          format: int64
        name:
          type: string
        email:
          type: string
          format: email
      required:
        - id
        - name
        - email

    CreateUserRequest:
      type: object
      properties:
        name:
          type: string
        email:
          type: string
          format: email
      required:
        - name
        - email
```

## Authentication 🔐

### Adding Authentication

1. **Create an interceptor for authentication:**
   ```dart
   import 'package:dio/dio.dart';

   class AuthInterceptor extends Interceptor {
     @override
     void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
       // Add your authentication token
       options.headers['Authorization'] = 'Bearer YOUR_TOKEN';
       handler.next(options);
     }
   }
   ```

2. **Add the interceptor to your client:**
   ```dart
   final dio = Dio();
   dio.interceptors.add(AuthInterceptor());
   final client = MyApiClient(dio);
   ```

### Common Authentication Patterns

- **API Key**: Add to headers or query parameters
- **Bearer Token**: Add Authorization header
- **Basic Auth**: Use Base64 encoded credentials
- **OAuth 2.0**: Implement token refresh logic

## Testing 🧪

### Mocking API Calls

```dart
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  test('getUsers returns list of users', () async {
    final mockDio = MockDio();
    final client = MyApiClient(mockDio);

    when(() => mockDio.get('/users')).thenAnswer(
      (_) async => Response(
        data: [{'id': 1, 'name': 'John', 'email': 'john@example.com'}],
        statusCode: 200,
        requestOptions: RequestOptions(path: '/users'),
      ),
    );

    final users = await client.getUsers();
    expect(users, hasLength(1));
    expect(users.first.name, equals('John'));
  });
}
```

## Advanced Configuration 🚀

### Custom Serializers

Configure custom JSON serialization in `swagger_parser.yaml`:

```yaml
swagger_parser:
  json_serializer: json_serializable  # or freezed, dart_mappable
  use_freezed3: true                  # Use Freezed 3.x syntax
  enums_to_json: true                 # Include toJson in enums
  unknown_enum_value: true           # Handle unknown enum values
```

### Code Generation Options

```yaml
swagger_parser:
  replacement_rules:                 # Rename generated classes
    - pattern: "Api"
      replacement: ""

  skipped_parameters:               # Skip certain parameters
    - "X-Internal-Token"

  put_in_folder: true              # Organize in folders
  put_clients_in_folder: true      # Separate clients folder
  merge_clients: false             # Keep clients separate
```

## Variables 📋

| Variable | Description | Default | Required |
|----------|-------------|---------|----------|
| `package_name` | The name of your API client package | app_api | Yes |

## Best Practices Included ✅

- **Type Safety**: Strong typing with generated models
- **Error Handling**: Proper HTTP error handling
- **Serialization**: Efficient JSON serialization
- **Testing**: Test-friendly architecture
- **Documentation**: Comprehensive code documentation
- **Modern Stack**: Uses latest package versions

## Troubleshooting 🔧

### Common Issues

1. **Generation fails**: Check your OpenAPI specification syntax
2. **Import errors**: Run `flutter pub get` after generation
3. **Build errors**: Ensure all dependencies are compatible
4. **Runtime errors**: Check your base URL and authentication

### Debug Tips

- Use `dio.interceptors.add(LogInterceptor())` for debugging
- Check generated files in `lib/src/` directory
- Validate your OpenAPI spec with online validators
- Use `@Extras` annotation for custom headers
- Configure proper timeouts for slow APIs

---

_This brick was generated with [Mason](https://github.com/felangel/mason) 🧱_