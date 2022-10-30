import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/model/todo.dart';
import '../../repository/todo_repository.dart';

part 'todo_detail_view_model.freezed.dart';

final todoDetailViewModelProvider =
    StateNotifierProvider.autoDispose<TodoDetailViewModel, TodoDetailState>(
  (ref) => TodoDetailViewModel(
    ref.watch(todoRepositoryProvider),
  ),
);

@freezed
class TodoDetailState with _$TodoDetailState {
  const factory TodoDetailState({
    @Default("") String? id,
    @Default("") String? title,
    @Default("") String? detail,
  }) = _TodoDetailState;
}

class TodoDetailViewModel extends StateNotifier<TodoDetailState> {
  final TodoRepository _todoRepository;

  TodoDetailViewModel(
    this._todoRepository,
  ) : super(const TodoDetailState());

  void setTodo(Todo todo) {
    state = state.copyWith(id: todo.id, title: todo.title, detail: todo.detail);
  }

  void setTitle(String title) {
    this.state = state.copyWith(title: title);
  }

  void setDetail(String detail) {
    this.state = state.copyWith(detail: detail);
  }

  Future<void> saveTodo(String? id) async {
    try {
      await _todoRepository.saveTodo(
        Todo(id: id, title: state.title, detail: state.title),
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteTodo(String? id) async {
    if (id != null) {
      await _todoRepository.deleteTodo(id);
    }
  }
}
