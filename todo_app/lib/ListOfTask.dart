import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listOfTasks extends StatefulWidget {
  const listOfTasks({super.key});

  @override
  State<listOfTasks> createState() => _listOfTasksState();
}

class _listOfTasksState extends State<listOfTasks> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        ListTile(title: Text('Item 3')),
        // Add more items as needed
      ],
    );
  }
}
