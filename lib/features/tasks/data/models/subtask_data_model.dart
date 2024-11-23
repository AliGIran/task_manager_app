import 'package:isar/isar.dart';

part 'subtask_data_model.g.dart';

@collection
class SubTaskDataModel {
  final Id id = Isar.autoIncrement;

  final String title;
  String? description;
  bool isChecked;

  SubTaskDataModel(
      {required this.title, this.description, this.isChecked = false});
}
