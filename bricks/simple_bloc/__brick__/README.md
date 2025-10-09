# Bloc package {{name}}

## Getting started

Import package in project.

```yaml
{{name}}_bloc: any
```

## Usage

Import bloc in provider

```dart
import 'package:{{name.snakeCase()}}_bloc/{{name.snakeCase()}}_bloc.dart';


BlocProvider<{{name.pascalCase()}}Bloc>(
    create: (BuildContext context) => {{name.pascalCase()}}Bloc(),
),

```
