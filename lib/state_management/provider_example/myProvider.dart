import 'package:flutter/material.dart';

class MyProviderE with ChangeNotifier {
  ThemeMode th = ThemeMode.light;
  bool isVAl = false;

  void switchChange(bool val) {
    isVAl = val;
    if (isVAl == false) {
      th = ThemeMode.light;
    } else {
      th = ThemeMode.dark;
    }

    notifyListeners();
  }
}
