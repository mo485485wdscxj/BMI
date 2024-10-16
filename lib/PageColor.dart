import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/PageColorProvider.dart';

class  Pages extends StatelessWidget {
  Pages ({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Change"),
      ),
      body: Consumer<ColorProvider>(
         builder: (BuildContext context,ColorProvider value  , child) {
        return GestureDetector(
          child: Container(
            color: value.ispressed?Colors.red:Colors.yellow,
            width: double.infinity,
            height: double.infinity,
            child: const Center(child: Text("Click Any Where",style: TextStyle(color: Colors.white,fontSize: 30)))
          ),
          onTap: (){

            value.pressed();

          },
        ) ;
         } ,
      ),
     );
  }
}
