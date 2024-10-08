import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/tasklist.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/add_taskscreen.dart';

class TasksScreen extends StatelessWidget {
  TasksScreen({super.key, this.task});
  static String routeName = '/tasks';
  String? task;

  @override
  Widget build(BuildContext context) {
    // print(widget.task);
    bool checked = false;
    return Consumer<GetTask>(
      builder: (context, taskData, child) {
        return Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => SingleChildScrollView(
                          child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: addTaskScreen((newTaskTitle) {
                          // setState(() {
                          //   tasks.add(Task(name: newTaskTitle));

                          //   Navigator.pop(context);
                          // });
                        }),
                      )));
            },
            backgroundColor: Colors.lightBlueAccent,
            shape: const CircleBorder(),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 40.0,
                    right: 30.0,
                    bottom: 30.0,
                    left: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30.0,
                        child: Icon(
                          Icons.list,
                          size: 30.0,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'Todoey',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "${taskData.getTaskNumber} Tasks",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 30.0, left: 30.0, right: 30.0),
                      child: Tasklist(
                          checked: checked, tasksList: GetTask().gettasks),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
