import 'package:mobx/mobx.dart';
import 'todo.dart';

part 'todo_list.g.dart';

enum VisibilityFilter {all, pending, completed}

class TodoList = _TodoList with _$TodoList;

abstract class _TodoList with Store {
  _TodoList(this.todos);

  @observable
  ObservableList<Todo> todos = ObservableList<Todo>();

  @observable
  VisibilityFilter filter = VisibilityFilter.all;
  @action
  void initTodos() {
    for (var i = 0; i < 10; i++) {
      todos.add(Todo("Task - " + i.toString()));
    }
  }

  @action
  removeTodosAt(int index) {
    todos.removeAt(index);
  }

  @action
  addTodos(String des) {
    todos.add(Todo(des));
  }
}
