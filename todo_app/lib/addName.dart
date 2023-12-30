// askName.dart
import 'package:flutter/material.dart';

void askName(BuildContext context, Function(String) onNameSubmitted) {
  TextEditingController nameController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text(
          'Enter Your Name',
          style: TextStyle(fontSize: 25),
        ),
        content: TextField(
          controller: nameController,
          decoration: const InputDecoration(
              hintText: 'Name',
              hintStyle: TextStyle(
                fontSize: 20,
              )),
        ),
        actions: <Widget>[
          InkWell(
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.blue.shade500,
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child: Text(
                'Create',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
            ),
            onTap: () {
              onNameSubmitted(nameController.text);
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
