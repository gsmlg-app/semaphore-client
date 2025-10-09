part of 'bloc.dart';

/// {@template {{name.snakeCase()}}_list_status}
/// Enumeration of possible list states.
/// {@endtemplate}
enum {{name.pascalCase()}}ListStatus {
  /// Initial state - no data has been requested yet
  initial,
  
  /// Loading the first page of data
  loading,
  
  /// Data has been loaded successfully
  loaded,
  
  /// Loading more data (pagination only)
  loadingMore,
  
  /// Refreshing existing data
  refreshing,
  
  /// Processing a search/filter operation
  filtering,
  
  /// Processing a CRUD operation
  processing,
  
  /// Error occurred during any operation
  error,
}

/// {@template {{name.snakeCase()}}_list_filter}
/// Represents a filter applied to the list.
/// {@endtemplate}
class {{name.pascalCase()}}ListFilter extends Equatable {
  /// {@macro {{name.snakeCase()}}_list_filter}
  const {{name.pascalCase()}}ListFilter({
    required this.type,
    required this.value,
    this.label,
    this.operator = 'equals',
  });

  /// Filter type (field name)
  final String type;
  
  /// Filter value
  final dynamic value;
  
  /// Display label for the filter
  final String? label;
  
  /// Filter operator (equals, contains, greaterThan, etc.)
  final String operator;

  @override
  List<Object?> get props => [type, value, label, operator];
}

