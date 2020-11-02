
class Task{
  Task({this.taskTitle,this.isDone=false});
   String taskTitle ;
   bool isDone;
  void taskToggle(){
    isDone = !isDone;
  }

}