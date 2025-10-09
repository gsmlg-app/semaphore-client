part of 'bloc.dart';

/// {@template {{name.snakeCase()}}_list_event}
/// Base class for all {{name.pascalCase()}} list events.
/// {@endtemplate}
sealed class {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event}
  const {{name.pascalCase()}}ListEvent();
}

// ============================================================================
// INITIALIZATION EVENTS
// ============================================================================

/// {@template {{name.snakeCase()}}_list_event_initialize}
/// Event to initialize the list and load the first page of data.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventInitialize extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_initialize}
  const {{name.pascalCase()}}ListEventInitialize();
}

/// {@template {{name.snakeCase()}}_list_event_refresh}
/// Event to refresh the entire list from the data source.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventRefresh extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_refresh}
  const {{name.pascalCase()}}ListEventRefresh();
}

{{#has_pagination}}
/// {@template {{name.snakeCase()}}_list_event_load_more}
/// Event to load the next page of data.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventLoadMore extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_load_more}
  const {{name.pascalCase()}}ListEventLoadMore();
}
{{/has_pagination}}

// ============================================================================
// SCHEMA MANAGEMENT EVENTS
// ============================================================================

/// {@template {{name.snakeCase()}}_list_event_load_schema}
/// Event to load the schema configuration for the list.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventLoadSchema extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_load_schema}
  const {{name.pascalCase()}}ListEventLoadSchema();
}

/// {@template {{name.snakeCase()}}_list_event_update_schema}
/// Event to update the entire schema configuration.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventUpdateSchema extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_update_schema}
  const {{name.pascalCase()}}ListEventUpdateSchema(this.schema);

  /// The new schema configuration
  final {{name.pascalCase()}}ListSchema schema;
}

/// {@template {{name.snakeCase()}}_list_event_update_field_schema}
/// Event to update a specific field in the schema.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventUpdateFieldSchema extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_update_field_schema}
  const {{name.pascalCase()}}ListEventUpdateFieldSchema(this.fieldId, this.fieldSchema);

  /// ID of the field to update
  final String fieldId;
  
  /// New field schema configuration
  final {{name.pascalCase()}}ListFieldSchema fieldSchema;
}

/// {@template {{name.snakeCase()}}_list_event_reorder_fields}
/// Event to reorder the fields in the schema.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventReorderFields extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_reorder_fields}
  const {{name.pascalCase()}}ListEventReorderFields(this.fieldIds);

  /// New order of field IDs
  final List<String> fieldIds;
}

// ============================================================================
// SEARCH EVENTS
// ============================================================================

{{#has_search}}
/// {@template {{name.snakeCase()}}_list_event_search}
/// Event to search for items with the given query.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventSearch extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_search}
  const {{name.pascalCase()}}ListEventSearch(this.query);

  /// Search query string
  final String query;
}

/// {@template {{name.snakeCase()}}_list_event_clear_search}
/// Event to clear the current search query.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventClearSearch extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_clear_search}
  const {{name.pascalCase()}}ListEventClearSearch();
}
{{/has_search}}

// ============================================================================
// FILTER EVENTS
// ============================================================================

{{#has_filters}}
/// {@template {{name.snakeCase()}}_list_event_set_filter}
/// Event to set or update a filter.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventSetFilter extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_set_filter}
  const {{name.pascalCase()}}ListEventSetFilter(this.filterType, this.value, {this.operator = 'equals'});

  /// Type of filter (field name)
  final String filterType;
  
  /// Filter value
  final dynamic value;
  
  /// Filter operator
  final String operator;
}

/// {@template {{name.snakeCase()}}_list_event_remove_filter}
/// Event to remove a specific filter.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventRemoveFilter extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_remove_filter}
  const {{name.pascalCase()}}ListEventRemoveFilter(this.filterType);

  /// Type of filter to remove
  final String filterType;
}

/// {@template {{name.snakeCase()}}_list_event_clear_all_filters}
/// Event to clear all active filters.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventClearAllFilters extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_clear_all_filters}
  const {{name.pascalCase()}}ListEventClearAllFilters();
}
{{/has_filters}}

// ============================================================================
// SORT AND REORDER EVENTS
// ============================================================================

{{#has_reorder}}
/// {@template {{name.snakeCase()}}_list_event_set_sort}
/// Event to set the sort configuration.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventSetSort extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_set_sort}
  const {{name.pascalCase()}}ListEventSetSort(this.field, this.ascending);

  /// Field to sort by
  final String field;
  
  /// Sort direction (true for ascending)
  final bool ascending;
}

/// {@template {{name.snakeCase()}}_list_event_reorder}
/// Event to reorder items in the list.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventReorder extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_reorder}
  const {{name.pascalCase()}}ListEventReorder(this.oldIndex, this.newIndex);

  /// Original position of the item
  final int oldIndex;
  
  /// New position of the item
  final int newIndex;
}
{{/has_reorder}}

