import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:task_manager_app/features/tasks/data/models/subtask_data_model.dart';
import 'package:task_manager_app/features/tasks/presentation/manager/task_provider.dart';

import 'features/tasks/data/models/task_data_model.dart';
import 'features/tasks/presentation/pages/tasks_home_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding();
  final dir = await getApplicationDocumentsDirectory();
  final path = dir.path;
  final isar = await Isar.open([TaskDataModelSchema, SubTaskDataModelSchema],
      directory: path);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => TaskProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksHomePage(),
    );
  }
}
