import 'package:flutter/material.dart';

class from2 extends StatefulWidget {
  const from2({super.key});

  @override
  _From2State createState() => _From2State();
}

class _From2State extends State<from2> {
  String inputText = ''; // Use a String to store text input

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Entry"),
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            child: TextFormField(
              onChanged: (value) {
                setState(() {
                  inputText = value; // Update inputText on change
                });
              },
              decoration: const InputDecoration(
                labelText: "Enter",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(": $inputText"), // Display the entered text
          ),
        ],
      ),
    );
  }
}
