import 'package:flutter/material.dart';

class addTask extends StatelessWidget {
  const addTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0, left: 50.0, right: 50.0),
      child: Column(
        children: [
          const Text(
            "ADD TASK",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const TextField(
            decoration: InputDecoration(hoverColor: Colors.blueAccent),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll(),
                backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
            child: const Text(
              "ADD",
              style: TextStyle(color: Color
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
