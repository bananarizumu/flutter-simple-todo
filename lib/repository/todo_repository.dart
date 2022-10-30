import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/model/todo.dart';

final firebasePod = Provider((_) => FirebaseFirestore.instance);
final todoRepositoryProvider =
    Provider((ref) => TodoRepositoryImpl(ref.read(firebasePod)));

abstract class TodoRepository {
  Future<List<Todo>> getTodo();
  Future<void> saveTodo(Todo todo);
}

class TodoRepositoryImpl implements TodoRepository {
  TodoRepositoryImpl(this._database);

  late final FirebaseFirestore _database;
  static const String _toDoCollection = 'todo';

  Future<List<Todo>> getTodo() async {
    final querySnapshot = await _database.collection(_toDoCollection).get();
    List<Todo> todoList = [];
    for (var item in querySnapshot.docs) {
      Map<String, dynamic> map = item.data();
      map["id"] = item.id;
      todoList.add(Todo.fromJson(map));
    }
    return todoList;
  }

  @override
  Future<void> saveTodo(Todo todo) async {
    if (todo.id != null) {
      await _database
          .collection(_toDoCollection)
          .doc(todo.id)
          .update(todo.toJson());
    } else {
      await _database.collection(_toDoCollection).add(todo.toJson());
      await _database
          .collection(_toDoCollection)
          .doc()
          .update({'todoSize': FieldValue.increment(1)});
    }
  }
}
