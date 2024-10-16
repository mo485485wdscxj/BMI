import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/CountgameProvide.dart';
import 'Countgame.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => CounterGameProvider(),
        child: const Countgame(), // Make sure Countgame is a const widget
      ),
    );
  }
}
