import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modules/data.dart';
import 'screen/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context)=> Data(),
      child: MaterialApp(
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.lightBlue,
          backgroundColor: Colors.lightBlueAccent,
        ),
        home: TaskScreen(),
      ),
    );
  }
}
