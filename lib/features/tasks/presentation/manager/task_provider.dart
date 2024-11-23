import 'package:flutter/cupertino.dart';
import 'package:task_manager_app/features/tasks/presentation/pages/tasks_home_page.dart';

import '../../domain/entities/task_entity.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskEntity> taskLIst = [];

  addNewTask(String title, String? desc) {
    taskLIst.add(TaskEntity(title: title, desc: desc!));
    notifyListeners();
  }

  removeTask(int index) {
    taskLIst.removeAt(index);
    notifyListeners();
  }

  changeTaskStatus(int index, bool value) {
    tempList[index].isDone = value;
    notifyListeners();
  }

  updateTask(int index) {
    notifyListeners();
  }

  fetchTasks() {
    notifyListeners();
  }
}
