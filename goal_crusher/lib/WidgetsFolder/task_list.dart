import 'package:flutter/material.dart';
import 'task_tile.dart';
import '../models/task.dart';

class TaskList extends StatefulWidget {


  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks=[
    Task(name: "Wake up at 6",isDone: false),
    Task(name: "Wake",isDone: false)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile()
      ],
    );
  }
}
