import 'package:flutter/material.dart';

class clickedProvider with ChangeNotifier {
  bool isClick = false;
  void checkClick() {
    isClick = true;
    notifyListeners();
  }
}
