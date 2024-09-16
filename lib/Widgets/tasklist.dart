import 'package:flutter/material.dart';
import 'package:todoey/Widgets/tasktile.dart';
import 'package:todoey/models/task.dart';

class Tasklist extends StatefulWidget {
  const Tasklist({
    super.key,
    required this.checked,
    required this.tasksList,
  });

  final bool checked;
  final List<Task> tasksList;

  @override
  State<Tasklist> createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Tasktile(
            taskTitle: widget.tasksList[index].name,
            isChecked: widget.tasksList[index].isDone,
            checkBoxCallback: (checkBoxState) {
              setState(() {
                widget.tasksList[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasksList.length,
    );
  }
}
