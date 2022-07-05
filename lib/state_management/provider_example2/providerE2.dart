import 'package:flutter/material.dart';

class ProviderE2 with ChangeNotifier {
  int _count = 0;

  int get counter => _count;

  void change() {
    _count++;
    notifyListeners();
  }
}
