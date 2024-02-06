import 'package:flutter/material.dart';
import 'package:interest_calculator/app_screens/home.dart';

void main() => runApp(MainClass());

class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.indigoAccent),
        title: "Interest Calculator",
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Interest Calculator",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.indigoAccent,
          ),
          body: Home(),
        ));
  }
}
