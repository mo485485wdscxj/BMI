import 'package:flutter/material.dart';
import 'counter_provider.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            Consumer<CounterProviders>(
              builder: (BuildContext context, CounterProviders counterObject,Widget? child) {
                return Text(
                  '${counterObject.num}',
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //
                Consumer<CounterProviders>(
                  builder: (BuildContext context,CounterProviders counterObject,Widget? child) {
                    return ElevatedButton(
                      onPressed: () {
                        counterObject.increment(); //
                      },
                      child: const Text('Add'),
                    );
                  },
                ),
                const SizedBox(width: 20),
                //
                Consumer<CounterProviders>(
                  builder: (BuildContext context, CounterProviders counterObject,Widget? child) {
                    return ElevatedButton(
                      onPressed: () {
                        counterObject.decrement();
                      },
                      child: const Text('Remove'),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
