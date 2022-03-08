// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Todo on _Todo, Store {
  final _$discriptionAtom = Atom(name: '_Todo.discription');

  @override
  String get discription {
    _$discriptionAtom.reportRead();
    return super.discription;
  }

  @override
  set discription(String value) {
    _$discriptionAtom.reportWrite(value, super.discription, () {
      super.discription = value;
    });
  }

  final _$doneAtom = Atom(name: '_Todo.done');

  @override
  bool get done {
    _$doneAtom.reportRead();
    return super.done;
  }

  @override
  set done(bool value) {
    _$doneAtom.reportWrite(value, super.done, () {
      super.done = value;
    });
  }

  @override
  String toString() {
    return '''
discription: ${discription},
done: ${done}
    ''';
  }
}
