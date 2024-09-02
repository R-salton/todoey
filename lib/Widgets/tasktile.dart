import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  Tasktile({super.key, required this.checked, this.title});

  bool checked;
  final title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("$title"),
      trailing: Checkbox(
        value: checked,
        onChanged: (value) {
          checked = value!;
        },
      ),
    );
  }
}
