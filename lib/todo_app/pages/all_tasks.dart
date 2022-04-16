import 'package:flutter/material.dart';
import 'package:flutter_ass3/todo_app/data/tasks_data.dart';
import 'package:flutter_ass3/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  Function fun_delete;
  AllTasksScreen(this.fun,this.fun_delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index],fun,fun_delete);
        });
  }
}
