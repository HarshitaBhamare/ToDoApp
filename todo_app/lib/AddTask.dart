import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addTaskInList extends StatefulWidget {
  const addTaskInList({super.key});

  @override
  State<addTaskInList> createState() => _addTaskInListState();
}

class _addTaskInListState extends State<addTaskInList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // backgroundColor: Colors.transparent,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.amber,
              Colors.red,
              Colors.red,
              Colors.red,
              Colors.red,
              Colors.amber,
            ],
          ),
        ),
        // backgroundColor: Colors.transparent,
        child: Container(
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              children: [TextField()],
            ),
          ),
        ));
  }
}
