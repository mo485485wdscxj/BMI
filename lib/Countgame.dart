import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';
import 'CountgameProvide.dart';// Import your CounterGameProvider

class Countgame extends StatelessWidget {
  const Countgame({super.key});

  @override
  Widget build(BuildContext context) {
    CounterGameProvider obj =  Provider.of<CounterGameProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Count Game"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 40),
                    ),
                    Consumer<CounterGameProvider>(
                      builder: (context, provider, child) {
                        return Text(
                          "${provider.countA}",
                          style: TextStyle(fontSize: 35),
                        );
                      },
                    ),
                    MaterialButton(
                      onPressed: () {
                            obj.addPointA(1);
                      },
                      color: Colors.orange,
                      child: const Text("Add 1 point"),
                    ),
                    MaterialButton(
                      onPressed: () {
                            obj.addPointA(2);
                      },
                      color: Colors.orange,
                      child: const Text("Add 2 points"),
                    ),
                    MaterialButton(
                      onPressed: () {
                            obj.addPointA(3);
                      },
                      color: Colors.orange,
                      child: const Text("Add 3 points"),
                    ),
                  ],
                ),
                Container(
                  width: 5,
                  height: 230,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 40),
                    ),
                    Consumer<CounterGameProvider>(
                      builder: (context, provider, child) {
                        return Text(
                          "${provider.countB}",
                          style: const TextStyle(fontSize: 35),
                        );
                      },
                    ),
                    MaterialButton(
                      onPressed: () {
                            obj.addPointB(1);
                      },
                      color: Colors.orange,
                      child: const Text("Add 1 point"),
                    ),
                    MaterialButton(
                      onPressed: () {
                             obj.addPointB(2);
                      },
                      color: Colors.orange,
                      child: const Text("Add 2 points"),
                    ),
                    MaterialButton(
                      onPressed: () {
                             obj.addPointB(3);
                      },
                      color: Colors.orange,
                      child: const Text("Add 3 points"),
                    ),
                  ],
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                obj.reset();
              },
              color: Colors.orange,
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
