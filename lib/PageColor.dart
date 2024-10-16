import 'package:flutter/material.dart';

class  Pages extends StatefulWidget {
  Pages ({super.key});

  @override
  State<Pages> createState() => _State();
}
class _State extends State<Pages> {
  bool ispressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Change"),
      ),
      body: GestureDetector(
        child: Container(
          color: ispressed ? Colors.black:Colors.red,
          width: double.infinity,
          height: double.infinity,
          child: const Center(child: Text("Click Any Where",style: TextStyle(color: Colors.white,fontSize: 30)))
        ),
        onTap: (){
          ispressed =! ispressed;
            setState(() {

            });
        },

      ),
     );
  }
}
