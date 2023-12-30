// ignore: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListOfTask with ChangeNotifier {
  int number = todos.length;
  int set = 0;
  int count = 1;
  // bool onclick = false;
  void itemadd() {
    number++;
    notifyListeners();
  }

  void itemdel() {
    number--;
    notifyListeners();
  }

  void check(bool a) {
    if (a == true) {
      count++;
      notifyListeners();
    } else {
      count--;
      notifyListeners();
    }
  }
}

class TodoItem {
  String title;
  bool isDone;

  TodoItem({required this.title, this.isDone = false});
}

List<TodoItem> todos = [
  TodoItem(title: 'Buy groceries', isDone: false),
  TodoItem(title: 'Call the plumber', isDone: false),
  TodoItem(title: 'Finish Flutter project', isDone: false),
  TodoItem(title: 'Workout for 30 minutes', isDone: true),
  TodoItem(title: 'Read a book', isDone: false),
  TodoItem(title: 'Take power-nap', isDone: false),
  TodoItem(title: 'complete workout', isDone: false),
  // TodoItem(title: 'Read a book', isDone: false),
];

// ignore: camel_case_types
class listItems extends StatefulWidget {
  const listItems({super.key});

  @override
  State<listItems> createState() => _listItemsState();
}

// ignore: camel_case_types
class _listItemsState extends State<listItems> {
  @override
  Widget build(BuildContext context) {
    int c = context.watch<ListOfTask>().count;
    return Consumer<ListOfTask>(builder: (context, listOfTask, child) {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            TodoItem item = todos[index];

            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0, 0),
                          blurRadius: 8,
                          spreadRadius: 3)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: ListTile(
                    leading: InkWell(
                      onTap: () {
                        setState(() {
                          // Provider.of<ListOfTask>(context, listen: false)
                          //     .check(item.isDone);
                          item.isDone = !item.isDone;
                          // ignore: avoid_print
                          print("count $c");
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: item.isDone
                                ? Colors.blue.shade100
                                : Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(8)),
                        child: Icon(
                          item.isDone
                              ? Icons.check_box
                              : Icons.check_box_outline_blank_rounded,
                          size: 30,
                          color:
                              item.isDone ? Colors.blue : Colors.blue.shade500,
                        ),
                      ),
                    ),
                    trailing: InkWell(
                      onTap: () {
                        setState(() {
                          todos.removeAt(index);
                          Provider.of<ListOfTask>(context, listen: false)
                              .itemdel();
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.circular(8)),
                        child: Icon(
                          Icons.delete,
                          size: 30,
                          color: Colors.red.shade500,
                        ),
                      ),
                    ),
                    title: Text(
                      item.title,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            );
          },
          childCount: todos.length,
        ),
      );
    });
  }
}
