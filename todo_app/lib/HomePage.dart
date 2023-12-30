import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/AddTask.dart';
import 'package:todo_app/ListOfTask.dart';
import 'package:todo_app/addTaskProvider.dart';
import 'package:todo_app/clickedProvider.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    // final done = context.watch<ListOfTask>().done;
    final count = context.watch<ListOfTask>().number;
    print(count);
    final isOpen = context.watch<addTaskProvider>().isOpen;
    final isClicked = context.watch<clickedProvider>().isClick;
    return Stack(children: [
      Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              Provider.of<addTaskProvider>(context, listen: false).OpenMenu();
            });
          },
          backgroundColor: Colors.pink,
          // hoverColor: Colors.
          // ,
          // hoverElevation: 100,
          splashColor: Colors.amber,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          child: Icon(
            Icons.add,
            size: 35,
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.19,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.amber,
                    Colors.red,
                    Colors.pink,
                  ],
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // SizedBox(
                      // height: MediaQuery.of(context).size.height / 20,
                      // ),
                      InkWell(
                        onTap: () {
                          Provider.of<clickedProvider>(context, listen: false)
                              .checkClick();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // boxShadow: box,
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          height: MediaQuery.of(context).size.height / 16.5,
                          width: MediaQuery.of(context).size.width / 7.5,
                          child: isClicked
                              ? Container(
                                  color: Colors.purple,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        16.5,
                                    width: MediaQuery.of(context).size.width,
                                    // color: Colors.purple,
                                  ),
                                )
                              : Icon(Icons.search, size: 30),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 19,
                      )
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      // color: Colors.black,
                    ),
                    height: MediaQuery.of(context).size.height / 3.07,
                    // width: MediaQuery.of(context).size.width / 1,
                    child: Container(
                      // width: MediaQuery.of(context).size.width / 2,
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 20,
                                  height:
                                      MediaQuery.of(context).size.height / 40,
                                ),
                                Container(
                                    child: Text(
                                  "Hi Ivan 👋",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.height /
                                              22),
                                )),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 20,
                                  height:
                                      MediaQuery.of(context).size.height / 70,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  decoration: BoxDecoration(
                                      color: Colors.cyan,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                60,
                                      ),
                                      Container(
                                          child: Icon(
                                              Icons.calendar_today_rounded)),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                100,
                                      ),
                                      Container(
                                        height: 50,
                                        width: 120,
                                        // color: Colors.teal,
                                        child: Center(
                                          child: Text(
                                            "$count task pending",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 35,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.9),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      decoration: BoxDecoration(
                                          color: Colors.cyan,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                60,
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: Colors.white,
                                              ),
                                              child: Icon(Icons.done)),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                100,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 120,
                                            // color: Colors.teal,
                                            child: Center(
                                              child: Text(
                                                "1 tasks compeleted",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              35,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              20,
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      decoration: BoxDecoration(
                                          color: Colors.cyan,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                60,
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: Colors.white,
                                              ),
                                              child: Icon(Icons.done)),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                100,
                                          ),
                                          Container(
                                            height: 50,
                                            width: 120,
                                            // color: Colors.teal,
                                            child: Center(
                                              child: Text(
                                                "4 tasks remaining",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 900,
                          ),
                          Container(
                            // color: Colors.black,
                            width: MediaQuery.of(context).size.width / 2.2,
                            height: MediaQuery.of(context).size.height * 5,
                            child: Image.asset(
                              "assets/images/boy.png",
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.13,
              child: Container(
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              child: listItems(),
            )
          ],
        ),
      ),
      isOpen ? addTaskInList() : SizedBox(),
    ]);
  }
}
