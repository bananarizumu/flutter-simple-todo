import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
abstract class Todo with _$Todo {
  factory Todo({
    int? id,
    String? title,
    String? detail,
  }) = _Todo;
}
