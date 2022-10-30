import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_simple_todo/ui/todo_list/widget/todo_card.dart';
import 'package:flutter_simple_todo/viewmodel/todo_list_viewmodel/todo_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../route/app_router.gr.dart';

class HomeScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoListViewModel = ref.read(todoListViewModelProvider.notifier);
    final todoListState = ref.watch(todoListViewModelProvider);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          todoListViewModel.fetchTodo();
        });
      },
      const [],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO APP"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            iconSize: 30.0,
            onPressed: () async {
              AutoRouter.of(context)
                  .push(const CreateTodoRoute())
                  .then((value) {
                todoListViewModel.fetchTodo();
              });
              ;
            },
          )
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, n) {
            return GestureDetector(
              onTap: () async {
                await AutoRouter.of(context)
                    .push(TodoDetailRoute(
                  todo: todoListState.todoList[n],
                ))
                    .then((value) {
                  todoListViewModel.fetchTodo();
                });
                ;
              },
              // child: TodoCard(todoListState.todoList[n]),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                ),
                child: TodoCard(todoListState.todoList[n]),
              ),
            );
          },
          itemCount: todoListState.todoList.length,
        ),
      ),
    );
  }
}
