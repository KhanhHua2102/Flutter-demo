import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:login_button/Store/todo_list.dart';
import 'package:mobx/mobx.dart';
import 'Store/todo.dart';

class TodoListScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const TodoListScreen();

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @observable
  TodoList? todoList;

  @override
  Widget build(BuildContext context) {
    todoList?.initTodos;

    return Scaffold(
        appBar: AppBar(title: const Text("Todo List")),
        body: Center(
          child: ListViewBuilder(),
          ),
        );
  }

  Widget _ListViewBuilder() {
    return Observer(builder: (context) => ListView.separated(
      itemBuilder: (BuildContext context, int index) => _todo, 
      separatorBuilder: separatorBuilder, 
      itemCount: itemCount))
  }

}
