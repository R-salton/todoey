import 'package:flutter/material.dart';

class addTask extends StatelessWidget {
  const addTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0, left: 50.0, right: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "ADD TASK",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(hoverColor: Colors.blueAccent),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor:
                  const MaterialStatePropertyAll(Colors.blueAccent),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: const Text("ADD TASK", style: TextStyle(color: Colors.white)
                // onPressed: () {},
                ),
          )
        ],
      ),
    );
  }
}
