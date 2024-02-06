import 'package:flutter/material.dart';
import 'package:stateful_demo/app_screens/home.dart';

void main() => runApp(MainClass());

class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Stateful Demo",
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Stateful Demo",
              style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.pink,
          ),
          body: Home(),
        ));
  }
}
