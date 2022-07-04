import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  int counter = 0;

  void changeCounter() {
    counter++;
    notifyListeners();
  }
}
