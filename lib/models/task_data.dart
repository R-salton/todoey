import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class GetTask extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Eggs"),
    Task(name: "Buy Bread"),
    Task(name: "Buy Mac B"),
    Task(name: "Buy Mac B")
  ];

  UnmodifiableListView<Task> get gettasks {
    return UnmodifiableListView(_tasks);
  }

  void addNewTask(String task) {
    _tasks.add(Task(name: task));
    notifyListeners();
  }

  int get getTaskNumber {
    return _tasks.length;
  }

  void updateTask(Task taskState) {
    taskState.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task taskToDelete){
    _tasks.remove(taskToDelete);
    notifyListeners();
  }
}
