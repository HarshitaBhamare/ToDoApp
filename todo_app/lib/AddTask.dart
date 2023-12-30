// ignore: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/ListOfTask.dart';
import 'package:todo_app/clickedProvider.dart';

import 'addTaskProvider.dart';

// ignore: camel_case_types
class addTaskInList extends StatefulWidget {
  const addTaskInList({super.key});

  @override
  State<addTaskInList> createState() => _addTaskInListState();
}

// ignore: camel_case_types
class _addTaskInListState extends State<addTaskInList> {
  // String taskController = "";
  final TextEditingController taskController = TextEditingController();

  @override
  void dispose() {
    taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isClose = context.watch<addTaskProvider>().isOpen;
    final isClicked = context.watch<clickedProvider>().isClick;
    return Container(
      color: Colors.black54,
      alignment: Alignment.center,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 2.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 6,
              height: MediaQuery.of(context).size.height / 13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(
                        4,
                        1,
                      ),
                      blurRadius: 40,
                      spreadRadius: 3,
                    ),
                  ]),
              child: const Icon(Icons.task),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .009,
            ),
            Text(
              "New Task",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width / 1.41,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                decoration: const InputDecoration(
                    hintStyle: TextStyle(fontSize: 25),
                    border: InputBorder.none,
                    hintText: "Enter new Task "),
                controller: taskController,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Provider.of<addTaskProvider>(context, listen: false)
                          .CloseMenu();
                      // print(isClose);
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 2.3,
                    height: MediaQuery.of(context).size.height / 22,
                    decoration: const BoxDecoration(
                      // color: Colors.blue,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(20)),
                    ),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ),
                const Text(
                  "|",
                  style: TextStyle(fontSize: 25),
                ),
                InkWell(
                  onTap: () {
                    if (taskController.text.trim().isNotEmpty) {
                      setState(() {
                        todos.add(TodoItem(title: taskController.text.trim()));
                        taskController.clear();
                      });
                      // Provider.of<clickedProvider>(context, listen: false)
                      //     .checkClick();
                      Provider.of<addTaskProvider>(context, listen: false)
                          .CloseMenu();
                      Provider.of<ListOfTask>(context, listen: false).itemadd();
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 2.69,
                    height: MediaQuery.of(context).size.height / 22,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(20)),
                    ),
                    child: const Text(
                      "Create",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
