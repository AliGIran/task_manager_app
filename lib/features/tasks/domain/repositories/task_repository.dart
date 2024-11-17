abstract class TaskRepository{
  addNewTask(String title);
  removeTask(int index);
  changeTaskStatus(int index);
  editTask(int index);
}