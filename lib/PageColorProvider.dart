import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  bool _isPressed = false;

  bool get ispressed => _isPressed;

  void pressed() {
    _isPressed = !_isPressed;
    notifyListeners();
  }
}
