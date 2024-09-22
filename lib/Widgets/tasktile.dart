// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallback;
  final Function()? longPressCallback;
  const Tasktile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallback
      ,required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
     onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}

