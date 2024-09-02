import 'package:flutter/material.dart';
import 'package:todoey/Widgets/tasktile.dart';

class Tasklist extends StatelessWidget {
  const Tasklist({
    super.key,
    required this.checked,
  });

  final bool checked;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Tasktile(
          checked: checked,
          title: "Buy Coffee",
        ),
        Tasktile(
          checked: checked,
          title: "Code mastery",
        ),
        Tasktile(
          checked: checked,
          title: "Do PEX",
        )
      ],
    );
  }
}
