import 'package:flutter/material.dart';
import 'package:flutter_ass3/todo_app/data/tasks_data.dart';
import 'package:flutter_ass3/todo_app/widgets/task_widget.dart';
class InCompleteTasksScreen extends StatelessWidget {
  Function fun;
  Function fun_delete;
  InCompleteTasksScreen(this.fun, this.fun_delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => !element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList
              .where((element) => !element.isCompleted)
              .toList()[index],fun,fun_delete);
        });
  }
}
