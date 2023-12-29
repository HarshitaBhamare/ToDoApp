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
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          // return ListTile(
          //   leading: Icon(Icons.check_box_outline_blank_rounded),
          //   trailing: Icon(Icons.delete),
          //   title: Text("sf"),
          return Container(
            color: Colors.red,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: const ListTile(
                      leading: Icon(Icons.check_box_outline_blank_rounded),
                      trailing: Icon(Icons.delete),
                      title: Text("sf"),
                    ))),
          );
        },
      ),
    );
  }
}
