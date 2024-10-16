import 'package:flutter/cupertino.dart';
/*extends = with*/
/* ChangeNotifier =>   عباره عن فانكشن بيقول بالتغيرات للجديده
و بيبص على الجزء الي هقوله عليه يتغير  */
class CounterProviders extends  ChangeNotifier
{

  int num = 0;

   void increment ()
  {
    num++;

    notifyListeners();
  }

  void decrement ()
  {
    num--;
    notifyListeners();

  }




}