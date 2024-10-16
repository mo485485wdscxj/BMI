import 'package:flutter/material.dart';

class to extends StatelessWidget {
  final  double ss ;
  const to ({super.key,
  required this.ss
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Text("$ss"),
    );
  }
}
