// ignore: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/ListOfTask.dart';

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
    return Container(
      color: Colors.black54,
      alignment: Alignment.center,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
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
              "Add your New Task",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height / 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width / 1.41,
              height: MediaQuery.of(context).size.height / 15,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                cursorHeight: MediaQuery.of(context).size.height / 25,
                decoration: const InputDecoration(
                    hintStyle: TextStyle(fontSize: 20),
                    border: InputBorder.none,
                    hintText: "Enter new Task "),
                controller: taskController,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
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
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: const BoxDecoration(
                      // color: Colors.blue,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(20)),
                    ),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: Colors.red, fontSize: 23),
                    ),
                  ),
                ),
                const Text(
                  "|",
                  style: TextStyle(fontSize: 30, color: Colors.black26),
                ),
                InkWell(
                  onTap: () {
                    if (taskController.text.trim().isNotEmpty) {
                      setState(() {
                        todos.add(TodoItem(title: taskController.text.trim()));
                        taskController.clear();
                      });
                      Provider.of<addTaskProvider>(context, listen: false)
                          .CloseMenu();
                      Provider.of<ListOfTask>(context, listen: false).itemadd();
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 2.7,
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: const BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "Create",
                      style: TextStyle(color: Colors.blue, fontSize: 23),
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
