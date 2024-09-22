import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/tasktile.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class Tasklist extends StatelessWidget {
  const Tasklist({
    super.key,
    required this.checked,
    required this.tasksList,
  });

  final bool checked;
  final List<Task> tasksList;

  @override
  Widget build(BuildContext context) {
    return Consumer<GetTask>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return Tasktile(
                longPressCallback: () =>
                    taskData.deleteTask(taskData.gettasks[index]),
                taskTitle: taskData.gettasks[index].name,
                isChecked: taskData.gettasks[index].isDone,
                checkBoxCallback: (checkBoxState) {
                  taskData.updateTask(taskData.gettasks[index]);
                });
          },
          itemCount: taskData.getTaskNumber,
        );
      },
    );
  }
}
