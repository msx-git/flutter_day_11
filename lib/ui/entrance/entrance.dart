import 'package:flutter/material.dart';

import '/ui/entrance/widgets/navigate_button.dart';
import '/ui/task_1/task_1.dart';
import '/ui/task_2/task_2.dart';
import '/ui/task_3/task_3_1.dart';
import '/utils/extensions.dart';

class Entrance extends StatelessWidget {
  const Entrance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const NavigateButton(title: 'Task - 1', navigateTo: Task1()),
          20.height,
          const NavigateButton(title: 'Task - 2', navigateTo: Task2()),
          20.height,
          const NavigateButton(title: 'Task - 3', navigateTo: Task3()),
        ],
      ),
    );
  }
}
