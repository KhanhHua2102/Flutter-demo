// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoList on _TodoList, Store {
  final _$todosAtom = Atom(name: '_TodoList.todos');

  @override
  ObservableList<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$filterAtom = Atom(name: '_TodoList.filter');

  @override
  VisibilityFilter get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(VisibilityFilter value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$_TodoListActionController = ActionController(name: '_TodoList');

  @override
  void initTodos() {
    final _$actionInfo =
        _$_TodoListActionController.startAction(name: '_TodoList.initTodos');
    try {
      return super.initTodos();
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeTodosAt(int index) {
    final _$actionInfo = _$_TodoListActionController.startAction(
        name: '_TodoList.removeTodosAt');
    try {
      return super.removeTodosAt(index);
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addTodos(String des) {
    final _$actionInfo =
        _$_TodoListActionController.startAction(name: '_TodoList.addTodos');
    try {
      return super.addTodos(des);
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos},
filter: ${filter}
    ''';
  }
}
