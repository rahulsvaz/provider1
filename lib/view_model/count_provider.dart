import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int count = 1;
  addCount() {
    count++;
    notifyListeners();
  }
}
