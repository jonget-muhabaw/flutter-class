import 'package:flutter/material.dart';

class TodosProvider extends ChangeNotifier {
  List<String> todos = [];
  addTodos(String todo) {
    todos.add(todo);
    notifyListeners();
  }

  removeTodos(int indx) {
    todos.removeAt(indx);
    notifyListeners();
  }
}
