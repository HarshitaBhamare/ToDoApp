// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class clickedProvider with ChangeNotifier {
  bool isClick = false;
  void checkClick() {
    isClick = true;
    notifyListeners();
  }
}
