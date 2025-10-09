import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'schema.dart';
import 'item_state.dart';

part 'event.dart';
part 'state.dart';

/// {@template {{name.snakeCase()}}_list_repository}
/// Abstract repository interface for {{name.pascalCase()}} data operations.
/// This should be implemented by your data layer.
/// {@endtemplate}
abstract class {{name.pascalCase()}}ListRepository {
  /// Fetch all items (for non-paginated lists)
  Future<List<{{item_type.pascalCase()}}>> fetchAllItems();

  {{#has_pagination}}
  /// Fetch items with pagination
  Future<List<{{item_type.pascalCase()}}>> fetchItems({
    required int page,
    required int limit,
  });
  {{/has_pagination}}

  {{#has_crud}}
  /// Create a new item
  Future<{{item_type.pascalCase()}}> createItem({{item_type.pascalCase()}} item);

  /// Update an existing item
  Future<{{item_type.pascalCase()}}> updateItem(String id, {{item_type.pascalCase()}} item);

  /// Delete an item
  Future<void> deleteItem(String id);
  {{/has_pagination}}

  /// Fetch the schema configuration
  Future<{{name.pascalCase()}}ListSchema> fetchSchema();

  /// Save the schema configuration
  Future<void> saveSchema({{name.pascalCase()}}ListSchema schema);
}

/// {@template {{name.snakeCase()}}_list_bloc}
/// BLoC for managing {{name.pascalCase()}} list state with comprehensive features
/// including pagination, search, filtering, reordering, and individual item tracking.
/// {@endtemplate}
class {{name.pascalCase()}}ListBloc extends Bloc<{{name.pascalCase()}}ListEvent, {{name.pascalCase()}}ListState> {
  /// {@macro {{name.snakeCase()}}_list_bloc}
  {{name.pascalCase()}}ListBloc({
    {{name.pascalCase()}}ListRepository? repository,
  }) : _repository = repository ?? _Default{{name.pascalCase()}}ListRepository(),
       super({{name.pascalCase()}}ListState.initial()) {
    
    // Initialization events
    on<{{name.pascalCase()}}ListEventInitialize>(_onInitialize);
    on<{{name.pascalCase()}}ListEventRefresh>(_onRefresh);
    {{#has_pagination}}
    on<{{name.pascalCase()}}ListEventLoadMore>(_onLoadMore);
    {{/has_pagination}}
    
    // Schema events
    on<{{name.pascalCase()}}ListEventLoadSchema>(_onLoadSchema);
    on<{{name.pascalCase()}}ListEventUpdateSchema>(_onUpdateSchema);
    on<{{name.pascalCase()}}ListEventUpdateFieldSchema>(_onUpdateFieldSchema);
    on<{{name.pascalCase()}}ListEventReorderFields>(_onReorderFields);
    
    {{#has_search}}
    // Search events
    on<{{name.pascalCase()}}ListEventSearch>(_onSearch);
    on<{{name.pascalCase()}}ListEventClearSearch>(_onClearSearch);
    {{/has_search}}
    
    {{#has_filters}}
    // Filter events
    on<{{name.pascalCase()}}ListEventSetFilter>(_onSetFilter);
    on<{{name.pascalCase()}}ListEventRemoveFilter>(_onRemoveFilter);
    on<{{name.pascalCase()}}ListEventClearAllFilters>(_onClearAllFilters);
    {{/has_filters}}
    
    {{#has_reorder}}
    // Sort and reorder events
    on<{{name.pascalCase()}}ListEventSetSort>(_onSetSort);
    on<{{name.pascalCase()}}ListEventReorder>(_onReorder);
    {{/has_reorder}}
    
    // Item state events
    on<{{name.pascalCase()}}ListEventSelectItem>(_onSelectItem);
    on<{{name.pascalCase()}}ListEventToggleItemSelection>(_onToggleItemSelection);
    on<{{name.pascalCase()}}ListEventSelectAll>(_onSelectAll);
    on<{{name.pascalCase()}}ListEventClearSelection>(_onClearSelection);
    on<{{name.pascalCase()}}ListEventExpandItem>(_onExpandItem);
    on<{{name.pascalCase()}}ListEventEditItem>(_onEditItem);
    
    {{#has_crud}}
    // CRUD events
    on<{{name.pascalCase()}}ListEventAdd>(_onAdd);
    on<{{name.pascalCase()}}ListEventUpdate>(_onUpdate);
    on<{{name.pascalCase()}}ListEventDelete>(_onDelete);
    {{/has_crud}}
    
    // Batch operation events
    on<{{name.pascalCase()}}ListEventBatchDelete>(_onBatchDelete);
    on<{{name.pascalCase()}}ListEventBatchUpdate>(_onBatchUpdate);
    on<{{name.pascalCase()}}ListEventBatchSelect>(_onBatchSelect);
    on<{{name.pascalCase()}}ListEventBatchDeselect>(_onBatchDeselect);
  }

  final {{name.pascalCase()}}ListRepository _repository;
  
  {{#has_search}}
  Timer? _searchTimer;
  {{/has_search}}

  @override
  Future<void> close() {
    {{#has_search}}
    _searchTimer?.cancel();
    {{/has_search}}
    return super.close();
  }

  // ============================================================================
  // INITIALIZATION HANDLERS
  // ============================================================================

  /// Initialize the list with first page of data
  Future<void> _onInitialize(
    {{name.pascalCase()}}ListEventInitialize event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    if (state.isLoaded || state.isLoading) return; // Prevent duplicate initialization
    
    try {
      emit(state.copyWith(status: {{name.pascalCase()}}ListStatus.loading));
      
      {{#has_pagination}}
      final items = await _repository.fetchItems(page: 1, limit: state.pageSize);
      {{/has_pagination}}
      {{^has_pagination}}
      final items = await _repository.fetchAllItems();
      {{/has_pagination}}
      
      emit({{name.pascalCase()}}ListState.loaded(
        items: items,
        schema: state.schema,
        {{#has_pagination}}
        hasMore: items.length == state.pageSize,
        currentPage: 1,
        {{/has_pagination}}
      ));
    } catch (error, stackTrace) {
      emit({{name.pascalCase()}}ListState.error(error.toString()));
      addError(error, stackTrace);
    }
  }

  /// Refresh the entire list
  Future<void> _onRefresh(
    {{name.pascalCase()}}ListEventRefresh event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    try {
      emit(state.copyWith(status: {{name.pascalCase()}}ListStatus.refreshing));
      
      {{#has_pagination}}
      final items = await _repository.fetchItems(page: 1, limit: state.pageSize);
      {{/has_pagination}}
      {{^has_pagination}}
      final items = await _repository.fetchAllItems();
      {{/has_pagination}}
      
      // Re-apply existing filters and search after refresh
      emit(state.copyWith(
        status: {{name.pascalCase()}}ListStatus.loaded,
        items: items,
        {{#has_pagination}}
        hasMore: items.length == state.pageSize,
        currentPage: 1,
        {{/has_pagination}}
      ));
      
      // Re-apply filters and search if they exist
      {{#has_search}}
      if (state.hasSearchQuery) {
        add({{name.pascalCase()}}ListEventSearch(state.searchQuery));
      }
      {{/has_search}}
      
      {{#has_filters}}
      if (state.hasActiveFilters) {
        // Re-apply all active filters
        for (final filter in state.activeFilters) {
          add({{name.pascalCase()}}ListEventSetFilter(filter.type, filter.value, operator: filter.operator));
        }
      }
      {{/has_filters}}
      
    } catch (error, stackTrace) {
      emit(state.copyWith(
        status: {{name.pascalCase()}}ListStatus.error,
        error: error.toString(),
      ));
      addError(error, stackTrace);
    }
  }

  {{#has_pagination}}
  /// Load next page of data
  Future<void> _onLoadMore(
    {{name.pascalCase()}}ListEventLoadMore event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    if (!state.hasMore || state.isLoadingMore || state.isLoading) return;
    
    try {
      emit(state.copyWith(status: {{name.pascalCase()}}ListStatus.loadingMore));
      
      final newItems = await _repository.fetchItems(
        page: state.currentPage + 1,
        limit: state.pageSize,
      );
      
      final allItems = [...state.items, ...newItems];
      
      emit(state.copyWith(
        status: {{name.pascalCase()}}ListStatus.loaded,
        items: allItems,
        currentPage: state.currentPage + 1,
        hasMore: newItems.length == state.pageSize,
      ));
      
      // Re-apply filters and search to new data
      await _applyFiltersAndSearch(emit);
      
    } catch (error, stackTrace) {
      emit(state.copyWith(status: {{name.pascalCase()}}ListStatus.loaded));
      addError(error, stackTrace);
    }
  }
  {{/has_pagination}}

  // ============================================================================
  // SCHEMA MANAGEMENT HANDLERS
  // ============================================================================

  /// Load schema configuration
  Future<void> _onLoadSchema(
    {{name.pascalCase()}}ListEventLoadSchema event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    try {
      final schema = await _repository.fetchSchema();
      emit(state.copyWith(
        schema: schema,
        {{#has_pagination}}
        pageSize: schema.pageSize,
        {{/has_pagination}}
      ));
    } catch (error, stackTrace) {
      addError(error, stackTrace);
    }
  }

  /// Update entire schema
  Future<void> _onUpdateSchema(
    {{name.pascalCase()}}ListEventUpdateSchema event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    try {
      await _repository.saveSchema(event.schema);
      emit(state.copyWith(schema: event.schema));
    } catch (error, stackTrace) {
      addError(error, stackTrace);
    }
  }

  /// Update field schema
  Future<void> _onUpdateFieldSchema(
    {{name.pascalCase()}}ListEventUpdateFieldSchema event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final currentSchema = state.schema;
    if (currentSchema == null) return;

    final updatedFields = currentSchema.fields.map((field) {
      return field.id == event.fieldId ? event.fieldSchema : field;
    }).toList();

    final updatedSchema = currentSchema.copyWith(fields: updatedFields);
    
    emit(state.copyWith(schema: updatedSchema));
    
    try {
      await _repository.saveSchema(updatedSchema);
    } catch (error, stackTrace) {
      addError(error, stackTrace);
      // Revert on error
      emit(state.copyWith(schema: currentSchema));
    }
  }

  /// Reorder fields
  Future<void> _onReorderFields(
    {{name.pascalCase()}}ListEventReorderFields event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final currentSchema = state.schema;
    if (currentSchema == null) return;

    final updatedFields = <{{name.pascalCase()}}ListFieldSchema>[];
    for (int i = 0; i < event.fieldIds.length; i++) {
      final field = currentSchema.getFieldById(event.fieldIds[i]);
      if (field != null) {
        updatedFields.add(field.copyWith(order: i));
      }
    }

    // Add any fields not in the reorder list
    for (final field in currentSchema.fields) {
      if (!event.fieldIds.contains(field.id)) {
        updatedFields.add(field);
      }
    }

    final updatedSchema = currentSchema.copyWith(fields: updatedFields);
    
    emit(state.copyWith(schema: updatedSchema));
    
    try {
      await _repository.saveSchema(updatedSchema);
    } catch (error, stackTrace) {
      addError(error, stackTrace);
      // Revert on error
      emit(state.copyWith(schema: currentSchema));
    }
  }

  // ============================================================================
  // SEARCH HANDLERS
  // ============================================================================

  {{#has_search}}
  /// Handle search with debouncing
  Future<void> _onSearch(
    {{name.pascalCase()}}ListEventSearch event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    _searchTimer?.cancel();
    
    if (event.query.isEmpty) {
      add(const {{name.pascalCase()}}ListEventClearSearch());
      return;
    }
    
    emit(state.copyWith(
      searchQuery: event.query,
      isSearchLoading: true,
    ));
    
    _searchTimer = Timer(const Duration(milliseconds: 300), () async {
      try {
        emit(state.copyWith(status: {{name.pascalCase()}}ListStatus.filtering));
        await _applyFiltersAndSearch(emit);
      } catch (error, stackTrace) {
        addError(error, stackTrace);
      } finally {
        emit(state.copyWith(isSearchLoading: false));
      }
    });
  }

  /// Clear search and show all items
  Future<void> _onClearSearch(
    {{name.pascalCase()}}ListEventClearSearch event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    _searchTimer?.cancel();
    emit(state.copyWith(
      searchQuery: '',
      isSearchLoading: false,
    ));
    await _applyFiltersAndSearch(emit);
  }
  {{/has_search}}

  // ============================================================================
  // FILTER HANDLERS
  // ============================================================================

  {{#has_filters}}
  /// Set or update a filter
  Future<void> _onSetFilter(
    {{name.pascalCase()}}ListEventSetFilter event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final updatedFilters = <{{name.pascalCase()}}ListFilter>[];
    bool filterUpdated = false;

    // Check if filter already exists and update it
    for (final filter in state.activeFilters) {
      if (filter.type == event.filterType) {
        updatedFilters.add({{name.pascalCase()}}ListFilter(
          type: event.filterType,
          value: event.value,
          operator: event.operator,
        ));
        filterUpdated = true;
      } else {
        updatedFilters.add(filter);
      }
    }

    // Add new filter if it didn't exist
    if (!filterUpdated) {
      updatedFilters.add({{name.pascalCase()}}ListFilter(
        type: event.filterType,
        value: event.value,
        operator: event.operator,
      ));
    }

    emit(state.copyWith(
      activeFilters: updatedFilters,
      isFilterLoading: true,
    ));

    try {
      emit(state.copyWith(status: {{name.pascalCase()}}ListStatus.filtering));
      await _applyFiltersAndSearch(emit);
    } catch (error, stackTrace) {
      addError(error, stackTrace);
    } finally {
      emit(state.copyWith(isFilterLoading: false));
    }
  }

  /// Remove a specific filter
  Future<void> _onRemoveFilter(
    {{name.pascalCase()}}ListEventRemoveFilter event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final updatedFilters = state.activeFilters
        .where((filter) => filter.type != event.filterType)
        .toList();

    emit(state.copyWith(
      activeFilters: updatedFilters,
      isFilterLoading: true,
    ));

    try {
      await _applyFiltersAndSearch(emit);
    } catch (error, stackTrace) {
      addError(error, stackTrace);
    } finally {
      emit(state.copyWith(isFilterLoading: false));
    }
  }

  /// Clear all filters
  Future<void> _onClearAllFilters(
    {{name.pascalCase()}}ListEventClearAllFilters event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    emit(state.copyWith(
      activeFilters: [],
      isFilterLoading: true,
    ));

    try {
      await _applyFiltersAndSearch(emit);
    } catch (error, stackTrace) {
      addError(error, stackTrace);
    } finally {
      emit(state.copyWith(isFilterLoading: false));
    }
  }
  {{/has_filters}}

  // ============================================================================
  // SORT AND REORDER HANDLERS
  // ============================================================================

  {{#has_reorder}}
  /// Set sort configuration
  Future<void> _onSetSort(
    {{name.pascalCase()}}ListEventSetSort event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final newSort = {{name.pascalCase()}}ListSort(
      field: event.field,
      ascending: event.ascending,
    );

    emit(state.copyWith(sort: newSort));
    await _applyFiltersAndSearch(emit);
  }

  /// Handle item reordering
  Future<void> _onReorder(
    {{name.pascalCase()}}ListEventReorder event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    if (event.oldIndex < event.newIndex) {
      event.newIndex -= 1;
    }
    
    final List<{{item_type.pascalCase()}}> items = List.from(state.displayItems);
    final {{item_type.pascalCase()}} item = items.removeAt(event.oldIndex);
    items.insert(event.newIndex, item);
    
    // Update positions if needed
    final updatedItems = await _updateItemPositions(items);
    
    emit(state.copyWith(
      filteredItems: state.filteredItems.isEmpty ? updatedItems : updatedItems,
      items: state.filteredItems.isEmpty ? updatedItems : state.items,
    ));
    
    // Persist new order
    await _saveItemOrder(updatedItems);
  }
  {{/has_reorder}}

  // ============================================================================
  // ITEM STATE HANDLERS
  // ============================================================================

  /// Handle item selection
  Future<void> _onSelectItem(
    {{name.pascalCase()}}ListEventSelectItem event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final updatedSelection = List<String>.from(state.selectedItems);
    
    if (event.isSelected) {
      if (!updatedSelection.contains(event.itemId)) {
        updatedSelection.add(event.itemId);
      }
    } else {
      updatedSelection.remove(event.itemId);
    }

    emit(state.copyWith(
      selectedItems: updatedSelection,
      isMultiSelectMode: updatedSelection.length > 1,
    ));
  }

  /// Toggle item selection
  Future<void> _onToggleItemSelection(
    {{name.pascalCase()}}ListEventToggleItemSelection event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final updatedSelection = List<String>.from(state.selectedItems);
    
    if (updatedSelection.contains(event.itemId)) {
      updatedSelection.remove(event.itemId);
    } else {
      updatedSelection.add(event.itemId);
    }

    emit(state.copyWith(
      selectedItems: updatedSelection,
      isMultiSelectMode: updatedSelection.length > 1,
    ));
  }

  /// Select all visible items
  Future<void> _onSelectAll(
    {{name.pascalCase()}}ListEventSelectAll event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final visibleItemIds = state.displayItems.map((item) => item.id).toList();
    emit(state.copyWith(
      selectedItems: visibleItemIds,
      isMultiSelectMode: visibleItemIds.length > 1,
    ));
  }

  /// Clear all selections
  Future<void> _onClearSelection(
    {{name.pascalCase()}}ListEventClearSelection event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    emit(state.copyWith(
      selectedItems: [],
      isMultiSelectMode: false,
    ));
  }

  /// Handle item expansion
  Future<void> _onExpandItem(
    {{name.pascalCase()}}ListEventExpandItem event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final currentItemState = state.itemStates[event.itemId];
    if (currentItemState == null) return;

    final updatedItemStates = Map<String, {{name.pascalCase()}}ListItemState>.from(state.itemStates);
    updatedItemStates[event.itemId] = currentItemState.copyWith(isExpanded: event.isExpanded);

    emit(state.copyWith(itemStates: updatedItemStates));
  }

  /// Handle item edit mode
  Future<void> _onEditItem(
    {{name.pascalCase()}}ListEventEditItem event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final currentItemState = state.itemStates[event.itemId];
    if (currentItemState == null) return;

    final updatedItemStates = Map<String, {{name.pascalCase()}}ListItemState>.from(state.itemStates);
    updatedItemStates[event.itemId] = currentItemState.copyWith(isEditing: event.isEditing);

    emit(state.copyWith(itemStates: updatedItemStates));
  }

  // ============================================================================
  // CRUD HANDLERS
  // ============================================================================

  {{#has_crud}}
  /// Handle item addition
  Future<void> _onAdd(
    {{name.pascalCase()}}ListEventAdd event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    try {
      // Create optimistic item state
      final tempId = 'temp_${DateTime.now().millisecondsSinceEpoch}';
      final tempItemState = {{name.pascalCase()}}ListItemState(
        item: event.item.copyWith(id: tempId),
        isCreating: true,
      );

      final updatedItemStates = Map<String, {{name.pascalCase()}}ListItemState>.from(state.itemStates);
      updatedItemStates[tempId] = tempItemState;

      emit(state.copyWith(
        items: [...state.items, event.item.copyWith(id: tempId)],
        itemStates: updatedItemStates,
        status: {{name.pascalCase()}}ListStatus.processing,
      ));

      // Perform actual creation
      final createdItem = await _repository.createItem(event.item);

      // Update with real item
      final finalItemStates = Map<String, {{name.pascalCase()}}ListItemState>.from(updatedItemStates);
      finalItemStates.remove(tempId);
      finalItemStates[createdItem.id] = {{name.pascalCase()}}ListItemState(item: createdItem);

      final finalItems = state.items.map((item) => 
          item.id == tempId ? createdItem : item).toList();

      emit(state.copyWith(
        items: finalItems,
        itemStates: finalItemStates,
        status: {{name.pascalCase()}}ListStatus.loaded,
      ));

      await _applyFiltersAndSearch(emit);

    } catch (error, stackTrace) {
      emit(state.copyWith(
        status: {{name.pascalCase()}}ListStatus.error,
        error: error.toString(),
      ));
      addError(error, stackTrace);
    }
  }

  /// Handle item update
  Future<void> _onUpdate(
    {{name.pascalCase()}}ListEventUpdate event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final currentItemState = state.itemStates[event.id];
    if (currentItemState?.isProcessing == true) return;

    try {
      // Start updating state
      final updatedItemStates = Map<String, {{name.pascalCase()}}ListItemState>.from(state.itemStates);
      updatedItemStates[event.id] = (currentItemState ?? 
          {{name.pascalCase()}}ListItemState(item: state.items.firstWhere((item) => item.id == event.id)))
        .copyWith(isUpdating: true, updateError: null);

      emit(state.copyWith(
        itemStates: updatedItemStates,
        status: {{name.pascalCase()}}ListStatus.processing,
      ));

      // Perform update
      final updatedItem = await _repository.updateItem(event.id, event.item);
      
      // Update items list
      final updatedItems = state.items.map((item) => 
          item.id == event.id ? updatedItem : item).toList();

      // Update item state
      updatedItemStates[event.id] = updatedItemStates[event.id]!.copyWith(
        item: updatedItem,
        isUpdating: false,
        lastUpdated: DateTime.now(),
      );

      emit(state.copyWith(
        items: updatedItems,
        itemStates: updatedItemStates,
        status: {{name.pascalCase()}}ListStatus.loaded,
      ));

      // Re-apply filters if needed
      await _applyFiltersAndSearch(emit);

    } catch (error, stackTrace) {
      final updatedItemStates = Map<String, {{name.pascalCase()}}ListItemState>.from(state.itemStates);
      updatedItemStates[event.id] = updatedItemStates[event.id]!.copyWith(
        isUpdating: false,
        updateError: error.toString(),
      );

      emit(state.copyWith(
        itemStates: updatedItemStates,
        status: {{name.pascalCase()}}ListStatus.error,
        error: error.toString(),
      ));
      addError(error, stackTrace);
    }
  }

  /// Handle item deletion
  Future<void> _onDelete(
    {{name.pascalCase()}}ListEventDelete event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final currentItemState = state.itemStates[event.id];
    if (currentItemState?.isProcessing == true) return;

    try {
      // Start removing state
      final updatedItemStates = Map<String, {{name.pascalCase()}}ListItemState>.from(state.itemStates);
      updatedItemStates[event.id] = (currentItemState ?? 
          {{name.pascalCase()}}ListItemState(item: state.items.firstWhere((item) => item.id == event.id)))
        .copyWith(isRemoving: true, removeError: null);

      emit(state.copyWith(
        itemStates: updatedItemStates,
        status: {{name.pascalCase()}}ListStatus.processing,
      ));

      // Perform deletion
      await _repository.deleteItem(event.id);
      
      // Remove from items list
      final updatedItems = state.items.where((item) => item.id != event.id).toList();
      updatedItemStates.remove(event.id);

      // Remove from selection if selected
      final updatedSelection = state.selectedItems.where((id) => id != event.id).toList();

      emit(state.copyWith(
        items: updatedItems,
        itemStates: updatedItemStates,
        selectedItems: updatedSelection,
        isMultiSelectMode: updatedSelection.length > 1,
        status: {{name.pascalCase()}}ListStatus.loaded,
      ));

      // Re-apply filters if needed
      await _applyFiltersAndSearch(emit);

    } catch (error, stackTrace) {
      final updatedItemStates = Map<String, {{name.pascalCase()}}ListItemState>.from(state.itemStates);
      updatedItemStates[event.id] = updatedItemStates[event.id]!.copyWith(
        isRemoving: false,
        removeError: error.toString(),
      );

      emit(state.copyWith(
        itemStates: updatedItemStates,
        status: {{name.pascalCase()}}ListStatus.error,
        error: error.toString(),
      ));
      addError(error, stackTrace);
    }
  }
  {{/has_crud}}

  // ============================================================================
  // BATCH OPERATION HANDLERS
  // ============================================================================

  /// Handle batch delete
  Future<void> _onBatchDelete(
    {{name.pascalCase()}}ListEventBatchDelete event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final batchOperation = {{name.pascalCase()}}BatchOperation(
      type: {{name.pascalCase()}}BatchOperationType.delete,
      itemIds: event.itemIds,
      startedAt: DateTime.now(),
    );

    emit(state.copyWith(
      batchOperations: [...state.batchOperations, batchOperation],
      status: {{name.pascalCase()}}ListStatus.processing,
    ));

    try {
      for (final itemId in event.itemIds) {
        await _repository.deleteItem(itemId);
      }

      final updatedItems = state.items.where((item) => !event.itemIds.contains(item.id)).toList();
      final updatedSelection = state.selectedItems.where((id) => !event.itemIds.contains(id)).toList();

      emit(state.copyWith(
        items: updatedItems,
        selectedItems: updatedSelection,
        isMultiSelectMode: updatedSelection.length > 1,
        status: {{name.pascalCase()}}ListStatus.loaded,
      ));

      await _applyFiltersAndSearch(emit);

    } catch (error, stackTrace) {
      emit(state.copyWith(
        status: {{name.pascalCase()}}ListStatus.error,
        error: error.toString(),
      ));
      addError(error, stackTrace);
    }
  }

  /// Handle batch update
  Future<void> _onBatchUpdate(
    {{name.pascalCase()}}ListEventBatchUpdate event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final batchOperation = {{name.pascalCase()}}BatchOperation(
      type: {{name.pascalCase()}}BatchOperationType.update,
      itemIds: event.itemIds,
      data: event.data,
      startedAt: DateTime.now(),
    );

    emit(state.copyWith(
      batchOperations: [...state.batchOperations, batchOperation],
      status: {{name.pascalCase()}}ListStatus.processing,
    ));

    try {
      final updatedItems = <{{item_type.pascalCase()}}>[];
      
      for (final item in state.items) {
        if (event.itemIds.contains(item.id)) {
          final updatedItem = await _repository.updateItem(item.id, item.copyWith(event.data));
          updatedItems.add(updatedItem);
        } else {
          updatedItems.add(item);
        }
      }

      emit(state.copyWith(
        items: updatedItems,
        status: {{name.pascalCase()}}ListStatus.loaded,
      ));

      await _applyFiltersAndSearch(emit);

    } catch (error, stackTrace) {
      emit(state.copyWith(
        status: {{name.pascalCase()}}ListStatus.error,
        error: error.toString(),
      ));
      addError(error, stackTrace);
    }
  }

  /// Handle batch select
  Future<void> _onBatchSelect(
    {{name.pascalCase()}}ListEventBatchSelect event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final updatedSelection = {...state.selectedItems, ...event.itemIds}.toList();
    emit(state.copyWith(
      selectedItems: updatedSelection,
      isMultiSelectMode: updatedSelection.length > 1,
    ));
  }

  /// Handle batch deselect
  Future<void> _onBatchDeselect(
    {{name.pascalCase()}}ListEventBatchDeselect event,
    Emitter<{{name.pascalCase()}}ListState> emit,
  ) async {
    final updatedSelection = state.selectedItems.where((id) => !event.itemIds.contains(id)).toList();
    emit(state.copyWith(
      selectedItems: updatedSelection,
      isMultiSelectMode: updatedSelection.length > 1,
    ));
  }

  // ============================================================================
  // HELPER METHODS
  // ============================================================================

  /// Apply all filters and search to current items
  Future<void> _applyFiltersAndSearch(Emitter<{{name.pascalCase()}}ListState> emit) async {
    List<{{item_type.pascalCase()}}> result = List.from(state.items);
    
    // Apply search filter
    {{#has_search}}
    if (state.hasSearchQuery) {
      result = result.where((item) => _matchesSearch(item, state.searchQuery)).toList();
    }
    {{/has_search}}
    
    // Apply other filters
    {{#has_filters}}
    for (final filter in state.activeFilters) {
      result = result.where((item) => _matchesFilter(item, filter)).toList();
    }
    {{/has_filters}}
    
    // Apply sorting
    {{#has_reorder}}
    result = _applySorting(result, state.sort);
    {{/has_reorder}}
    
    emit(state.copyWith(
      filteredItems: result,
      status: {{name.pascalCase()}}ListStatus.loaded,
    ));
  }

  {{#has_search}}
  /// Check if item matches search query
  bool _matchesSearch({{item_type.pascalCase()}} item, String query) {
    // TODO: Implement search logic based on your item structure
    // This is a basic implementation - customize as needed
    final lowerQuery = query.toLowerCase();
    
    // Search in common fields
    if (item.name.toLowerCase().contains(lowerQuery)) return true;
    if (item.description?.toLowerCase().contains(lowerQuery) == true) return true;
    
    return false;
  }
  {{/has_search}}

  {{#has_filters}}
  /// Check if item matches filter
  bool _matchesFilter({{item_type.pascalCase()}} item, {{name.pascalCase()}}ListFilter filter) {
    // TODO: Implement filter logic based on your filter types
    // This is a basic implementation - customize as needed
    
    switch (filter.type) {
      case 'category':
        return item.category == filter.value;
      case 'status':
        return item.status == filter.value;
      case 'date':
        if (filter.value is DateTime) {
          final itemDate = item.createdAt;
          if (itemDate != null) {
            switch (filter.operator) {
              case 'equals':
                return itemDate.isAtSameMomentAs(filter.value);
              case 'greaterThan':
                return itemDate.isAfter(filter.value);
              case 'lessThan':
                return itemDate.isBefore(filter.value);
            }
          }
        }
        return false;
      default:
        return true;
    }
  }
  {{/has_filters}}

  {{#has_reorder}}
  /// Apply sorting to items
  List<{{item_type.pascalCase()}}> _applySorting(List<{{item_type.pascalCase()}}> items, {{name.pascalCase()}}ListSort sort) {
    final sortedItems = List<{{item_type.pascalCase()}}>.from(items);
    
    sortedItems.sort((a, b) {
      int comparison = 0;
      
      switch (sort.field) {
        case 'name':
          comparison = a.name.compareTo(b.name);
          break;
        case 'date':
          final aDate = a.createdAt ?? DateTime.now();
          final bDate = b.createdAt ?? DateTime.now();
          comparison = aDate.compareTo(bDate);
          break;
        case 'position':
          comparison = (a.position ?? 0).compareTo(b.position ?? 0);
          break;
        default:
          comparison = 0;
      }
      
      return sort.ascending ? comparison : -comparison;
    });
    
    return sortedItems;
  }

  /// Update item positions after reordering
  Future<List<{{item_type.pascalCase()}}>> _updateItemPositions(List<{{item_type.pascalCase()}}> items) async {
    // TODO: Implement position updates if your items have position field
    return items;
  }

  /// Save item order to persistence
  Future<void> _saveItemOrder(List<{{item_type.pascalCase()}}> items) async {
    // TODO: Implement order persistence if needed
  }
  {{/has_reorder}}
}

/// {@template {{name.snakeCase()}}_default_list_repository}
/// Default implementation of {{name.pascalCase()}}ListRepository.
/// Replace this with your actual implementation.
/// {@endtemplate}
class _Default{{name.pascalCase()}}ListRepository implements {{name.pascalCase()}}ListRepository {
  @override
  Future<List<{{item_type.pascalCase()}}>> fetchAllItems() async {
    // TODO: Implement actual data fetching
    await Future.delayed(const Duration(milliseconds: 500));
    return [];
  }

  {{#has_pagination}}
  @override
  Future<List<{{item_type.pascalCase()}}>> fetchItems({required int page, required int limit}) async {
    // TODO: Implement actual paginated data fetching
    await Future.delayed(const Duration(milliseconds: 500));
    return [];
  }
  {{/has_pagination}}

  {{#has_crud}}
  @override
  Future<{{item_type.pascalCase()}}> createItem({{item_type.pascalCase()}} item) async {
    // TODO: Implement actual item creation
    await Future.delayed(const Duration(milliseconds: 500));
    return item;
  }

  @override
  Future<{{item_type.pascalCase()}}> updateItem(String id, {{item_type.pascalCase()}} item) async {
    // TODO: Implement actual item update
    await Future.delayed(const Duration(milliseconds: 500));
    return item;
  }

  @override
  Future<void> deleteItem(String id) async {
    // TODO: Implement actual item deletion
    await Future.delayed(const Duration(milliseconds: 500));
  }
  {{/has_crud}}

  @override
  Future<{{name.pascalCase()}}ListSchema> fetchSchema() async {
    // TODO: Implement actual schema fetching or return default
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
        {{name.pascalCase()}}ListFieldSchema(
          id: 'description',
          name: 'description',
          type: {{name.pascalCase()}}FieldType.text,
          label: 'Description',
          isVisible: true,
          order: 1,
        ),
      ],
    );
  }

  @override
  Future<void> saveSchema({{name.pascalCase()}}ListSchema schema) async {
    // TODO: Implement actual schema saving
    await Future.delayed(const Duration(milliseconds: 200));
  }
}