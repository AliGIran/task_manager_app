import 'dart:ui';

class TaskEntity {
  final String title;
  final String? desc;
  final Color? color;
  final List? subTasks;
  bool isDone;

  TaskEntity(
      {required this.title,
      this.desc,
      this.color,
      this.subTasks,
      this.isDone = false});
}
