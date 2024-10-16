import 'package:flutter/cupertino.dart';

class LiveTextProvider with ChangeNotifier {
  String words ='';

  void Retext(String Value) {
    words = Value;
    notifyListeners();
  }
}
