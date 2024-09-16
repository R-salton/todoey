// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallback;
  const Tasktile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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

// class taskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function(bool?) toggleCheckBox;
//   // ignore: prefer_const_constructors_in_immutables
//   taskCheckBox(
//       {required this.checkBoxState, required this.toggleCheckBox, super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         activeColor: Colors.blueAccent,
//         value: checkBoxState,
//         onChanged: toggleCheckBox);
//   }
// }
