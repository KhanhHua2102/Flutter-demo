import 'package:mobx/mobx.dart';

part 'todo.g.dart';

class Todo = _Todo with _$Todo;

abstract class _Todo with Store {
  _Todo(this.discription);

  @observable
  String discription = '';

  @observable
  bool done = false;
}
