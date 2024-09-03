// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Tasktile extends StatefulWidget {
  Tasktile({super.key, required this.checked, this.title});

  bool checked;
  final title;

  @override
  State<Tasktile> createState() => _TasktileState();
}

class _TasktileState extends State<Tasktile> {
  bool _isChecked = false;

  void checkBoxCallback(bool? checkBoxState) {
    setState(
      () {
        _isChecked = checkBoxState!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "${widget.title}",
        style: TextStyle(
            decoration:
                _isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: taskCheckBox(
        checkBoxState: _isChecked,
        toggleCheckBox: checkBoxCallback,
      ),
    );
  }
}

class taskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) toggleCheckBox;
  // ignore: prefer_const_constructors_in_immutables
  taskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBox, super.key});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.blueAccent,
        value: checkBoxState,
        onChanged: toggleCheckBox);
  }
}
