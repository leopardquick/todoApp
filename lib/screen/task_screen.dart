import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modules/data.dart';
import 'package:todoey/screen/add_task_screen.dart';
import 'package:todoey/widget/task_list.dart';
import 'package:todoey/modules/task.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  List<Task> task = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.list , size: 40, color: Colors.lightBlueAccent,),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${Provider.of<Data>(context).list.length} Tasks',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0) , topRight: Radius.circular(40.0)) ,
                  color: Colors.white,
                ),
                child: TasksList(
                ),
              ),
            )
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          showModalBottomSheet(
              context: context,
              builder: (context)=>AddTaskScreen());
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add , color: Colors.white,),
      ),
    );
  }
}




