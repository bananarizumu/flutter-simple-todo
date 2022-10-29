import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/multi_line_text_field.dart';
import '../widgets/single_line_text_field.dart';

class CreateTodoScreen extends HookConsumerWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool _isEnabled = false;

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
                validate: true,
              ),
              SizedBox(height: 4),
              MultiLineTextField(
                Icons.edit,
                '詳細',
                '詳細を入力してください',
                _detailController,
                validate: true,
              ),
              SizedBox(height: 4),
              ElevatedButton(
                child: const Text('Create'),
                onPressed: !_isEnabled
                    ? null
                    : () {
                        // 何かEnableの時の処理
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
