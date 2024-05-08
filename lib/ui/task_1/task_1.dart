import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  final colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.teal,
    Colors.amber,
    Colors.pink,
    Colors.white,
    Colors.black,
  ];
  int colorIndex = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[colorIndex],
      appBar: AppBar(
        centerTitle: true,
        title: DropdownButton(
          isDense: true,
          hint: const Text("Choose color"),
          items: const [
            DropdownMenuItem(
              value: 0,
              child: Text("Red"),
            ),
            DropdownMenuItem(
              value: 1,
              child: Text("Green"),
            ),
            DropdownMenuItem(
              value: 2,
              child: Text("Blue"),
            ),
            DropdownMenuItem(
              value: 3,
              child: Text("Teal"),
            ),
            DropdownMenuItem(
              value: 4,
              child: Text("Amber"),
            ),
            DropdownMenuItem(
              value: 5,
              child: Text("Pink"),
            ),
            DropdownMenuItem(
              value: 6,
              child: Text("White"),
            ),
            DropdownMenuItem(
              value: 7,
              child: Text("Black"),
            ),
          ],
          onChanged: (index) {
            setState(() => colorIndex = index!);
          },
        ),
      ),
      body: const Center(),
    );
  }
}
