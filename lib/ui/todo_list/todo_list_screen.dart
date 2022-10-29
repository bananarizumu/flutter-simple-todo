import 'package:flutter/material.dart';
import 'package:flutter_simple_todo/ui/todo_list/widget/todo_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO APP"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            iconSize: 30.0,
            onPressed: () async {
              // TODO: 追加画面に遷移
            },
          )
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, n) {
            if (n.isOdd) {
              return Divider(color: Colors.blueGrey[300]);
            }
            return TodoCard();
          },
          // TODO
          itemCount: 3,
        ),
      ),
    );
  }
}
