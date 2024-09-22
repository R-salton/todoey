import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/taska_screen.dart';

class addTaskScreen extends StatelessWidget {
  const addTaskScreen(this.addNewTask, {super.key});

  final Function(String) addNewTask;
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Consumer<GetTask>(
      builder: (context, taskData, child) {
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
              TextField(
                onChanged: (newTask) {
                  newTaskTitle = newTask;
                },
                autofocus: true,
                textAlign: TextAlign.center,
                decoration:
                    const InputDecoration(hoverColor: Colors.blueAccent),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // print(newTaskTitle);
                  taskData.addNewTask(newTaskTitle);

                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  backgroundColor:
                      const WidgetStatePropertyAll(Colors.blueAccent),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child:
                    const Text("ADD TASK", style: TextStyle(color: Colors.white)
                        // onPressed: () {},
                        ),
              )
            ],
          ),
        );
      },
    );
  }
}
