import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modules/data.dart';

String task ;
class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff757575),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                )
              ),
            ),
            TextField(
              onChanged: (value){
                task = value;
              },
              cursorColor: Colors.lightBlueAccent,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hoverColor: Colors.red
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: (){
                if(task != null) {
                  Provider.of<Data>(context,listen: false).addTask(task);
                  Navigator.pop(context);
                }
              },
              child: Text('Add' , style: TextStyle(color: Colors.white),),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}


