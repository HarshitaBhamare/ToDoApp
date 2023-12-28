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
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
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
                  child: Icon(Icons.task),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .005,
                ),
                Text(
                  "New Task",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: MediaQuery.of(context).size.height / 4.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black26,
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                      // backgroundColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.3,
                        height: 48,
                        decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20)),
                        ),
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.red, fontSize: 22),
                        ),
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontSize: 34.5),
                    ),
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width / 2.69,
                        height: 48,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20)),
                        ),
                        child: Text(
                          "Create",
                          style: TextStyle(color: Colors.blue, fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
