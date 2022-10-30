import 'package:flutter_simple_todo/data/model/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../repository/todo_repository.dart';

part 'todo_list_view_model.freezed.dart';

final todoListViewModelProvider =
    StateNotifierProvider.autoDispose<TodoListViewModel, TodoListState>(
  (ref) => TodoListViewModel(
    ref.watch(todoRepositoryProvider),
  ),
);

@freezed
class TodoListState with _$TodoListState {
  const factory TodoListState({
    @Default([]) List<Todo> todoList,
  }) = _TodoListState;
}

class TodoListViewModel extends StateNotifier<TodoListState> {
  final TodoRepository _todoRepository;

  TodoListViewModel(
    this._todoRepository,
  ) : super(const TodoListState());

  Future<void> fetchTodo() {
    return _todoRepository.getTodo().then((value) {
      state.copyWith(todoList: value);
    });
  }
}
