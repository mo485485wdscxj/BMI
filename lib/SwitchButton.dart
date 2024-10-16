import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'SwitchButtonPrev.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Toggle Switch"),
        ),
        body: Center(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer(builder:(context,Switchbuttonprev obj, child) =>
                     MaterialButton(
                      onPressed: () {
                        obj.toggle(); // Toggle the switch state
                      },
                      color: obj.isOn ? Colors.green : Colors.red,
                      child: Text(
                        obj.isOn ? "On" : "Off",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Consumer(
                    builder:(context,Switchbuttonprev obj, child) =>  Text(
                      'Current State: ${obj.isOn ? "On" : "Off"}',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),

          ),
        );
  }
}

