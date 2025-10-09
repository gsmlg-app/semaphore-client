import 'package:equatable/equatable.dart';

/// {@template {{name.snakeCase()}}_field_type}
/// Enumeration of supported field types for list items.
/// {@endtemplate}
enum {{name.pascalCase()}}FieldType {
  /// Plain text field
  text,
  
  /// Numeric field
  number,
  
  /// Date/time field
  date,
  
  /// Boolean field
  boolean,
  
  /// Image field
  image,
  
  /// URL field
  url,
  
  /// Email field
  email,
  
  /// Phone field
  phone,
  
  /// Single select field
  select,
  
  /// Multi-select field
  multiSelect,
  
  /// Custom field type
  custom,
}

/// {@template {{name.snakeCase()}}_list_display_mode}
/// Enumeration of supported display modes for the list.
/// {@endtemplate}
enum {{name.pascalCase()}}ListDisplayMode {
  /// Traditional list view
  list,
  
  /// Grid layout
  grid,
  
  /// Table layout
  table,
  
  /// Card layout
  cards,
}

/// {@template {{name.snakeCase()}}_list_field_schema}
/// Configuration for a single field in the list schema.
/// {@endtemplate}
class {{name.pascalCase()}}ListFieldSchema extends Equatable {
  /// {@macro {{name.snakeCase()}}_list_field_schema}
  const {{name.pascalCase()}}ListFieldSchema({
    required this.id,
    required this.name,
    required this.type,
    this.label,
    this.isVisible = true,
    this.isSortable = false,
    this.isFilterable = false,
    this.isEditable = false,
    this.width,
    this.order,
    this.alignment,
    this.format,
    this.validator,
  });

  /// Unique identifier for the field
  final String id;
  
  /// Field name (used for data access)
  final String name;
  
  /// Field type
  final {{name.pascalCase()}}FieldType type;
  
  /// Display label for the field
  final String? label;
  
  /// Whether the field is visible in the list
  final bool isVisible;
  
  /// Whether the field can be used for sorting
  final bool isSortable;
  
  /// Whether the field can be used for filtering
  final bool isFilterable;
  
  /// Whether the field can be edited inline
  final bool isEditable;
  
  /// Field width (for table layout)
  final double? width;
  
  /// Display order of the field
  final int? order;
  
  /// Text alignment for the field
  final Alignment? alignment;
  
  /// Format string for the field (date format, number format, etc.)
  final String? format;
  
  /// Validation rules for the field
  final String? validator;

  /// Creates a copy of this field schema with updated values
  {{name.pascalCase()}}ListFieldSchema copyWith({
    String? id,
    String? name,
    {{name.pascalCase()}}FieldType? type,
    String? label,
    bool? isVisible,
    bool? isSortable,
    bool? isFilterable,
    bool? isEditable,
    double? width,
    int? order,
    Alignment? alignment,
    String? format,
    String? validator,
  }) {
    return {{name.pascalCase()}}ListFieldSchema(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      label: label ?? this.label,
      isVisible: isVisible ?? this.isVisible,
      isSortable: isSortable ?? this.isSortable,
      isFilterable: isFilterable ?? this.isFilterable,
      isEditable: isEditable ?? this.isEditable,
      width: width ?? this.width,
      order: order ?? this.order,
      alignment: alignment ?? this.alignment,
      format: format ?? this.format,
      validator: validator ?? this.validator,
    );
  }

  @override
  List<Object?> get props => [
        id, name, type, label, isVisible, isSortable, 
        isFilterable, isEditable, width, order, alignment, format, validator
      ];
}

/// {@template {{name.snakeCase()}}_list_schema}
/// Complete schema configuration for the list display and behavior.
/// {@endtemplate}
class {{name.pascalCase()}}ListSchema extends Equatable {
  /// {@macro {{name.snakeCase()}}_list_schema}
  const {{name.pascalCase()}}ListSchema({
    required this.fields,
    this.defaultSortField,
    this.defaultSortDirection = true,
    this.pageSize = 20,
    this.allowReorder = false,
    this.allowMultiSelect = false,
    this.rowHeight,
    this.displayMode = {{name.pascalCase()}}ListDisplayMode.list,
  });

  /// List of field configurations
  final List<{{name.pascalCase()}}ListFieldSchema> fields;
  
  /// Default field to sort by
  final String? defaultSortField;
  
  /// Default sort direction (true for ascending, false for descending)
  final bool defaultSortDirection;
  
  /// Default page size for pagination
  final int pageSize;
  
  /// Whether items can be reordered
  final bool allowReorder;
  
  /// Whether multi-selection is allowed
  final bool allowMultiSelect;
  
  /// Row height for table layout
  final double? rowHeight;
  
  /// Display mode for the list
  final {{name.pascalCase()}}ListDisplayMode displayMode;

  /// Gets visible fields sorted by order
  List<{{name.pascalCase()}}ListFieldSchema> get visibleFields => 
      fields.where((field) => field.isVisible).toList()
        ..sort((a, b) => (a.order ?? 0).compareTo(b.order ?? 0));

  /// Gets sortable fields
  List<{{name.pascalCase()}}ListFieldSchema> get sortableFields => 
      fields.where((field) => field.isSortable).toList();

  /// Gets filterable fields
  List<{{name.pascalCase()}}ListFieldSchema> get filterableFields => 
      fields.where((field) => field.isFilterable).toList();

  /// Gets editable fields
  List<{{name.pascalCase()}}ListFieldSchema> get editableFields => 
      fields.where((field) => field.isEditable).toList();

  /// Finds a field by its ID
  {{name.pascalCase()}}ListFieldSchema? getFieldById(String id) {
    try {
      return fields.firstWhere((field) => field.id == id);
    } catch (e) {
      return null;
    }
  }

  /// Finds a field by its name
  {{name.pascalCase()}}ListFieldSchema? getFieldByName(String name) {
    try {
      return fields.firstWhere((field) => field.name == name);
    } catch (e) {
      return null;
    }
  }

  /// Creates a copy of this schema with updated values
  {{name.pascalCase()}}ListSchema copyWith({
    List<{{name.pascalCase()}}ListFieldSchema>? fields,
    String? defaultSortField,
    bool? defaultSortDirection,
    int? pageSize,
    bool? allowReorder,
    bool? allowMultiSelect,
    double? rowHeight,
    {{name.pascalCase()}}ListDisplayMode? displayMode,
  }) {
    return {{name.pascalCase()}}ListSchema(
      fields: fields ?? this.fields,
      defaultSortField: defaultSortField ?? this.defaultSortField,
      defaultSortDirection: defaultSortDirection ?? this.defaultSortDirection,
      pageSize: pageSize ?? this.pageSize,
      allowReorder: allowReorder ?? this.allowReorder,
      allowMultiSelect: allowMultiSelect ?? this.allowMultiSelect,
      rowHeight: rowHeight ?? this.rowHeight,
      displayMode: displayMode ?? this.displayMode,
    );
  }

  @override
  List<Object?> get props => [
        fields, defaultSortField, defaultSortDirection, pageSize,
        allowReorder, allowMultiSelect, rowHeight, displayMode
      ];
}