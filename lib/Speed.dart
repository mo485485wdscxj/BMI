import 'package:flutter/material.dart';

class Speeds extends StatefulWidget {
  Speeds({super.key});

  @override
  State<Speeds> createState() => _SpeedsState();
}

class _SpeedsState extends State<Speeds> {
  double _slider = 50; // تغيير اسم المتغير ليتبع نمط الكتابة (camelCase)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.male, size: 80, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 200, height: 5),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.female, size: 80, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 13),
                  Text(
                    'Male',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(width: 215),
                  Text(
                    'Female',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    color: Colors.white10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(color: Colors.red, fontSize: 30),
                        ),
                        SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${_slider.round()}',
                              style: TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'cm',
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Slider(
                          value: _slider,
                          min: 40,
                          max: 500,
                          divisions: 100,
                          activeColor: Colors.red,
                          label: _slider.round().toString(),
                          onChanged: (double newValue) {
                            setState(() {
                              _slider = newValue;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
