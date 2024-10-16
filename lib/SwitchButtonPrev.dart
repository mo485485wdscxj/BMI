import 'package:flutter/material.dart';

class Switchbuttonprev with ChangeNotifier {
  bool isOn = true;

  void toggle() {
    isOn = !isOn;
    notifyListeners();
  }
}