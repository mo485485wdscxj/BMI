import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blue,
        leading: IconButton (onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios),),
      ),

     );
  }
}