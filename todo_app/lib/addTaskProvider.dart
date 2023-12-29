import 'package:flutter/material.dart';

class addTaskProvider with ChangeNotifier {
  bool isOpen = false;
  void OpenMenu() {
    isOpen = true;
    notifyListeners();
  }

  void CloseMenu() {
    isOpen = false;
    notifyListeners();
  }
}
