import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  TaskTile({this.isChecked,this.taskTitle,this.checkBoxCallBack,this.deleteBoxCallBack});

  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function deleteBoxCallBack ;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onLongPress: deleteBoxCallBack,
      title: Text(
        taskTitle
      ,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null ,
        ),
      ),
      trailing:  Checkbox(
        value: isChecked,
        onChanged: checkBoxCallBack,
        checkColor: Colors.lightBlueAccent,
      ),
    );
  }
}






