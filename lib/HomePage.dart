import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int value=0;

    HomePage({super.key,
  required this.value,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
        leading: IconButton (onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios),),
      ),
body: Column(
  children: [
    Text('$value')
  ],
),
     );
  }
}