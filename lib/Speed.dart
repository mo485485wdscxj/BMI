import 'package:flutter/material.dart';
import 'ResultPage.dart';
class Speeds extends StatefulWidget {
  Speeds({super.key});

  @override
  State<Speeds> createState() => _SpeedsState();
}

class _SpeedsState extends State<Speeds> {
  double _slider = 50; // تغيير اسم المتغير ليتبع نمط الكتابة (camelCase)
  bool ismail = false;
  bool isfemail = false;
  int wegth = 20;
  int age = 20;

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
                    SizedBox(width: 10),

                    Container(
                      width: 180,
                      height: 170,
                      decoration: BoxDecoration(
                        color: ismail ? Colors.red : Colors.white10,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            ismail = true;
                            isfemail = false;
                          });
                        },
                        icon: Icon(Icons.male, size: 150, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20, height: 5),
                    Container(
                      width: 180,
                      height: 170,
                      decoration: BoxDecoration(
                        color: isfemail ? Colors.red : Colors.white10,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            ismail = false;
                            isfemail = true;
                          });
                        },
                        icon: Icon(
                            Icons.female, size: 150, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 40),
                    Text(
                      'Male',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(width: 100),
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
                            style: TextStyle(color: Colors.grey, fontSize: 30),
                          ),
                          SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${_slider.round()}',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'cm',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Slider(
                            value: _slider,
                            min: 40,
                            max: 200,
                            divisions: 10,
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
                ),
                Center(
                    child: SizedBox(height: 50)),
                Row(
                  children: [
                    Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white10,
                      ),


                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Weight", style: TextStyle(color: Colors.grey,
                              fontSize: 10)),
                          Text("$wegth", style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 75),
                              Container(
                                width: 50,
                                height: 50,
                                child: IconButton(onPressed: () {
                                  setState(() {
                                    wegth++;
                                  });
                                }, icon: Icon(Icons.add, color: Colors.white,)),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                              ),
                              SizedBox(width: 40),
                              Container(
                                width: 50,
                                height: 50,
                                child: IconButton(onPressed: () {
                                  setState(() {
                                    wegth--;
                                  });
                                },
                                    icon: Icon(
                                      Icons.remove, color: Colors.white,)),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                              ),

                            ],
                          ),
                        ],

                      ),

                    ),
                    SizedBox(width: 40),
                    Container(
                      width: 180,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white10,
                      ),


                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Age", style: TextStyle(color: Colors.grey,
                              fontSize: 10)),
                          Text("$age", style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 75, width: 15),
                              Container(
                                width: 50,
                                height: 50,
                                child: IconButton(onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }, icon: Icon(Icons.add, color: Colors.white,)),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                              ),
                              SizedBox(width: 25),
                              Container(
                                width: 50,
                                height: 50,
                                child: IconButton(onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                    icon: Icon(
                                      Icons.remove, color: Colors.white,)),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                              ),
                              SizedBox(width: 40),

                            ],
                          ),
                        ],

                      ),

                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(

                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      String gender = ismail ? "Male" : "Female";
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>
                              Resultpage
                                (weghts: wegth,
                                ages: age,
                                gender: gender,
                                hrights: _slider.round(),),)
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                        )
                    ),
                    child: Text("Calculate", style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                )


              ],
            )


        ),
      ),

    );
  }
}