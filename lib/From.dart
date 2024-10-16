import 'package:flutter/material.dart';
import 'To.dart';

class from extends StatefulWidget {
  double ff = 0;
  String ss = ' ';
    from({super.key});
  TextEditingController email = TextEditingController();

  @override
  State<from> createState() => _fromState();
}

class _fromState extends State<from> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("datas"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context)=>to(ss:10)));
            }, child: Text("data")),
          Center(
            child: Container(
              width: 200,
              child: TextFormField(

                decoration: InputDecoration(
                  labelText: "Enter",
                  border: OutlineInputBorder(),
                ),

              ),
            ),
          )
        ],
      ),




    );
  }
}
