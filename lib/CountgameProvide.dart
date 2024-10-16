import 'package:flutter/material.dart';

class CounterGameProvider with ChangeNotifier {
  int countA = 0;
  int countB = 0;

  void addPointA(int points) {
    countA += points;
    notifyListeners();
  }

  void addPointB(int points) {
    countB += points;
    notifyListeners(); // Notify listeners of changes
  }

  void reset() {
    countA = 0;
    countB = 0;
    notifyListeners(); // Notify listeners of changes
  }
}
