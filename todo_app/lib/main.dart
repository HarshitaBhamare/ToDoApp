import 'package:flutter/material.dart';
import 'package:todo_app/HomePage.dart';

import 'AddTask.dart';

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
    return MaterialApp(
        home: Scaffold(
      body: homePage(),
      // body: addTaskInList(),
    ));
  }
}
