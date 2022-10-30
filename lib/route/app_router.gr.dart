// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../data/model/todo.dart' as _i6;
import '../ui/create_todo/create_todo_screen.dart' as _i2;
import '../ui/detail/todo_detail_screen.dart' as _i3;
import '../ui/todo_list/todo_list_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.HomeScreen(),
      );
    },
    CreateTodoRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.CreateTodoScreen(),
      );
    },
    TodoDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TodoDetailRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.TodoDetailScreen(args.todo),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          CreateTodoRoute.name,
          path: '/create',
        ),
        _i4.RouteConfig(
          TodoDetailRoute.name,
          path: '/detail',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.CreateTodoScreen]
class CreateTodoRoute extends _i4.PageRouteInfo<void> {
  const CreateTodoRoute()
      : super(
          CreateTodoRoute.name,
          path: '/create',
        );

  static const String name = 'CreateTodoRoute';
}

/// generated route for
/// [_i3.TodoDetailScreen]
class TodoDetailRoute extends _i4.PageRouteInfo<TodoDetailRouteArgs> {
  TodoDetailRoute({required _i6.Todo todo})
      : super(
          TodoDetailRoute.name,
          path: '/detail',
          args: TodoDetailRouteArgs(todo: todo),
        );

  static const String name = 'TodoDetailRoute';
}

class TodoDetailRouteArgs {
  const TodoDetailRouteArgs({required this.todo});

  final _i6.Todo todo;

  @override
  String toString() {
    return 'TodoDetailRouteArgs{todo: $todo}';
  }
}
