import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/TextProv.dart';
import 'counter_provider.dart';

class TextInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //var pov = Provider.of<LiveTextProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Input Example'),
      ),


      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Consumer(
                builder: (context, LiveTextProvider liveObject, child) => TextFormField(
                  onChanged: (value) 
                  {
                    liveObject.Retext(value);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Enter Text',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Consumer(builder:(context,LiveTextProvider O, child) => Text('Text IS : ${O.words}'))
             ],

          ),
        ),
      ),
    );
  }
}