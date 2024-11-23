import 'package:flutter/material.dart';
import 'package:task_manager_app/features/tasks/presentation/manager/task_provider.dart';

import 'features/tasks/presentation/pages/tasks_home_page.dart';
import 'package:provider/provider.dart';

void main() {
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
    return  MaterialApp(
      home: TasksHomePage(),
    );
  }
}
