import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
void checkBoxCallback(bool newValue){
  setState(() {
    isChecked = newValue;
  });
}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TaskCheckBox(isChecked ,checkBoxCallback),
      title: Text('First Task',style: TextStyle(decoration:isChecked?TextDecoration.lineThrough:null),),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBox;
  final Function toggleCheckBoxState;
  TaskCheckBox(this.checkBox,this.toggleCheckBoxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.deepPurpleAccent,
      value: checkBox,
      onChanged:toggleCheckBoxState
    );
  }
}
