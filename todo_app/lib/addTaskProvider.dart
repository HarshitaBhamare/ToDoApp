// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class addTaskProvider with ChangeNotifier {
  bool isOpen = false;
  // ignore: non_constant_identifier_names
  void OpenMenu() {
    isOpen = true;
    notifyListeners();
  }

  // ignore: non_constant_identifier_names
  void CloseMenu() {
    isOpen = false;
    notifyListeners();
  }
}
