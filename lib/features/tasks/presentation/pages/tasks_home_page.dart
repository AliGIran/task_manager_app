import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_app/features/tasks/domain/entities/task_entity.dart';
import 'package:task_manager_app/features/tasks/presentation/manager/task_provider.dart';

List<TaskEntity> tempList = [
  TaskEntity(title: "title 1", color: Colors.red),
  TaskEntity(title: "title 2", color: Colors.blue),
  TaskEntity(title: "title 3", color: Colors.yellow),
  TaskEntity(title: "title 4", color: Colors.green),
  TaskEntity(
    title: "title 5",
  ),
  TaskEntity(
    title: "title 6",
  )
];

class TasksHomePage extends StatelessWidget {
  const TasksHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider , child) {
        final tasks = taskProvider.taskList;

        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("کارهای من"),
              centerTitle: true,
            ),
            body: ListView.builder(

              // todo: change list from temp to db

              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return Card(
                  color: task.color,
                  child: CheckboxListTile(
                    secondary: IconButton(
                        onPressed: () {
                          taskProvider.removeTask(index);
                          //   todo: add remove function
                        },
                        icon: const Icon(Icons.delete_rounded)),
                    title: Text(task.title),
                    value: task.isDone,
                    onChanged: (value) {
                      //   todo: add change value function
                      taskProvider.changeTaskStatus(index);

                    },
                  ),
                );
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startFloat,
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add_rounded),
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
