import 'package:flutter/cupertino.dart';

import '../../domain/entities/task_entity.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskEntity> taskList = [
    TaskEntity(title: 'number 1'),
    TaskEntity(title: 'number 2'),
    TaskEntity(title: 'number 3'),
  ];

  addNewTask(String title, String? desc) {
    taskList.add(TaskEntity(title: title, desc: desc!));
    notifyListeners();
  }

  removeTask(int index) {
    taskList.removeAt(index);
    notifyListeners();
  }

  changeTaskStatus(int index) {
    // tempList[index].isDone = !tempList[index].isDone;



    if(taskList[index].isDone){
      taskList[index].isDone= false;
    }else{
      taskList[index].isDone = true;
    }






    notifyListeners();
  }

  updateTask(int index) {
    notifyListeners();
  }

  fetchTasks() {
    notifyListeners();
  }
}
