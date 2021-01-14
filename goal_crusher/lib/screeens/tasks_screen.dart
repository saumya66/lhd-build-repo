import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goal_crusher/WidgetsFolder/task_list.dart';
import 'package:goal_crusher/WidgetsFolder/task_tile.dart';
import 'package:goal_crusher/screeens/addtask_screen.dart';

class TaskScreen extends StatelessWidget {

  // Widget buildButtomSheet(BuildContext context){
  //   return Container();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           showModalBottomSheet(context: context, builder:(context)=>AddTaskScreen());
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add,color: Colors.black,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 80.0, left: 30.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Icon(
                        Icons.list,
                        size: 30.0,
                        color: Colors.black87,
                      ),
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Goal Crusher',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'First Task',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:5.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
              ),
            child: TaskList(),
            ),
            
          ),
        ],
      ),
    );
  }
}