// ============================================================================
// ITEM STATE EVENTS
// ============================================================================

/// {@template {{name.snakeCase()}}_list_event_select_item}
/// Event to select or deselect an item.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventSelectItem extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_select_item}
  const {{name.pascalCase()}}ListEventSelectItem(this.itemId, this.isSelected);

  /// ID of the item to select/deselect
  final String itemId;
  
  /// Whether the item should be selected
  final bool isSelected;
}

/// {@template {{name.snakeCase()}}_list_event_toggle_item_selection}
/// Event to toggle the selection state of an item.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventToggleItemSelection extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_toggle_item_selection}
  const {{name.pascalCase()}}ListEventToggleItemSelection(this.itemId);

  /// ID of the item to toggle
  final String itemId;
}

/// {@template {{name.snakeCase()}}_list_event_select_all}
/// Event to select all visible items.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventSelectAll extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_select_all}
  const {{name.pascalCase()}}ListEventSelectAll();
}

/// {@template {{name.snakeCase()}}_list_event_clear_selection}
/// Event to clear all selected items.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventClearSelection extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_clear_selection}
  const {{name.pascalCase()}}ListEventClearSelection();
}

/// {@template {{name.snakeCase()}}_list_event_expand_item}
/// Event to expand or collapse an item.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventExpandItem extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_expand_item}
  const {{name.pascalCase()}}ListEventExpandItem(this.itemId, this.isExpanded);

  /// ID of the item to expand/collapse
  final String itemId;
  
  /// Whether the item should be expanded
  final bool isExpanded;
}

/// {@template {{name.snakeCase()}}_list_event_edit_item}
/// Event to set an item in edit mode.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventEditItem extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_edit_item}
  const {{name.pascalCase()}}ListEventEditItem(this.itemId, this.isEditing);

  /// ID of the item to edit
  final String itemId;
  
  /// Whether the item should be in edit mode
  final bool isEditing;
}

// ============================================================================
// CRUD EVENTS
// ============================================================================

{{#has_crud}}
/// {@template {{name.snakeCase()}}_list_event_add}
/// Event to add a new item to the list.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventAdd extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_add}
  const {{name.pascalCase()}}ListEventAdd(this.item);

  /// Item to add
  final {{item_type.pascalCase()}} item;
}

/// {@template {{name.snakeCase()}}_list_event_update}
/// Event to update an existing item.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventUpdate extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_update}
  const {{name.pascalCase()}}ListEventUpdate(this.id, this.item);

  /// ID of the item to update
  final String id;
  
  /// Updated item data
  final {{item_type.pascalCase()}} item;
}

/// {@template {{name.snakeCase()}}_list_event_delete}
/// Event to delete an item from the list.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventDelete extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_delete}
  const {{name.pascalCase()}}ListEventDelete(this.id);

  /// ID of the item to delete
  final String id;
}
{{/has_crud}}

// ============================================================================
// BATCH OPERATIONS EVENTS
// ============================================================================

/// {@template {{name.snakeCase()}}_list_event_batch_delete}
/// Event to delete multiple items at once.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventBatchDelete extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_batch_delete}
  const {{name.pascalCase()}}ListEventBatchDelete(this.itemIds);

  /// List of item IDs to delete
  final List<String> itemIds;
}

/// {@template {{name.snakeCase()}}_list_event_batch_update}
/// Event to update multiple items with the same data.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventBatchUpdate extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_batch_update}
  const {{name.pascalCase()}}ListEventBatchUpdate(this.itemIds, this.data);

  /// List of item IDs to update
  final List<String> itemIds;
  
  /// Data to update on each item
  final Map<String, dynamic> data;
}

/// {@template {{name.snakeCase()}}_list_event_batch_select}
/// Event to select multiple items at once.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventBatchSelect extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_batch_select}
  const {{name.pascalCase()}}ListEventBatchSelect(this.itemIds);

  /// List of item IDs to select
  final List<String> itemIds;
}

/// {@template {{name.snakeCase()}}_list_event_batch_deselect}
/// Event to deselect multiple items at once.
/// {@endtemplate}
final class {{name.pascalCase()}}ListEventBatchDeselect extends {{name.pascalCase()}}ListEvent {
  /// {@macro {{name.snakeCase()}}_list_event_batch_deselect}
  const {{name.pascalCase()}}ListEventBatchDeselect(this.itemIds);

  /// List of item IDs to deselect
  final List<String> itemIds;
}