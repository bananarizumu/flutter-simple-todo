import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/model/todo.dart';

final firebasePod = Provider((_) => FirebaseFirestore.instance);
final todoRepositoryProvider =
    Provider((ref) => TodoRepositoryImpl(ref.read(firebasePod)));

abstract class TodoRepository {
  Future<List<Todo>> getTodo();
}

class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl(this._database);

  late final FirebaseFirestore _database;
  static const String _toDoCollection = 'todo';

  Future<List<Todo>> getTodo() async {
    final querySnapshot = await _database.collection(_toDoCollection).get();
    List<Todo> todoList = [];
    for (var item in querySnapshot.docs) {
      todoList.add(Todo.fromJson(item.data()));
    }
    return todoList;
  }
}

// final firebasePod = Provider((_) => FirebaseFirestore.instance);
// final todoServicePod = Provider<TodoService>((ref) {
//   return TodoService(ref.read(firebasePod));
// });
// final todoRepositoryPod = Provider<TodoRepository>(
//       (ref) => TodoRepository(ref.read(todoServicePod)),
// );
// final todoListPod = StreamProvider.family<List<Todo>>(
//       (ref, catId) => ref.watch(todoRepositoryPod).getTodosByCategory(),
// );
//
// class TodoRepository {
//   TodoRepository(this._todoService);
//   final TodoService _todoService;
//
//   Stream<List<Todo>> getTodosByCategory() => _todoService.getTodosByCategory();
// }
