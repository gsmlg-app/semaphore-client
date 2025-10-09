/// {{name.pascalCase()}} Repository - Data layer for {{name.sentenceCase()}} feature
///
/// This library provides the repository pattern implementation for managing
/// {{name.sentenceCase()}} data from multiple sources (API, local storage, etc.).
library {{name.snakeCase()}}_repository;

export 'src/repository.dart';
export 'src/models/{{name.snakeCase()}}_model.dart';
{{#has_remote_data_source}}
export 'src/data_sources/remote_data_source.dart';
{{/has_remote_data_source}}
{{#has_local_data_source}}
export 'src/data_sources/local_data_source.dart';
{{/has_local_data_source}}
export 'src/exceptions/exceptions.dart';