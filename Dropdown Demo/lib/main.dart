import 'package:dropdown_demo/app_screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainClass());

class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Drop Down Demo",
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Drop Down Demo",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20.0),
              ),
              backgroundColor: Colors.pink,
            ),
            body: Home()));
  }
}
