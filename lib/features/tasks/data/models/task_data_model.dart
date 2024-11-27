import 'package:isar/isar.dart';

import 'subtask_data_model.dart';

part 'task_data_model.g.dart';

@collection
class TaskDataModel {
  final Id id = Isar.autoIncrement;
  final String title;

  final String? desc;
  final int? color;
  final subTasks = IsarLinks<SubTaskDataModel>();
  bool isDone;

  TaskDataModel(this.title, this.desc, this.color, this.isDone);
}
