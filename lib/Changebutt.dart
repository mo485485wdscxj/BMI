import 'package:flutter/material.dart';
class Change extends StatefulWidget {
  Change ({super.key});
  @override
  State<Change> createState() => _State();
}
class _State extends State<Change> {
  bool ison = false ;


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(

        title: Text("Toggle Switch"),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body:Center(
        child:MaterialButton(onPressed: (){
            ison =! ison;
          setState(() {});
        },
        color: ison?Colors.green:Colors.red,
        child:Text( ison ? 'on':'off',style: TextStyle(fontSize: 40),),


        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        hoverColor: Colors.yellow,textColor: Colors.white,
        ),
      ) ,
    );
  }
}
