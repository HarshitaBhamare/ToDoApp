import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ListOfTask.dart';

class existCode extends StatelessWidget {
  final String name;
  existCode({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    final count = context.watch<ListOfTask>().number;
    print(count);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                    child: Text(
                  "Hi $name 👋",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 20),
                )),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
                // color: Colors.black,
              ),
              height: MediaQuery.of(context).size.height / 2.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 15,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 80,
                              ),
                              Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Icon(Icons.calendar_today_rounded)),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 100,
                              ),
                              Container(
                                height: 50,
                                width: 90,
                                // color: Colors.teal,
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      "$count Total Tasks",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 35,
                        ),
                        Column(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2.0),
                            Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 80,
                                  ),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: Icon(
                                          Icons.check_circle_outline_rounded)),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 100,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 90,
                                    // color: Colors.teal,
                                    child: Center(
                                      child: Text(
                                        "1 tasks compeleted",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 35,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 60,
                                  ),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: Icon(
                                          Icons.check_circle_outline_rounded)),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 100,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 90,
                                    // color: Colors.teal,
                                    child: Center(
                                      child: Text(
                                        "4 tasks remaining",
                                        style: TextStyle(fontSize: 15),
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
                  SizedBox(
                    // height: 10,
                    width: 0,
                  ),
                  Container(
                    // color: Colors.black,
                    // width: MediaQuery.of(context).size.width / 10,
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: Image.asset(
                      "assets/images/boy.png",
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}