
import 'package:flutter/material.dart';

class  Resultpage extends StatelessWidget {
  final int weghts;
  final int ages;
  final int hrights;
  final String gender;

  Resultpage({
    required this.weghts,
    required this.ages,
    required this.gender,
    required this.hrights,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(
        child: Text('Gender:$gender\nAge:$ages\nHeight$hrights\nWeght$weghts'),
      ),
    );
  }
}