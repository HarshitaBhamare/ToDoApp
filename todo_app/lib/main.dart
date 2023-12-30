import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'HomePage.dart';
import 'ListOfTask.dart';
import 'addTaskProvider.dart';
import 'clickedProvider.dart';

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
        ),
        ChangeNotifierProvider<clickedProvider>(
          create: (context) => clickedProvider(),
        ),
        ChangeNotifierProvider<ListOfTask>(
          create: (context) => ListOfTask(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: homePage(),
        ),
      ),
    );
  }
}
