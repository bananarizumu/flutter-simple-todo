import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../route/app_router.gr.dart';
import '../../viewmodel/create_todo_view_model/create_todo_view_model.dart';
import '../widgets/multi_line_text_field.dart';
import '../widgets/single_line_text_field.dart';

class CreateTodoScreen extends HookConsumerWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final createTodoViewModel = ref.read(createTodoViewModelProvider.notifier);
    final todoListState = ref.watch(createTodoViewModelProvider);

    bool _isEnabled =
        todoListState.title.isNotEmpty && todoListState.detail.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: Text('Todoの作成'),
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
                validate: _titleController.text.isEmpty,
                onChanged: (String newValue) {
                  createTodoViewModel.setTitle(newValue);
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
                  createTodoViewModel.setDetail(newValue);
                },
              ),
              SizedBox(height: 4),
              ElevatedButton(
                child: const Text('Create'),
                onPressed: !_isEnabled
                    ? null
                    : () {
                        createTodoViewModel.saveTodo().then((value) {
                          AutoRouter.of(context).pop(HomeRoute.name);
                        });
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
