import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:{{name.snakeCase()}}_list_bloc/{{name.snakeCase()}}_list_bloc.dart';

// Mock classes for testing
class Mock{{name.pascalCase()}}ListRepository extends Mock implements {{name.pascalCase()}}ListRepository {}

class Mock{{item_type.pascalCase()}} extends Mock implements {{item_type.pascalCase()}} {}

void main() {
  group('{{name.pascalCase()}}ListBloc', () {
    late {{name.pascalCase()}}ListRepository mockRepository;
    late {{name.pascalCase()}}ListBloc bloc;
    late {{item_type.pascalCase()}} mockItem;

    setUp(() {
      mockRepository = Mock{{name.pascalCase()}}ListRepository();
      bloc = {{name.pascalCase()}}ListBloc(repository: mockRepository);
      
      mockItem = Mock{{item_type.pascalCase()}}();
      when(() => mockItem.id).thenReturn('test-id');
      when(() => mockItem.name).thenReturn('Test Item');
      when(() => mockItem.copyWith(any())).thenReturn(mockItem);
    });

    tearDown(() {
      bloc.close();
    });

    test('initial state is correct', () {
      expect(bloc.state, equals({{name.pascalCase()}}ListState.initial()));
    });

    group('Initialization', () {
      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'emits loading and loaded states when Initialize is added',
        setUp: () {
          when(() => mockRepository.fetchAllItems()).thenAnswer((_) async => [mockItem]);
        },
        build: () => bloc,
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventInitialize()),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.loading)),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.loaded))
            ..having((s) => s.items, 'items', hasLength(1)),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'emits error state when initialization fails',
        setUp: () {
          when(() => mockRepository.fetchAllItems()).thenThrow(Exception('Failed to load'));
        },
        build: () => bloc,
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventInitialize()),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.loading)),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.error))
            ..having((s) => s.error, 'error', isNotNull),
        ],
        errors: () => [isA<Exception>()],
      );

      test('does not initialize if already loaded', () {
        when(() => mockRepository.fetchAllItems()).thenAnswer((_) async => [mockItem]);
        
        // First initialization
        bloc.add(const {{name.pascalCase()}}ListEventInitialize());
        
        // Second initialization should not trigger another load
        bloc.add(const {{name.pascalCase()}}ListEventInitialize());
        
        verify(() => mockRepository.fetchAllItems()).called(1);
      });
    });

    {{#has_pagination}}
    group('Pagination', () {
      setUp(() {
        when(() => mockRepository.fetchItems(page: any(named: 'page'), limit: any(named: 'limit')))
            .thenAnswer((_) async => [mockItem]);
      });

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'emits loadingMore state when LoadMore is added',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(
          items: [mockItem],
          hasMore: true,
          currentPage: 1,
        ),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventLoadMore()),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.loadingMore)),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.loaded))
            ..having((s) => s.items, 'items', hasLength(2)),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'does not load more if hasMore is false',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(
          items: [mockItem],
          hasMore: false,
          currentPage: 1,
        ),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventLoadMore()),
        expect: () => [],
      );
    });
    {{/has_pagination}}

    group('Schema Management', () {
      final mockSchema = {{name.pascalCase()}}ListSchema(
        fields: [
          {{name.pascalCase()}}ListFieldSchema(
            id: 'name',
            name: 'name',
            type: {{name.pascalCase()}}FieldType.text,
          ),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'loads schema successfully',
        setUp: () {
          when(() => mockRepository.fetchSchema()).thenAnswer((_) async => mockSchema);
        },
        build: () => bloc,
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventLoadSchema()),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.schema, 'schema', equals(mockSchema)),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'updates schema successfully',
        setUp: () {
          when(() => mockRepository.saveSchema(any())).thenAnswer((_) async {});
        },
        build: () => bloc,
        act: (bloc) => bloc.add({{name.pascalCase()}}ListEventUpdateSchema(mockSchema)),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.schema, 'schema', equals(mockSchema)),
        ],
      );
    });

    {{#has_search}}
    group('Search', () {
      setUp(() {
        when(() => mockRepository.fetchAllItems()).thenAnswer((_) async => [mockItem]);
      });

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'performs search with debouncing',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) async {
          bloc.add(const {{name.pascalCase()}}ListEventSearch('test'));
          await Future.delayed(const Duration(milliseconds: 350)); // Wait for debounce
        },
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.searchQuery, 'searchQuery', equals('test'))
            ..having((s) => s.isSearchLoading, 'isSearchLoading', isTrue),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.filtering)),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.isSearchLoading, 'isSearchLoading', isFalse),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'clears search query',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(
          items: [mockItem],
          searchQuery: 'test',
        ),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventClearSearch()),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.searchQuery, 'searchQuery', isEmpty),
        ],
      );
    });
    {{/has_search}}

    {{#has_filters}}
    group('Filters', () {
      setUp(() {
        when(() => mockRepository.fetchAllItems()).thenAnswer((_) async => [mockItem]);
      });

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'sets filter successfully',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventSetFilter('category', 'test')),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.activeFilters, 'activeFilters', hasLength(1))
            ..having((s) => s.isFilterLoading, 'isFilterLoading', isTrue),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.filtering)),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.isFilterLoading, 'isFilterLoading', isFalse),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'removes filter successfully',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(
          items: [mockItem],
          activeFilters: [
            const {{name.pascalCase()}}ListFilter(type: 'category', value: 'test'),
          ],
        ),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventRemoveFilter('category')),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.activeFilters, 'activeFilters', isEmpty),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'clears all filters',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(
          items: [mockItem],
          activeFilters: [
            const {{name.pascalCase()}}ListFilter(type: 'category', value: 'test'),
            const {{name.pascalCase()}}ListFilter(type: 'status', value: 'active'),
          ],
        ),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventClearAllFilters()),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.activeFilters, 'activeFilters', isEmpty),
        ],
      );
    });
    {{/has_filters}}

    {{#has_reorder}}
    group('Sorting', () {
      setUp(() {
        when(() => mockRepository.fetchAllItems()).thenAnswer((_) async => [mockItem]);
      });

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'sets sort configuration',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventSetSort('name', false)),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.sort.field, 'sort.field', equals('name'))
            ..having((s) => s.sort.ascending, 'sort.ascending', isFalse),
        ],
      );
    });
    {{/has_reorder}}

    group('Item State Management', () {
      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'selects item successfully',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add({{name.pascalCase()}}ListEventSelectItem('test-id', true)),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.selectedItems, 'selectedItems', contains('test-id')),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'toggles item selection',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventToggleItemSelection('test-id')),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.selectedItems, 'selectedItems', contains('test-id')),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'selects all items',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventSelectAll()),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.selectedItems, 'selectedItems', hasLength(1)),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'clears selection',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(
          items: [mockItem],
          selectedItems: ['test-id'],
        ),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventClearSelection()),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.selectedItems, 'selectedItems', isEmpty),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'expands item',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add({{name.pascalCase()}}ListEventExpandItem('test-id', true)),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.getItemState('test-id')?.isExpanded, 'isExpanded', isTrue),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'sets item edit mode',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add({{name.pascalCase()}}ListEventEditItem('test-id', true)),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.getItemState('test-id')?.isEditing, 'isEditing', isTrue),
        ],
      );
    });

    {{#has_crud}}
    group('CRUD Operations', () {
      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'adds item successfully',
        setUp: () {
          when(() => mockRepository.createItem(any())).thenAnswer((_) async => mockItem);
        },
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: []),
        act: (bloc) => bloc.add({{name.pascalCase()}}ListEventAdd(mockItem)),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.processing))
            ..having((s) => s.items, 'items', hasLength(1)),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.loaded)),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'updates item successfully',
        setUp: () {
          when(() => mockRepository.updateItem(any(), any())).thenAnswer((_) async => mockItem);
        },
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add({{name.pascalCase()}}ListEventUpdate('test-id', mockItem)),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.processing)),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.loaded)),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'deletes item successfully',
        setUp: () {
          when(() => mockRepository.deleteItem(any())).thenAnswer((_) async {});
        },
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add(const {{name.pascalCase()}}ListEventDelete('test-id')),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.processing)),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.loaded))
            ..having((s) => s.items, 'items', isEmpty),
        ],
      );
    });
    {{/has_crud}}

    group('Batch Operations', () {
      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'batch selects items',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add({{name.pascalCase()}}ListEventBatchSelect(['test-id'])),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.selectedItems, 'selectedItems', contains('test-id')),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'batch deselects items',
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(
          items: [mockItem],
          selectedItems: ['test-id'],
        ),
        act: (bloc) => bloc.add({{name.pascalCase()}}ListEventBatchDeselect(['test-id'])),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.selectedItems, 'selectedItems', isEmpty),
        ],
      );

      {{#has_crud}}
      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'batch deletes items',
        setUp: () {
          when(() => mockRepository.deleteItem(any())).thenAnswer((_) async {});
        },
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add({{name.pascalCase()}}ListEventBatchDelete(['test-id'])),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.processing)),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.loaded))
            ..having((s) => s.items, 'items', isEmpty),
        ],
      );

      blocTest<{{name.pascalCase()}}ListBloc, {{name.pascalCase()}}ListState>(
        'batch updates items',
        setUp: () {
          when(() => mockRepository.updateItem(any(), any())).thenAnswer((_) async => mockItem);
        },
        build: () => bloc,
        seed: () => {{name.pascalCase()}}ListState.loaded(items: [mockItem]),
        act: (bloc) => bloc.add({{name.pascalCase()}}ListEventBatchUpdate(['test-id'], {'name': 'Updated'})),
        expect: () => [
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.processing)),
          isA<{{name.pascalCase()}}ListState>()
            ..having((s) => s.status, 'status', equals({{name.pascalCase()}}ListStatus.loaded)),
        ],
      );
      {{/has_crud}}
    });

    group('State Helpers', () {
      test('displayItems returns filtered items when available', () {
        final state = {{name.pascalCase()}}ListState.loaded(
          items: [mockItem],
          filteredItems: [],
        );
        expect(state.displayItems, equals([mockItem]));
      });

      test('displayItems returns all items when no filtered items', () {
        final state = {{name.pascalCase()}}ListState.loaded(
          items: [mockItem],
          filteredItems: [mockItem],
        );
        expect(state.displayItems, equals([mockItem]));
      });

      test('isEmpty returns true when displayItems is empty', () {
        final state = {{name.pascalCase()}}ListState.loaded(items: []);
        expect(state.isEmpty, isTrue);
      });

      test('isNotEmpty returns true when displayItems has items', () {
        final state = {{name.pascalCase()}}ListState.loaded(items: [mockItem]);
        expect(state.isNotEmpty, isTrue);
      });
    });
  });

  group('{{name.pascalCase()}}ListItemState', () {
    late {{item_type.pascalCase()}} mockItem;

    setUp(() {
      mockItem = Mock{{item_type.pascalCase()}}();
      when(() => mockItem.id).thenReturn('test-id');
      when(() => mockItem.name).thenReturn('Test Item');
      when(() => mockItem.copyWith(any())).thenReturn(mockItem);
    });

    test('creates initial state correctly', () {
      final state = {{name.pascalCase()}}ListItemState(item: mockItem);
      expect(state.item, equals(mockItem));
      expect(state.isUpdating, isFalse);
      expect(state.isRemoving, isFalse);
      expect(state.isSelected, isFalse);
    });

    test('copyWith creates updated state', () {
      final originalState = {{name.pascalCase()}}ListItemState(item: mockItem);
      final updatedState = originalState.copyWith(isSelected: true);
      
      expect(updatedState.isSelected, isTrue);
      expect(updatedState.item, equals(mockItem));
    });

    test('asUpdating sets correct flags', () {
      final state = {{name.pascalCase()}}ListItemState(item: mockItem);
      final updatingState = state.asUpdating();
      
      expect(updatingState.isUpdating, isTrue);
      expect(updatingState.updateError, isNull);
    });

    test('withUpdateSuccess clears updating flag', () {
      final state = {{name.pascalCase()}}ListItemState(item: mockItem).asUpdating();
      final successState = state.withUpdateSuccess();
      
      expect(successState.isUpdating, isFalse);
      expect(successState.updateError, isNull);
    });

    test('toggleSelection changes selection state', () {
      final state = {{name.pascalCase()}}ListItemState(item: mockItem);
      final selectedState = state.toggleSelection();
      
      expect(selectedState.isSelected, isTrue);
      
      final deselectedState = selectedState.toggleSelection();
      expect(deselectedState.isSelected, isFalse);
    });

    test('canEdit returns correct value', () {
      final normalState = {{name.pascalCase()}}ListItemState(item: mockItem);
      expect(normalState.canEdit, isTrue);
      
      final updatingState = normalState.asUpdating();
      expect(updatingState.canEdit, isFalse);
      
      final removingState = normalState.asRemoving();
      expect(removingState.canEdit, isFalse);
    });
  });

  group('{{name.pascalCase()}}ListSchema', () {
    test('visibleFields returns only visible fields sorted by order', () {
      final fields = [
        {{name.pascalCase()}}ListFieldSchema(
          id: 'field2',
          name: 'field2',
          type: {{name.pascalCase()}}FieldType.text,
          isVisible: true,
          order: 1,
        ),
        {{name.pascalCase()}}ListFieldSchema(
          id: 'field1',
          name: 'field1',
          type: {{name.pascalCase()}}FieldType.text,
          isVisible: true,
          order: 0,
        ),
        {{name.pascalCase()}}ListFieldSchema(
          id: 'field3',
          name: 'field3',
          type: {{name.pascalCase()}}FieldType.text,
          isVisible: false,
        ),
      ];

      final schema = {{name.pascalCase()}}ListSchema(fields: fields);
      final visibleFields = schema.visibleFields;

      expect(visibleFields, hasLength(2));
      expect(visibleFields[0].id, equals('field1'));
      expect(visibleFields[1].id, equals('field2'));
    });

    test('getFieldById returns correct field', () {
      final field = {{name.pascalCase()}}ListFieldSchema(
        id: 'test-field',
        name: 'test',
        type: {{name.pascalCase()}}FieldType.text,
      );
      final schema = {{name.pascalCase()}}ListSchema(fields: [field]);

      final foundField = schema.getFieldById('test-field');
      expect(foundField, equals(field));

      final notFoundField = schema.getFieldById('not-found');
      expect(notFoundField, isNull);
    });
  });

  group('{{name.pascalCase()}}BatchOperation', () {
    test('creates operation correctly', () {
      final operation = {{name.pascalCase()}}BatchOperation(
        type: {{name.pascalCase()}}BatchOperationType.delete,
        itemIds: ['id1', 'id2'],
      );

      expect(operation.type, equals({{name.pascalCase()}}BatchOperationType.delete));
      expect(operation.itemIds, equals(['id1', 'id2']));
      expect(operation.isRunning, isFalse);
      expect(operation.isCompleted, isFalse);
      expect(operation.hasError, isFalse);
    });

    test('progress states work correctly', () {
      final runningOperation = {{name.pascalCase()}}BatchOperation(
        type: {{name.pascalCase()}}BatchOperationType.delete,
        itemIds: ['id1'],
        progress: 0.5,
      );
      expect(runningOperation.isRunning, isTrue);

      final completedOperation = runningOperation.copyWith(progress: 1.0);
      expect(completedOperation.isRunning, isFalse);
      expect(completedOperation.isCompleted, isTrue);

      final errorOperation = runningOperation.copyWith(error: 'Failed');
      expect(errorOperation.isRunning, isFalse);
      expect(errorOperation.hasError, isTrue);
    });
  });
}