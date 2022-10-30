import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/model/todo.dart';
import '../../repository/todo_repository.dart';

part 'create_todo_view_model.freezed.dart';

final createTodoViewModelProvider =
    StateNotifierProvider.autoDispose<CreateTodoViewModel, CreateTodoState>(
  (ref) => CreateTodoViewModel(
    ref.watch(todoRepositoryProvider),
  ),
);

@freezed
class CreateTodoState with _$CreateTodoState {
  const factory CreateTodoState({
    @Default("") String title,
    @Default("") String detail,
  }) = _CreateTodoState;
}

class CreateTodoViewModel extends StateNotifier<CreateTodoState> {
  final TodoRepository _todoRepository;

  CreateTodoViewModel(
    this._todoRepository,
  ) : super(const CreateTodoState());

  void setTitle(String title) {
    this.state = state.copyWith(title: title);
  }

  void setDetail(String detail) {
    this.state = state.copyWith(detail: detail);
  }

  Future<void> saveTodo() async {
    try {
      await _todoRepository.saveTodo(
        Todo(id: null, title: state.title, detail: state.detail),
      );
    } catch (e) {
      print(e);
    }
  }
}
