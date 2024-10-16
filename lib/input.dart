import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  String _type = '';
  Color _appBarColor = Colors.red;
  Color _backgroundColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Some Text"),
        backgroundColor: _appBarColor,
      ),
      body: Container(
        color: _backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  _type = text;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Some Text',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "You Typed: $_type",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _appBarColor = _appBarColor == Colors.red ? Colors.orange : Colors.red;
                    });
                  },
                  child: Text("  AppBar"),
                ),
                SizedBox(width: 20), // مسافة بين الأزرار
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _backgroundColor = _backgroundColor == Colors.orange ? Colors.yellow : Colors.orange;
                    });
                  },
                  child: Text('Background'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
