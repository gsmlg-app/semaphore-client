import 'package:equatable/equatable.dart';

/// {@template {{name.snakeCase()}}_list_item_state}
/// State for tracking individual item operations and UI state.
/// {@endtemplate}
class {{name.pascalCase()}}ListItemState extends Equatable {
  /// {@macro {{name.snakeCase()}}_list_item_state}
  const {{name.pascalCase()}}ListItemState({
    required this.item,
    this.isUpdating = false,
    this.isRemoving = false,
    this.isCreating = false,
    this.isSelected = false,
    this.isExpanded = false,
    this.isEditing = false,
    this.updateError,
    this.removeError,
    this.createError,
    this.lastUpdated,
    this.operationProgress = 0.0,
    this.tempData,
  });

  /// The actual item data
  final {{item_type.pascalCase()}} item;
  
  /// Whether the item is currently being updated
  final bool isUpdating;
  
  /// Whether the item is currently being removed
  final bool isRemoving;
  
  /// Whether the item is currently being created
  final bool isCreating;
  
  /// Whether the item is selected (for multi-select operations)
  final bool isSelected;
  
  /// Whether the item is expanded (for detailed view)
  final bool isExpanded;
  
  /// Whether the item is in edit mode
  final bool isEditing;
  
  /// Error message from last update operation
  final String? updateError;
  
  /// Error message from last remove operation
  final String? removeError;
  
  /// Error message from last create operation
  final String? createError;
  
  /// Timestamp of last state change
  final DateTime? lastUpdated;
  
  /// Progress of current operation (0.0 to 1.0)
  final double operationProgress;
  
  /// Temporary data during operations (for optimistic updates)
  final Map<String, dynamic>? tempData;

  /// Whether the item has any error
  bool get hasError => updateError != null || removeError != null || createError != null;
  
  /// Whether the item is currently processing any operation
  bool get isProcessing => isUpdating || isRemoving || isCreating;
  
  /// Whether the item can be edited
  bool get canEdit => !isProcessing && !isRemoving;
  
  /// Whether the item can be deleted
  bool get canDelete => !isProcessing && !isUpdating;
  
  /// Whether the item can be selected
  bool get canSelect => !isRemoving;
  
  /// Whether the item can be expanded
  bool get canExpand => !isRemoving;
  
  /// Gets the display item (uses temp data if available for optimistic updates)
  {{item_type.pascalCase()}} get displayItem => 
      tempData != null ? item.copyWith(tempData!) : item;

  /// Gets the current error message
  String? get currentError {
    if (updateError != null) return updateError;
    if (removeError != null) return removeError;
    if (createError != null) return createError;
    return null;
  }

  /// Creates a copy with updated values
  {{name.pascalCase()}}ListItemState copyWith({
    {{item_type.pascalCase()}}? item,
    bool? isUpdating,
    bool? isRemoving,
    bool? isCreating,
    bool? isSelected,
    bool? isExpanded,
    bool? isEditing,
    String? updateError,
    String? removeError,
    String? createError,
    DateTime? lastUpdated,
    double? operationProgress,
    Map<String, dynamic>? tempData,
    bool clearTempData = false,
  }) {
    return {{name.pascalCase()}}ListItemState(
      item: item ?? this.item,
      isUpdating: isUpdating ?? this.isUpdating,
      isRemoving: isRemoving ?? this.isRemoving,
      isCreating: isCreating ?? this.isCreating,
      isSelected: isSelected ?? this.isSelected,
      isExpanded: isExpanded ?? this.isExpanded,
      isEditing: isEditing ?? this.isEditing,
      updateError: updateError ?? this.updateError,
      removeError: removeError ?? this.removeError,
      createError: createError ?? this.createError,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      operationProgress: operationProgress ?? this.operationProgress,
      tempData: clearTempData ? null : (tempData ?? this.tempData),
    );
  }

  /// Creates a state with updating flag set
  {{name.pascalCase()}}ListItemState asUpdating({double progress = 0.0}) {
    return copyWith(
      isUpdating: true,
      updateError: null,
      operationProgress: progress,
      lastUpdated: DateTime.now(),
    );
  }

  /// Creates a state with removing flag set
  {{name.pascalCase()}}ListItemState asRemoving({double progress = 0.0}) {
    return copyWith(
      isRemoving: true,
      removeError: null,
      operationProgress: progress,
      lastUpdated: DateTime.now(),
    );
  }

  /// Creates a state with creating flag set
  {{name.pascalCase()}}ListItemState asCreating({double progress = 0.0}) {
    return copyWith(
      isCreating: true,
      createError: null,
      operationProgress: progress,
      lastUpdated: DateTime.now(),
    );
  }

  /// Creates a state with update error
  {{name.pascalCase()}}ListItemState withUpdateError(String error) {
    return copyWith(
      isUpdating: false,
      updateError: error,
      lastUpdated: DateTime.now(),
    );
  }

