import 'package:auto_route/annotations.dart';
import 'package:flutter_simple_todo/ui/create_todo/create_todo_screen.dart';
import 'package:flutter_simple_todo/ui/detail/todo_detail_screen.dart';

import '../ui/todo_list/todo_list_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, path: '/', initial: true),
    AutoRoute(page: CreateTodoScreen, path: '/create'),
    AutoRoute(page: TodoDetailScreen, path: '/detail'),
  ],
)
class $AppRouter {}
