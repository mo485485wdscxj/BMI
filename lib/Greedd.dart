import 'package:flutter/material.dart';

class GraidveiwTest extends StatelessWidget {
  const GraidveiwTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Example'),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(8.0),
        crossAxisCount: 5,
        children: [
          Container(
            width: 40,
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('data'),
                    Icon(Icons.add),
                   ],
                )



            ),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.yellow,width: 2),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Container(
            width: 40,
            child: Center(child: Text("data")),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.yellow,width: 2),
              borderRadius: BorderRadius.circular(40),

            ),


          ),
          Container(
            width: 40,
            child: Center(child: Text("data")),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.yellow,width: 2),
              borderRadius: BorderRadius.circular(40),

            ),


          ),
          Container(
            width: 40,
            child: Center(child: Text("data")),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.yellow,width: 2),
              borderRadius: BorderRadius.circular(40),

            ),


          ),
          Container(
            width: 40,
            child: Center(child: Text("data")),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.yellow,width: 2),
              borderRadius: BorderRadius.circular(40),

            ),


          ),
          Container(
            width: 40,
            child: Center(child: Text("data")),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.yellow,width: 2),
              borderRadius: BorderRadius.circular(40),

            ),


          ),
        ],// مساحة داخلية
      ),
    );
  }
}
