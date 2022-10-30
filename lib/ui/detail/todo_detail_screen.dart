import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_simple_todo/viewmodel/todo_detail_view_model/todo_detail_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/model/todo.dart';
import '../../route/app_router.gr.dart';
import '../widgets/multi_line_text_field.dart';
import '../widgets/single_line_text_field.dart';

class TodoDetailScreen extends HookConsumerWidget {
  final Todo _todo;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _detailController = TextEditingController();

  TodoDetailScreen(
    this._todo,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoDetailViewModel = ref.read(todoDetailViewModelProvider.notifier);
    final todoDetailState = ref.watch(todoDetailViewModelProvider);
    bool _isEnabled = todoDetailState.title?.isNotEmpty == true &&
        todoDetailState.detail?.isNotEmpty == true;
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _titleController.text = _todo.title ?? "";
          _detailController.text = _todo.detail ?? "";
          print(
              "hgahgrhagh " + (_todo.title ?? "") + " " + (_todo.detail ?? ""));
        });
      },
      const [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(_todo.title ?? ""),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete),
            iconSize: 30.0,
            onPressed: () async {
              showDialog(
                context: context,
                builder: (context) {
                  return _deleteDialog(context, todoDetailViewModel);
                },
              );
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SingleLineTextField(
                Icons.title,
                'タイトル',
                'タイトルを入力してください',
                _titleController,
                validate: false,
                onChanged: (String newValue) {
                  todoDetailViewModel.setTitle(newValue);
                },
              ),
              SizedBox(height: 4),
              MultiLineTextField(
                Icons.edit,
                '詳細',
                '詳細を入力してください',
                _detailController,
                validate: false,
                onChanged: (String newValue) {
                  todoDetailViewModel.setDetail(newValue);
                },
              ),
              SizedBox(height: 4),
              ElevatedButton(
                child: const Text('Edit'),
                onPressed: !_isEnabled
                    ? null
                    : () async {
                        await todoDetailViewModel.saveTodo(_todo.id);
                        AutoRouter.of(context).pop(HomeRoute.name);
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _deleteDialog(BuildContext context, TodoDetailViewModel viewModel) {
    return AlertDialog(
      // title: Text("タイトル"),
      content: Text("本当に削除しますか？"),
      actions: <Widget>[
        // ボタン領域
        ElevatedButton(
          child: Text("Cancel"),
          onPressed: () => Navigator.pop(context),
        ),
        ElevatedButton(
          child: Text("OK"),
          onPressed: () async {
            await viewModel.deleteTodo(_todo.id);
            AutoRouter.of(context).pop(HomeRoute.name);
          },
        ),
      ],
    );
  }
}
