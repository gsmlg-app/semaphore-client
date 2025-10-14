/// {@template {{name.snakeCase()}}_form_events}
/// Custom events for {{name.pascalCase()}}FormBloc beyond the standard FormBloc events.
/// {@endtemplate}
abstract class {{name.pascalCase()}}FormEvent {
  /// {@macro {{name.snakeCase()}}_form_events}
  const {{name.pascalCase()}}FormEvent();
}

/// Event to clear all form fields
class ClearFormEvent extends {{name.pascalCase()}}FormEvent {
  /// {@macro {{name.snakeCase()}}_form_clear_event}
  const ClearFormEvent();
}

/// Event to populate form with initial data
class PopulateFormEvent extends {{name.pascalCase()}}FormEvent {
  /// {@macro {{name.snakeCase()}}_form_populate_event}
  const PopulateFormEvent({
{{#each fields}}
    {{#if (eq (split this ":").[1] "text")}}
    required this.{{split this ":".[0]}},
    {{else if (eq (split this ":").[1] "email")}}
    required this.{{split this ":".[0]}},
    {{else if (eq (split this ":").[1] "password")}}
    required this.{{split this ":".[0]}},
    {{else if (eq (split this ":").[1] "number")}}
    required this.{{split this ":".[0]}},
    {{else if (eq (split this ":").[1] "boolean")}}
    required this.{{split this ":".[0]}},
    {{else if (eq (split this ":").[1] "select")}}
    required this.{{split this ":".[0]}},
    {{else if (eq (split this ":").[1] "multiselect")}}
    required this.{{split this ":".[0]}},
    {{else if (eq (split this ":").[1] "date")}}
    required this.{{split this ":".[0]}},
    {{else if (eq (split this ":").[1] "file")}}
    this.{{split this ":".[0]}},
    {{else}}
    required this.{{split this ":".[0]}},
    {{/if}}
{{/each}}
  });

{{#each fields}}
  {{#if (eq (split this ":").[1] "text")}}
  /// Initial {{split this ":".[0]}} value
  final String {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "email")}}
  /// Initial {{split this ":".[0]}} value
  final String {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "password")}}
  /// Initial {{split this ":".[0]}} value
  final String {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "number")}}
  /// Initial {{split this ":".[0]}} value
  final String {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "boolean")}}
  /// Initial {{split this ":".[0]}} value
  final bool {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "select")}}
  /// Initial {{split this ":".[0]}} value
  final String? {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "multiselect")}}
  /// Initial {{split this ":".[0]}} value
  final List<String> {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "date")}}
  /// Initial {{split this ":".[0]}} value
  final DateTime {{split this ":".[0]}};
  {{else if (eq (split this ":").[1] "file")}}
  /// Initial {{split this ":".[0]}} value
  final dynamic {{split this ":".[0]}};
  {{else}}
  /// Initial {{split this ":".[0]}} value
  final String {{split this ":".[0]}};
  {{/if}}
{{/each}}
}

/// Event to validate specific field
class ValidateFieldEvent extends {{name.pascalCase()}}FormEvent {
  /// {@macro {{name.snakeCase()}}_form_validate_field_event}
  const ValidateFieldEvent(this.fieldName);

  /// Name of the field to validate
  final String fieldName;
}
