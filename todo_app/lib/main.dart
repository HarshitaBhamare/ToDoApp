import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/HomePage.dart';
import 'package:todo_app/ListOfTask.dart';
import 'AddTask.dart';
import 'addTaskProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<addTaskProvider>(
            create: (context) => addTaskProvider(),
          )
        ],
        child: MaterialApp(
            home: Scaffold(
          // body: listOfTasks(),
          body: homePage(),
          // body: addTaskInList(),
        )));
  }
}
