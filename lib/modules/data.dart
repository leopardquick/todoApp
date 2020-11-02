import 'package:flutter/material.dart';
import 'package:todoey/modules/task.dart';

class Data extends ChangeNotifier{

  List<Task> list = [

  ];

   void addTask(String task){
    list.add(Task(taskTitle: task));
    notifyListeners();
  }

  void updateUi(Task task){
     task.taskToggle();
     notifyListeners();
  }

  void deleteUi(int index){
     list.removeAt(index);
     notifyListeners();
  }
}