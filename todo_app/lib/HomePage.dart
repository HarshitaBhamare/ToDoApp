import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/AddTask.dart';
import 'package:todo_app/ListOfTask.dart';
import 'package:todo_app/addTaskProvider.dart';
import 'package:todo_app/clickedProvider.dart';
import 'addName.dart';
import 'existcode.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String name = "";
  @override
  void initState() {
    super.initState();
    // Call the _askName function after a delay of 10 seconds.
    Future.delayed(const Duration(seconds: 1), () {
      askName(context, updateName);
    });
  }

  void updateName(String newName) {
    setState(() {
      name = newName; // Update the name
    });
  }

  Widget build(BuildContext context) {
    final isOpen = context.watch<addTaskProvider>().isOpen;
    final isClicked = context.watch<clickedProvider>().isClick;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              Provider.of<addTaskProvider>(context, listen: false).OpenMenu();
            });
          },
          backgroundColor: Colors.pink,
          splashColor: Colors.amber,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          child: Icon(
            Icons.add,
            size: 35,
            color: Colors.white,
          ),
        ),
        body: Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  floating: false,
                  pinned: true,
                  expandedHeight: MediaQuery.of(context).size.height / 2.2,
                  flexibleSpace: FlexibleSpaceBar(
                    background: existCode(name: name),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                    child: Center(
                      child: Text(
                        "All Tasks",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 30,
                        ),
                      ),
                    ),
                  ),
                ),
                listItems(),
              ],
            ),
            isOpen ? addTaskInList() : SizedBox(),
          ],
        ));
  }
}
