import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modules/data.dart';
import 'task_tile.dart';
import 'package:todoey/modules/task.dart';

class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context,taskData,child){
        return ListView.builder(itemBuilder: (context,index){
          return TaskTile(
            taskTitle: taskData.list[index].taskTitle,
            isChecked: taskData.list[index].isDone,
            checkBoxCallBack: (bool value){
              taskData.updateUi(taskData.list[index]);
            },
            deleteBoxCallBack: (){
              taskData.deleteUi(index);
            },
          );
        } , itemCount: taskData.list.length,);
      },
    );
  }
}



