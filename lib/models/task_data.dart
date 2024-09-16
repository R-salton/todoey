import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';


class GetTask extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Eggs"),
    Task(name: "Buy Bread"),
    Task(name: "Buy Mac B"),
    Task(name: "Buy Mac B")
  ];

  List getTasks() {
    return tasks;
  }

  void addNewTask(String task) {
    tasks.add(Task(name: task));
  }
}