{{#has_reorder}}
/// {@template {{name.snakeCase()}}_list_sort}
/// Configuration for list sorting.
/// {@endtemplate}
class {{name.pascalCase()}}ListSort extends Equatable {
  /// {@macro {{name.snakeCase()}}_list_sort}
  const {{name.pascalCase()}}ListSort({
    this.field = 'name',
    this.ascending = true,
  });

  /// Field to sort by
  final String field;
  
  /// Sort direction (true for ascending, false for descending)
  final bool ascending;

  @override
  List<Object?> get props => [field, ascending];
}
{{/has_reorder}}

/// {@template {{name.snakeCase()}}_list_state}
/// State for the {{name.pascalCase()}} list BLoC.
/// {@endtemplate}
class {{name.pascalCase()}}ListState extends Equatable {
  /// {@macro {{name.snakeCase()}}_list_state}
  const {{name.pascalCase()}}ListState({
    this.status = {{name.pascalCase()}}ListStatus.initial,
    this.items = const [],
    this.itemStates = const {},
    this.filteredItems = const [],
    this.schema,
    this.error,
    this.lastUpdated,
    {{#has_search}}
    this.searchQuery = '',
    this.isSearchLoading = false,
    {{/has_search}}
    {{#has_filters}}
    this.activeFilters = const [],
    this.isFilterLoading = false,
    {{/has_filters}}
    {{#has_reorder}}
    this.sort = const {{name.pascalCase()}}ListSort(),
    this.isReordering = false,
    {{/has_reorder}}
    {{#has_pagination}}
    this.hasMore = true,
    this.currentPage = 1,
    this.pageSize = 20,
    {{/has_pagination}}
    this.selectedItems = const [],
    this.isMultiSelectMode = false,
    this.batchOperations = const [],
  });

  /// Current status of the list
  final {{name.pascalCase()}}ListStatus status;
  
  /// All items in the list
  final List<{{item_type.pascalCase()}}> items;
  
  /// Individual item states tracking operations
  final Map<String, {{name.pascalCase()}}ListItemState> itemStates;
  
  /// Filtered items (after search and filters applied)
  final List<{{item_type.pascalCase()}}> filteredItems;
  
  /// Schema configuration for the list
  final {{name.pascalCase()}}ListSchema? schema;
  
  /// Error message if any operation failed
  final String? error;
  
  /// Timestamp of last state update
  final DateTime? lastUpdated;
  
  {{#has_search}}
  /// Current search query
  final String searchQuery;
  
  /// Whether search is currently loading
  final bool isSearchLoading;
  {{/has_search}}
  
  {{#has_filters}}
  /// List of active filters
  final List<{{name.pascalCase()}}ListFilter> activeFilters;
  
  /// Whether filters are currently loading
  final bool isFilterLoading;
  {{/has_filters}}
  
  {{#has_reorder}}
  /// Current sort configuration
  final {{name.pascalCase()}}ListSort sort;
  
  /// Whether reordering is in progress
  final bool isReordering;
  {{/has_reorder}}
  
  {{#has_pagination}}
  /// Whether there are more pages to load
  final bool hasMore;
  
  /// Current page number
  final int currentPage;
  
  /// Page size
  final int pageSize;
  {{/has_pagination}}
  
  /// List of selected item IDs
  final List<String> selectedItems;
  
  /// Whether multi-select mode is active
  final bool isMultiSelectMode;
  
  /// List of ongoing batch operations
  final List<{{name.pascalCase()}}BatchOperation> batchOperations;

  // Helper getters for UI state
  
  /// Whether the list is in initial state
  bool get isInitial => status == {{name.pascalCase()}}ListStatus.initial;
  
  /// Whether the list is currently loading
  bool get isLoading => status == {{name.pascalCase()}}ListStatus.loading;
  
  /// Whether the list has loaded data
  bool get isLoaded => status == {{name.pascalCase()}}ListStatus.loaded;
  
  /// Whether the list is loading more data
  bool get isLoadingMore => status == {{name.pascalCase()}}ListStatus.loadingMore;
  
  /// Whether the list is refreshing
  bool get isRefreshing => status == {{name.pascalCase()}}ListStatus.refreshing;
  
  /// Whether the list is filtering
  bool get isFiltering => status == {{name.pascalCase()}}ListStatus.filtering;
  
  /// Whether the list is processing CRUD operations
  bool get isProcessing => status == {{name.pascalCase()}}ListStatus.processing;
  
  /// Whether the list has an error
  bool get hasError => status == {{name.pascalCase()}}ListStatus.error;
  
  /// Whether the list has a schema configured
  bool get hasSchema => schema != null;
  
  /// Whether there are selected items
  bool get hasSelectedItems => selectedItems.isNotEmpty;
  
  /// Whether any item is currently processing
  bool get isProcessingAny => itemStates.values.any((state) => state.isProcessing);
  
  {{#has_search}}
  /// Whether there is an active search query
  bool get hasSearchQuery => searchQuery.isNotEmpty;
  {{/has_search}}
  
  {{#has_filters}}
  /// Whether there are active filters
  bool get hasActiveFilters => activeFilters.isNotEmpty;
  {{/has_filters}}
  
  /// Whether any operation is currently active
  bool get hasAnyActiveOperation => 
      isLoading || isLoadingMore || isRefreshing || isFiltering || isProcessing || isProcessingAny
      {{#has_search}}|| isSearchLoading{{/has_search}}
      {{#has_filters}}|| isFilterLoading{{/has_filters}}
      {{#has_reorder}}|| isReordering{{/has_reorder}};
  
  /// Gets the items to display (filtered or all)
  List<{{item_type.pascalCase()}}> get displayItems => 
      filteredItems.isEmpty ? items : filteredItems;
  
  /// Gets the item states for display items
  List<{{name.pascalCase()}}ListItemState> get displayItemStates {
    final displayItems = this.displayItems;
    return displayItems
        .map((item) => itemStates[item.id] ?? {{name.pascalCase()}}ListItemState(item: item))
        .toList();
  }
  
  /// Gets the state for a specific item
  {{name.pascalCase()}}ListItemState? getItemState(String itemId) {
    return itemStates[itemId];
  }
  
  /// Gets the selected items as full objects
  List<{{item_type.pascalCase()}}> get selectedItemList {
    return items.where((item) => selectedItems.contains(item.id)).toList();
  }
  
  /// Whether the display list is empty
  bool get isEmpty => displayItems.isEmpty;
  
  /// Whether the display list has items
  bool get isNotEmpty => displayItems.isNotEmpty;

  // Factory constructors for common states
  
  /// Creates an initial state
  factory {{name.pascalCase()}}ListState.initial() {
    return const {{name.pascalCase()}}ListState();
  }

  /// Creates a state with schema
  factory {{name.pascalCase()}}ListState.withSchema({
    required {{name.pascalCase()}}ListSchema schema,
  }) {
    return {{name.pascalCase()}}ListState(
      schema: schema,
      {{#has_pagination}}
      pageSize: schema.pageSize,
      {{/has_pagination}}
    );
  }

  /// Creates a loading state
  factory {{name.pascalCase()}}ListState.loading() {
    return const {{name.pascalCase()}}ListState(
      status: {{name.pascalCase()}}ListStatus.loading,
    );
  }

  /// Creates a loaded state with data
  factory {{name.pascalCase()}}ListState.loaded({
    required List<{{item_type.pascalCase()}}> items,
    {{name.pascalCase()}}ListSchema? schema,
    List<{{item_type.pascalCase()}}> filteredItems = const [],
    {{#has_pagination}}
    bool hasMore = true,
    int currentPage = 1,
    {{/has_pagination}}
  }) {
    final itemStates = <String, {{name.pascalCase()}}ListItemState>{};
    for (final item in items) {
      itemStates[item.id] = {{name.pascalCase()}}ListItemState(item: item);
    }

    return {{name.pascalCase()}}ListState(
      status: {{name.pascalCase()}}ListStatus.loaded,
      items: items,
      itemStates: itemStates,
      filteredItems: filteredItems.isEmpty ? items : filteredItems,
      schema: schema,
      lastUpdated: DateTime.now(),
      {{#has_pagination}}
      hasMore: hasMore,
      currentPage: currentPage,
      {{/has_pagination}}
    );
  }

  /// Creates an error state
  factory {{name.pascalCase()}}ListState.error(String error, { {{name.pascalCase()}}ListStatus? status }) {
    return {{name.pascalCase()}}ListState(
      status: status ?? {{name.pascalCase()}}ListStatus.error,
      error: error,
      lastUpdated: DateTime.now(),
    );
  }

  /// Creates a copy with updated values
  {{name.pascalCase()}}ListState copyWith({
    {{name.pascalCase()}}ListStatus? status,
    List<{{item_type.pascalCase()}}>? items,
    Map<String, {{name.pascalCase()}}ListItemState>? itemStates,
    List<{{item_type.pascalCase()}}>? filteredItems,
    {{name.pascalCase()}}ListSchema? schema,
    String? error,
    DateTime? lastUpdated,
    {{#has_search}}
    String? searchQuery,
    bool? isSearchLoading,
    {{/has_search}}
    {{#has_filters}}
    List<{{name.pascalCase()}}ListFilter>? activeFilters,
    bool? isFilterLoading,
    {{/has_filters}}
    {{#has_reorder}}
    {{name.pascalCase()}}ListSort? sort,
    bool? isReordering,
    {{/has_reorder}}
    {{#has_pagination}}
    bool? hasMore,
    int? currentPage,
    int? pageSize,
    {{/has_pagination}}
    List<String>? selectedItems,
    bool? isMultiSelectMode,
    List<{{name.pascalCase()}}BatchOperation>? batchOperations,
  }) {
    return {{name.pascalCase()}}ListState(
      status: status ?? this.status,
      items: items ?? this.items,
      itemStates: itemStates ?? this.itemStates,
      filteredItems: filteredItems ?? this.filteredItems,
      schema: schema ?? this.schema,
      error: error ?? this.error,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      {{#has_search}}
      searchQuery: searchQuery ?? this.searchQuery,
      isSearchLoading: isSearchLoading ?? this.isSearchLoading,
      {{/has_search}}
      {{#has_filters}}
      activeFilters: activeFilters ?? this.activeFilters,
      isFilterLoading: isFilterLoading ?? this.isFilterLoading,
      {{/has_filters}}
      {{#has_reorder}}
      sort: sort ?? this.sort,
      isReordering: isReordering ?? this.isReordering,
      {{/has_reorder}}
      {{#has_pagination}}
      hasMore: hasMore ?? this.hasMore,
      currentPage: currentPage ?? this.currentPage,
      pageSize: pageSize ?? this.pageSize,
      {{/has_pagination}}
      selectedItems: selectedItems ?? this.selectedItems,
      isMultiSelectMode: isMultiSelectMode ?? this.isMultiSelectMode,
      batchOperations: batchOperations ?? this.batchOperations,
    );
  }

  @override
  List<Object?> get props => [
        status, items, itemStates, filteredItems, schema, error, lastUpdated,
        {{#has_search}}searchQuery, isSearchLoading,{{/has_search}}
        {{#has_filters}}activeFilters, isFilterLoading,{{/has_filters}}
        {{#has_reorder}}sort, isReordering,{{/has_reorder}}
        {{#has_pagination}}hasMore, currentPage, pageSize,{{/has_pagination}}
        selectedItems, isMultiSelectMode, batchOperations
      ];
}