import 'package:flutter/material.dart';
import 'package:flutter_ass3/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function fun_delete;
  Task task;

  TaskWidget(this.task, this.fun, this.fun_delete);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        title: Text(task.title),
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
        secondary: GestureDetector(
          onTap: () {
            fun_delete(task);
          },
          child: const Icon(
            Icons.delete_forever_rounded,
            color: Colors.red,
            size: 30,
          ),
        ),

      ),
    );
  }
}