  /// Creates a state with remove error
  {{name.pascalCase()}}ListItemState withRemoveError(String error) {
    return copyWith(
      isRemoving: false,
      removeError: error,
      lastUpdated: DateTime.now(),
    );
  }

  /// Creates a state with create error
  {{name.pascalCase()}}ListItemState withCreateError(String error) {
    return copyWith(
      isCreating: false,
      createError: error,
      lastUpdated: DateTime.now(),
    );
  }

  /// Creates a state with successful update
  {{name.pascalCase()}}ListItemState withUpdateSuccess({{item_type.pascalCase()}}? updatedItem) {
    return copyWith(
      item: updatedItem ?? item,
      isUpdating: false,
      updateError: null,
      operationProgress: 1.0,
      lastUpdated: DateTime.now(),
      clearTempData: true,
    );
  }

  /// Creates a state with successful removal
  {{name.pascalCase()}}ListItemState withRemoveSuccess() {
    return copyWith(
      isRemoving: false,
      removeError: null,
      operationProgress: 1.0,
      lastUpdated: DateTime.now(),
    );
  }

  /// Creates a state with successful creation
  {{name.pascalCase()}}ListItemState withCreateSuccess({{item_type.pascalCase()}} createdItem) {
    return copyWith(
      item: createdItem,
      isCreating: false,
      createError: null,
      operationProgress: 1.0,
      lastUpdated: DateTime.now(),
      clearTempData: true,
    );
  }

  /// Toggles selection state
  {{name.pascalCase()}}ListItemState toggleSelection() {
    return copyWith(
      isSelected: !isSelected,
      lastUpdated: DateTime.now(),
    );
  }

  /// Toggles expansion state
  {{name.pascalCase()}}ListItemState toggleExpansion() {
    return copyWith(
      isExpanded: !isExpanded,
      lastUpdated: DateTime.now(),
    );
  }

  /// Sets edit mode
  {{name.pascalCase()}}ListItemState setEditMode(bool editing) {
    return copyWith(
      isEditing: editing,
      lastUpdated: DateTime.now(),
    );
  }

  /// Updates with optimistic data
  {{name.pascalCase()}}ListItemState withOptimisticUpdate(Map<String, dynamic> data) {
    return copyWith(
      tempData: {...?tempData, ...data},
      lastUpdated: DateTime.now(),
    );
  }

  @override
  List<Object?> get props => [
        item, isUpdating, isRemoving, isCreating, isSelected, isExpanded,
        isEditing, updateError, removeError, createError, lastUpdated, 
        operationProgress, tempData
      ];
}

/// {@template {{name.snakeCase()}}_batch_operation}
/// Represents a batch operation on multiple items.
/// {@endtemplate}
class {{name.pascalCase()}}BatchOperation extends Equatable {
  /// {@macro {{name.snakeCase()}}_batch_operation}
  const {{name.pascalCase()}}BatchOperation({
    required this.type,
    required this.itemIds,
    this.data,
    this.progress = 0.0,
    this.error,
    this.startedAt,
  });

  /// Type of batch operation
  final {{name.pascalCase()}}BatchOperationType type;
  
  /// List of item IDs to operate on
  final List<String> itemIds;
  
  /// Data for update operations
  final Map<String, dynamic>? data;
  
  /// Progress of the operation (0.0 to 1.0)
  final double progress;
  
  /// Error message if operation failed
  final String? error;
  
  /// When the operation started
  final DateTime? startedAt;

  /// Whether the operation is currently running
  bool get isRunning => progress > 0.0 && progress < 1.0 && error == null;
  
  /// Whether the operation completed successfully
  bool get isCompleted => progress >= 1.0 && error == null;
  
  /// Whether the operation failed
  bool get hasError => error != null;

  /// Creates a copy with updated values
  {{name.pascalCase()}}BatchOperation copyWith({
    {{name.pascalCase()}}BatchOperationType? type,
    List<String>? itemIds,
    Map<String, dynamic>? data,
    double? progress,
    String? error,
    DateTime? startedAt,
  }) {
    return {{name.pascalCase()}}BatchOperation(
      type: type ?? this.type,
      itemIds: itemIds ?? this.itemIds,
      data: data ?? this.data,
      progress: progress ?? this.progress,
      error: error ?? this.error,
      startedAt: startedAt ?? this.startedAt,
    );
  }

  @override
  List<Object?> get props => [type, itemIds, data, progress, error, startedAt];
}

/// {@template {{name.snakeCase()}}_batch_operation_type}
/// Types of batch operations that can be performed.
/// {@endtemplate}
enum {{name.pascalCase()}}BatchOperationType {
  /// Delete multiple items
  delete,
  
  /// Update multiple items
  update,
  
  /// Select multiple items
  select,
  
  /// Deselect multiple items
  deselect,
}